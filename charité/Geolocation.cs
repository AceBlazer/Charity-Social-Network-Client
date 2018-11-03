using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Net;
using System.Runtime.Serialization;
using System.Web.Script.Serialization;

/// <summary>
/// Summary description for Geolocation
/// </summary>
public class Geolocation
{
    public Geolocation()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    /// <summary>
    /// Get distance by 2 addreses
    /// </summary>
    /// <param name="address1"></param>
    /// <param name="address2"></param>
    /// <param name="unit"></param>
    /// <returns></returns>
    public static double GetDistance(string address1, string address2, DistanceUnit unit)
    {
        //make jason requests to google api
        string json1 = WebRequestJson(
            string.Format("http://maps.googleapis.com/maps/api/geocode/json?address={0}&sensor=false", address1)
            );
        string json2 = WebRequestJson(
            string.Format("http://maps.googleapis.com/maps/api/geocode/json?address={0}&sensor=false", address2)
            );

        //deserialize json to GeocodeResponse object
        var loc1 = FromJSON<GeocodeResponse>(json1);
        var loc2 = FromJSON<GeocodeResponse>(json2);

        //check is response is ok
        if (loc1.Status != "OK" || loc2.Status != "OK") { return -1; }

        //check if only one location found for each address
        //if (loc1.Results.Count > 1 || loc2.Results.Count > 1) { return -2; }

        //copy coordinate values
        var pos1 = new Coordinate()
        {
            Latitude = loc1.Results.First().Geometry.Location.Lat,
            Longitude = loc1.Results.First().Geometry.Location.Lng
        };
        var pos2 = new Coordinate()
        {
            Latitude = loc2.Results.First().Geometry.Location.Lat,
            Longitude = loc2.Results.First().Geometry.Location.Lng
        };

        //return distance in unit
        return CalculateDistance(pos1, pos2, unit);
    }

    /// <summary>
    /// Get distance by 2 locations
    /// </summary>
    /// <param name="pos1"></param>
    /// <param name="pos2"></param>
    /// <param name="unit"></param>
    /// <returns></returns>
    public static double CalculateDistance(Coordinate pos1, Coordinate pos2, DistanceUnit unit)
    {
        var R = 6371;//default in km

        switch (unit)
        {
            case DistanceUnit.Miles:
                R = 3960; break;
            case DistanceUnit.Kilometers:
                R = 6371; break;
            case DistanceUnit.Meters:
                R = 6371000; break;
        }

        //get location difference and convert to radians
        var dLat = DegreeToRadian(pos2.Latitude - pos1.Latitude);
        var dLon = DegreeToRadian(pos2.Longitude - pos1.Longitude);

        //calculate distance
        var a = Math.Sin(dLat / 2) * Math.Sin(dLat / 2) +
            Math.Cos(DegreeToRadian(pos1.Latitude)) *
            Math.Cos(DegreeToRadian(pos2.Latitude)) *
            Math.Sin(dLon / 2) * Math.Sin(dLon / 2);

        var c = 2 * Math.Asin(Math.Min(1, Math.Sqrt(a)));

        var d = R * c;//convert to unit

        return d;
    }

    /// <summary>
    /// Convert from angle to radian value
    /// </summary>
    /// <param name="angle"></param>
    /// <returns></returns>
    public static double DegreeToRadian(double angle)
    {
        return Math.PI * angle / 180.0;
    }

    /// <summary>
    /// Send and get request in json
    /// </summary>
    /// <param name="url"></param>
    /// <returns></returns>
    public static string WebRequestJson(string url)
    {
        var response = string.Empty;

        StreamWriter requestWriter;

        var webRequest = System.Net.WebRequest.Create(url) as HttpWebRequest;
        if (webRequest != null)
        {
            webRequest.Method = "POST";
            webRequest.ServicePoint.Expect100Continue = false;
            webRequest.Timeout = 99000;

            webRequest.ContentType = "application/json";
            //POST the data.
            using (requestWriter = new StreamWriter(webRequest.GetRequestStream()))
            {
                requestWriter.Write("");
            }
        }

        HttpWebResponse resp = (HttpWebResponse)webRequest.GetResponse();
        using (Stream resStream = resp.GetResponseStream())
        {
            using (StreamReader reader = new StreamReader(resStream))
            {
                response = reader.ReadToEnd();
            }
        }

        return response;
    }

    /// <summary>
    /// Deserialize json to custom object
    /// </summary>
    /// <typeparam name="T"></typeparam>
    /// <param name="json"></param>
    /// <returns></returns>
    public static T FromJSON<T>(string json)
    {
        JavaScriptSerializer jss = new JavaScriptSerializer();

        return jss.Deserialize<T>(json);
    }
}



