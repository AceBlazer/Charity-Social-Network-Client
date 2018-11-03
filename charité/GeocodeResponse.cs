using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Runtime.Serialization;

[DataContract(Namespace = "")]
public class GeocodeResponse
{
    [DataMember(Name = "status", Order = 1)]
    public string Status { get; set; }

    [DataMember(Name = "result", Order = 2)]
    public List<Result> Results { get; set; }

    [DataContract(Name = "result", Namespace = "")]
    public class Result
    {
        [DataMember(Name = "geometry")]
        public CGeometry Geometry { get; set; }

        [DataContract(Name = "geometry", Namespace = "")]
        public class CGeometry
        {
            [DataMember(Name = "location")]
            public CLocation Location { get; set; }

            [DataContract(Name = "location", Namespace = "")]
            public class CLocation
            {
                [DataMember(Name = "lat", Order = 1)]
                public double Lat { get; set; }
                [DataMember(Name = "lng", Order = 2)]
                public double Lng { get; set; }
            }
        }
    }
}