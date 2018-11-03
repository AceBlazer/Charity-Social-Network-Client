<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="evenement-single.aspx.cs" Inherits="charité.evenement_single" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Meta Tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Charity++ Responsive HTML Template">
    <meta name="author" content="themexriver">

    <!-- Page Title -->
    <title>Charity Plus - Nonprofit, Crowdfunding &amp; Charity HTML5 Template</title>

    <!-- Favicon and Touch Icons -->
    <link href="images/favicon.png" rel="shortcut icon" type="image/png">
    <link href="images/apple-touch-icon.png" rel="apple-touch-icon">
    <link href="images/apple-touch-icon-72x72.png" rel="apple-touch-icon" sizes="72x72">
    <link href="images/apple-touch-icon-114x114.png" rel="apple-touch-icon" sizes="114x114">
    <link href="images/apple-touch-icon-144x144.png" rel="apple-touch-icon" sizes="144x144">

    <!-- Icon fonts -->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/flaticon.css" rel="stylesheet">

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Plugins for this template -->
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/owl.carousel.css" rel="stylesheet">
    <link href="css/owl.theme.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <style>

        .boutondec {
            background-color: transparent;
            border: none;
            cursor: pointer;
            text-decoration: underline;
            padding: 0px;
        }
         #abc {
            width: 100%;
            height: 100%;
            opacity: .95;
            top: 0;
            left: 0;
            display: none;
            position: fixed;
            background-color: #313131;
            overflow: auto;
        }

        img#close {
            position: absolute;
            right: -14px;
            top: -14px;
            cursor: pointer;
        }

        div#popupContact {
            position: absolute;
            left: 50%;
            top: 17%;
            margin-left: -202px;
            font-family: 'Raleway',sans-serif;
        }


        /*chat*/

       div#chat {
           position: fixed;
           right: 0;
           bottom: 0;
           pointer-events: none;
           font-size: 13px;
           font-family: Arial, sans-serif;
       }

           div#chat ul {
               margin: 0;
               padding: 0;
               list-style: none;
           }

           div#chat p {
               margin: 0;
           }

           div#chat input.form-control,
           div#chat textarea.form-control {
               min-height: 30px;
               max-height: 100px;
               box-sizing: border-box;
               width: 100%;
               vertical-align: middle;
               padding: 7px 5px;
               border: 0;
               outline: 0;
               resize: none;
               font-size: 13px;
               line-height: 16px;
           }

           div#chat ul.dropdown {
               white-space: nowrap;
               position: absolute;
               bottom: 100%;
               left: 0;
               z-index: 9999;
               background-color: white;
               border: 1px solid #dcdae3;
               border-radius: 5px;
               margin-bottom: 10px;
               padding: 10px 0;
           }

               div#chat ul.dropdown:after {
                   content: "\00a0";
                   display: block;
                   position: absolute;
                   top: 100%;
                   left: 9px;
                   width: 0;
                   height: 0;
                   border-style: solid;
                   border-width: 6px 6px 0 6px;
                   border-color: white transparent transparent transparent;
               }

               div#chat ul.dropdown:before {
                   content: "\00a0";
                   display: block;
                   position: absolute;
                   top: 100%;
                   left: 8px;
                   width: 0;
                   height: 0;
                   border-style: solid;
                   border-width: 7px 7px 0 7px;
                   border-color: #dcdae3 transparent transparent transparent;
               }

               div#chat ul.dropdown li {
                   padding: 5px 15px;
                   cursor: pointer;
                   margin: 0 -1px;
               }

                   div#chat ul.dropdown li:hover {
                       background-color: #fb5e1c;
                       color: white;
                   }

           div#chat div.media div.media-aside {
               line-height: 0;
           }

           div#chat div.media.left div.media-aside {
               float: left;
               margin-right: 10px;
           }

           div#chat div.media.right div.media-aside {
               float: right;
               margin-left: 10px;
           }

           div#chat div.media div.media-body:after {
               content: " ";
               visibility: hidden;
               display: block;
               height: 0;
               clear: both;
           }

           div#chat img.avatar {
               width: 30px;
               height: 30px;
               border-radius: 5px;
               background-color: #e6e5eb;
           }

           div#chat div.header {
               line-height: 30px;
               height: 30px;
               cursor: pointer;
               background-color: #fb5e1c;
               border: 1px solid #a94442;
               color: white;
               border-bottom: 0;
               -webkit-border-top-left-radius: 5px;
               -webkit-border-top-right-radius: 5px;
               -moz-border-radius-topleft: 5px;
               -moz-border-radius-topright: 5px;
               border-top-left-radius: 5px;
               border-top-right-radius: 5px;
               padding: 0 10px;
           }

           div#chat .inactive div.header {
               background-color: #e6e5eb;
               border: 1px solid #dcdae3;
               color: black;
           }

           div#chat div#scroller div.header {
               text-align: center;
               padding: 0;
           }

       div#scroller {
           position: absolute;
           bottom: 0;
           right: 100%;
           z-index: 9999;
           width: 30px;
           margin-right: 15px;
       }

       ul#tab-list li.tab,
       div#scroller {
           pointer-events: auto;
       }

           ul#tab-list li.tab div.container,
           div#scroller div.container {
               display: table;
               width: 100%;
               height: 100%;
           }

               ul#tab-list li.tab div.container div.row,
               div#scroller div.container div.row {
                   display: table-row;
               }

               ul#tab-list li.tab div.container div.row-body,
               div#scroller div.container div.row-body {
                   height: 100%;
               }

               ul#tab-list li.tab div.container div.header,
               div#scroller div.container div.header,
               ul#tab-list li.tab div.container div.body,
               div#scroller div.container div.body,
               ul#tab-list li.tab div.container div.footer,
               div#scroller div.container div.footer {
                   display: table-cell;
               }

               ul#tab-list li.tab div.container div.body,
               div#scroller div.container div.body {
                   position: relative;
                   overflow-x: hidden;
                   overflow-y: auto;
               }

                   ul#tab-list li.tab div.container div.body div.content,
                   div#scroller div.container div.body div.content {
                       position: absolute;
                       width: 100%;
                       height: 100%;
                       padding: 10px 0;
                       box-sizing: border-box;
                   }

                       ul#tab-list li.tab div.container div.body div.content:after,
                       div#scroller div.container div.body div.content:after {
                           content: " ";
                           display: block;
                           height: 15px;
                       }

           ul#tab-list li.tab.inactive,
           div#scroller.inactive {
               height: auto !important;
           }

               ul#tab-list li.tab.inactive div.container,
               div#scroller.inactive div.container {
                   height: auto !important;
               }

                   ul#tab-list li.tab.inactive div.container div.row-header,
                   div#scroller.inactive div.container div.row-header {
                       height: auto !important;
                   }

                   ul#tab-list li.tab.inactive div.container div.row-body,
                   div#scroller.inactive div.container div.row-body,
                   ul#tab-list li.tab.inactive div.container div.row-footer,
                   div#scroller.inactive div.container div.row-footer {
                       display: none;
                   }

       ul#tab-list {
           direction: rtl;
           white-space: nowrap;
       }

           ul#tab-list li.tab {
               display: inline-block;
               *display: inline;
               *zoom: 1;
               vertical-align: bottom;
               white-space: normal;
               direction: ltr;
               text-align: left;
               height: 320px;
               margin-right: 15px;
               width: 285px;
           }

               ul#tab-list li.tab.inactive {
                   width: 190px;
               }

               ul#tab-list li.tab#user-tab {
                   width: 205px;
               }

               ul#tab-list li.tab#user-tab {
                   height: 400px;
               }

                   ul#tab-list li.tab#user-tab div.container div.body {
                       background-color: white;
                   }

               ul#tab-list li.tab div.container div.body {
                   border: 1px solid #dcdae3;
                   border-top: 0;
                   border-bottom: 0;
                   background-color: #f9f9fb;
               }

                   ul#tab-list li.tab div.container div.body ul.users#user-list li.user {
                       padding: 5px 10px;
                       line-height: 30px;
                       cursor: pointer;
                   }

                       ul#tab-list li.tab div.container div.body ul.users#user-list li.user:hover {
                           background-color: #f9f9fb;
                       }

                   ul#tab-list li.tab div.container div.body ul.messages li.date {
                       padding: 10px 15px;
                       color: #9aafb5;
                       text-align: center;
                   }

                   ul#tab-list li.tab div.container div.body ul.messages li.message {
                       padding: 5px 10px;
                   }

                       ul#tab-list li.tab div.container div.body ul.messages li.message.me div.media-body {
                           margin-right: 45px;
                       }

                           ul#tab-list li.tab div.container div.body ul.messages li.message.me div.media-body div.bubble {
                               float: right;
                               background-color: #fb5e1c;
                               color: white;
                           }

                               ul#tab-list li.tab div.container div.body ul.messages li.message.me div.media-body div.bubble:before {
                                   border-width: 6px 0 6px 7px;
                                   border-color: transparent transparent transparent #fb5e1c;
                                   left: 100%;
                                   margin-left: -1px;
                               }

                       ul#tab-list li.tab div.container div.body ul.messages li.message.me.no-avatar div.media-body {
                           margin-right: 10px;
                           margin-left: 30px;
                       }

                       ul#tab-list li.tab div.container div.body ul.messages li.message.you div.media-body {
                           margin-left: 45px;
                       }

                           ul#tab-list li.tab div.container div.body ul.messages li.message.you div.media-body div.bubble {
                               float: left;
                               background-color: #e6e5eb;
                               color: black;
                           }

                               ul#tab-list li.tab div.container div.body ul.messages li.message.you div.media-body div.bubble:before {
                                   border-width: 6px 8px 6px 0;
                                   border-color: transparent #e6e5eb transparent transparent;
                                   right: 100%;
                                   margin-right: -1px;
                               }

                       ul#tab-list li.tab div.container div.body ul.messages li.message div.bubble {
                           padding: 8px 10px;
                           position: relative;
                           line-height: 1.3;
                           border-radius: 5px;
                       }

                           ul#tab-list li.tab div.container div.body ul.messages li.message div.bubble:before {
                               content: "\00a0";
                               display: block;
                               position: absolute;
                               top: 8px;
                               width: 0;
                               height: 0;
                               border-style: solid;
                           }

               ul#tab-list li.tab div.container div.footer {
                   border: 1px solid #dcdae3;
                   border-bottom: 0;
               }

       @media all and (min-width: 1380px) {
           div#chat.sidebar {
               height: 60%;
               padding-right: 0;
           }

               div#chat.sidebar ul#tab-list {
                   height: 100%;
               }

                   div#chat.sidebar ul#tab-list li#user-tab.tab {
                       margin-right: 0;
                       height: 100% !important;
                   }

                       div#chat.sidebar ul#tab-list li#user-tab.tab div.container {
                           height: 100% !important;
                       }

                           div#chat.sidebar ul#tab-list li#user-tab.tab div.container div.row-header {
                               display: none !important;
                           }

                           div#chat.sidebar ul#tab-list li#user-tab.tab div.container div.row-body,
                           div#chat.sidebar ul#tab-list li#user-tab.tab div.container div.row-footer {
                               display: table-row !important;
                           }
       }

       @-moz-document url-prefix() {
           ul#tab-list li.tab div.container div.body div.content {
               overflow-x: hidden;
               overflow-y: scroll;
           }
       }



    </style>

</head>

<body id="body" onclick="check(event)">

    <!-- start page-wrapper -->
    <div class="page-wrapper event-single-page">

        <!-- start preloader --> 
        <div class="preloader">
            <div class="middle">
                <i class="fi flaticon-animal"></i>
            </div>
        </div>
        <!-- end preloader -->   

        <!-- Start header -->
        <header id="header">

            <!-- start-topbar -->
            <div class="top-bar">
                <div class="container">
                    <div class="row">
                        <div class="col col-sm-4 logo-holder">
                            <a class="logo" href="index1.html"><img src="images/logo.png" class="img img-responsive" alt></a>
                        </div>
                        <div class="col col-sm-8">
                            <div class="contact-info">
                                <div class="box">
                                    <div class="details">
                                        <h5>
                                            <img src="images/email-icon.png" alt>
                                            Email</h5>
                                        <p>Sellami.Saanoun@gmail.com</p>
                                    </div>
                                </div>
                                <div class="sidebar">
                                    <div class="widget search-widget">
                                        <form action="#" runat="server"  class="form">
                                            <asp:HiddenField runat="server" ID="from" />
                                            <asp:HiddenField runat="server" ID="to" />
                                           
                                        <div>
                                            <input type="text" size="18" placeholder="Chercher">
                                            <button type="submit" class="btn"><i class="fa fa-search"></i></button>
                                        </div>
                                       <%-- </form>--%>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end container -->

              

            </div>
            <!-- end topbar -->

            <nav class="navigation navbar navbar-default" id="main-navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="open-btn">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <div id="navbar" class="navbar-collapse collapse navbar-left">
                        <button class="close-navbar"><i class="fa fa-close"></i></button>
                        <ul class="nav navbar-nav">
                            

                           
                            <li >
                                <a href="fil.aspx">Fil</a>
                               
                            </li>
                            <li class="sub-menu">
                                <a href="#">Demandes d'aide</a>
                                <ul>
                                    <li><a href="causes-grid.html">Demandes récentes</a></li>
                                    <li><a href="#">Demandes à proximité</a></li>
                                    <li><a href="#">Demandes des collaborateurs</a></li>
                                </ul>
                            </li>
                            <li class="sub-menu">
                                <a href="#">Pages</a>
                                <ul>
                                    <li><a href="#">Mon Profil</a></li>
                                    <li><a href="#">Mes Collaborateurs</a></li>
                                    <li><a href="#">Groupes</a></li>
                                    <li><a href="#">Contributions et chartes</a></li>
                                    <li><a href="#">Projet du mois</a></li>
                                    <li><a href="#">Mes dons réguliers</a></li>
                                    <li><a href="#">Statistiques des évènements accomplies</a></li>
                                </ul>
                            </li>
                            <li class="sub-menu">
                                <a href="#">évènements</a>
                                <ul>
                                    <li><a href="#">évènements récents</a></li>
                                    <li><a href="#">évènements à proximité</a></li>
                                    <li><a href="#">évènements des collaborateurs</a></li>
                                    <li><a href="#">évènements accomplis récents</a></li>
                                </ul>
                            </li>
                            <li class="sub-menu">
                                <a href="#">Forum</a>
                                <ul>
                                    <li><a href="#">questions diverses</a></li>
                                    <li><a href="#">offres d'aide</a></li>
                                    <li><a href="#">dons particuliers</a></li>
                                    <li><a href="#">vente et achat</a></li>
                                    <li><a href="#">Suggérer des personnes ou des organismes</a></li>
                                    <li><a href="#">propositions sur le site</a></li>
                                </ul>
                            </li>
                            <li><a href="contact1.aspx">Contactez-nous</a></li>
                        </ul>
                    </div><!-- end of nav-collapse -->

                    <div class="navbar-right social-links-mini-cart">
                        <ul class="social-links">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                        
                        </ul>
                          </div>
                         <div class="box">
                            <ul>
                                    <li> 
                                      <h6>  <asp:Button ID="Button1" runat="server" Text="déconnecter" CssClass="boutondec" OnClick="btn_deconnecter_Click" /> </h6>                                       <h5>     
            	                       <img  src="images/volunteer-single/volunteers/img-1.jpg"  class="img-circle" height="40" width="40" />
                                       <a href="profil1.aspx" >Daenerys Targaryen</a> 
                                       </h5>            
                                    </li>
                            </ul>
                      
                  
                    </div>
                </div><!-- end of container -->
            </nav>
        </header>
        <!-- end of header -->


        <!-- start page-title -->    
        <section class="page-title">
            <div class="page-title-bg"></div>
            <div class="container">
                <div class="title-box">
                    <h1>Evènement</h1>
                    <ol class="breadcrumb">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">Events</a></li>
                        <li class="active">Events single</li>
                    </ol>
                </div>
            </div> <!-- end container -->
        </section>
        <!-- end page-title -->


        <!-- start event-single-main-content -->
        <section class="event-single-main-content">
            <div class="container">
                <div class="row section-padding about-event-wrapper">
                    <div class="col col-lg-11">
                        <div class="big-photo">
                            <center>
                                <h1><asp:Label ID="lbl_titre" runat="server" Text=""></asp:Label></h1>
                                <br />
                            <asp:Label ID="lbl_img" runat="server" Text=""></asp:Label>
                                </center>
                        </div>

                        <div class="row">
                            <div class="col col-md-4">
                                <div class="sidebar">
                                    <div class="event-info">
                                        <ul>
                                            <li><i class="fi flaticon-valentines-day-on-the-calendar"></i><asp:Label ID="lbl_type" runat="server" Text=""></asp:Label></li>
                                            <li><i class="fi flaticon-facebook-placeholder-for-locate-places-on-maps"></i> <asp:Label ID="lbl_lieu" runat="server" Text=""></asp:Label></li>
                                            <li><i class="fi flaticon-day"></i> <asp:Label ID="lbl_date" runat="server" Text=""></asp:Label></li>
                                            <li><i class="fi flaticon-clock"></i> <asp:Label ID="lbl_temp" runat="server" Text=""></asp:Label></li>
                                            <li><i class="fi flaticon-profile"></i> <asp:Label ID="lbl_createur" runat="server" Text=""></asp:Label></li>
                                        </ul>
                                    </div>





                                    





                                </div>
                            </div>

                            <div class="col col-md-8">
                                <div class="about-event">
                                    <center><div class="join">
                                        <asp:Button ID="inviter" runat="server" Text="inviter" CssClass="bnt theme-btn" OnClick="btn_inviter_click"   />
                                        <asp:Button ID="Participer" runat="server" Text="" CssClass="" OnClick="btn_participer_click"   />
                                        <asp:Button ID="partager" runat="server" Text="partager" CssClass="bnt theme-btn" OnClick="btn_partager_click"   />
                                        <asp:Button ID="Modifier" runat="server" Text="Modifier" CssClass="bnt theme-btn" OnClick="btn_modifier_click"   />
                                          </div></center>
                                    <div class="social">
                                        <div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.9&appId=1827610537563435";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>          
<div class="fb-like" data-href="http://sellami-001-site1.1tempurl.com/evenement-single.aspx?id=a3f96d7e-667d-4e59-80bd-5b4ad87095b5/" data-layout="box_count" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div>

                                    </div>
                                    <div class="content">
                  
                                        <p><asp:Label ID="lbl_details" runat="server" Text=""></asp:Label></p>
                                        <%--<div class="para-with-img">
                                            <p>Ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui do lorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius.</p>
                                            <span>
                                                <img src="images/event-single/img-1.jpg" alt class="img img-responsive">
                                            </span>
                                        </div>--%>



                                        <div class="event-map">
                                         <script src="http://maps.google.com/maps/api/js?key=AIzaSyAt51VorXEP-HH6J1ib2TZFSA_OkHv6pC0&libraries=places"></script>

                                    <script>
                                        var directionsDisplay;
                                        var directionsService = new google.maps.DirectionsService();

                                        function InitializeMap() {
                                            directionsDisplay = new google.maps.DirectionsRenderer();
                                            var latlng = new google.maps.LatLng(36.8189700, 10.1657900);
                                            var myOptions =
                                            {
                                                zoom: 8,
                                                center: latlng,
                                                mapTypeId: google.maps.MapTypeId.ROADMAP
                                            };
                                            var map = new google.maps.Map(document.getElementById("map"), myOptions);

                                            directionsDisplay.setMap(map);
                                            directionsDisplay.setPanel(document.getElementById('directionpanel'));

                                            var control = document.getElementById('control');
                                            control.style.display = 'block';

                                            
                                           

                                        }



                                        function calcRoute() {
                                          
                                            var end = document.getElementById('endvalue').value;
                                            var start = document.getElementById('startvalue').value;
                                           
                                     

                                            var request = {
                                                origin: start,
                                                destination: end,
                                                travelMode: google.maps.DirectionsTravelMode.DRIVING
                                            };
                                            directionsService.route(request, function (response, status) {
                                                if (status == google.maps.DirectionsStatus.OK) {
                                                    directionsDisplay.setDirections(response);
                                                }
                                            });
                                            

                                        }



                                        function Button1_onclick() {
                                            calcRoute();
                                        }

                                        function initialize() {

                                            var input1 = document.getElementById('startvalue');
                                            var input2 = document.getElementById('endvalue');
                                            var autocomplete = new google.maps.places.Autocomplete(input1);
                                            var autocomplete = new google.maps.places.Autocomplete(input2);

                                             var start = document.getElementById('from').value;
                                             var end = document.getElementById('to').value;
                                            

                                            var request = {
                                                origin: start,
                                                destination: end,
                                                travelMode: google.maps.DirectionsTravelMode.DRIVING
                                            };
                                            directionsService.route(request, function (response, status) {
                                                if (status == google.maps.DirectionsStatus.OK) {
                                                    directionsDisplay.setDirections(response);
                                                }
                                            });

                                        
                                        }

                                        google.maps.event.addDomListener(window, 'load', initialize);

                                        window.onload = InitializeMap;
                                    </script>

                                    <table id="control">
                                        <tr>
                                            <td>
                                                <table>
                                                    <tr>
                                                        <td>Départ:</td>
                                                        <td>

                                                            <input id="startvalue" type="text" style="width: 300px" />

                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Arrivée:</td>
                                                        <td>

                                                            <input id="endvalue" type="text" style="width: 300px" />

                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="right">
                                                            <input id="Button1" type="button" value="Directions" onclick="return Button1_onclick()" /></td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top">
                                                <div id="directionpanel" style="height: 390px; overflow: auto"></div>
                                            </td>
                                            
                                        </tr>
                                        <tr>

                                            <td valign="top">

                                                <div  id="map" style="height: 400px; width: 550px"></div>
     
                                            </td>

                                        </tr>
                                    </table>
                                 
                                    </div>

                                        <hr />
                                        <center>
                                        <asp:Calendar ID="Calendar1" OnDayRender="CalendarDRender" runat="server" BorderWidth="1px" NextPrevFormat="FullMonth" BackColor="White" Width="400px" ForeColor="Black" Height="300px" Font-Size="9pt" Font-Names="Verdana" BorderColor="White">
                                            <TodayDayStyle BackColor="#CCCCCC"></TodayDayStyle>
                                            <NextPrevStyle Font-Size="8pt" Font-Bold="True" ForeColor="#333333" VerticalAlign="Bottom"></NextPrevStyle>
                                            <DayHeaderStyle Font-Size="8pt" Font-Bold="True"></DayHeaderStyle>
                                            <SelectedDayStyle ForeColor="White" BackColor="#333399"></SelectedDayStyle>
                                            <TitleStyle Font-Size="18pt" Font-Bold="True" BorderWidth="4px" ForeColor="#333399" BorderColor="Black" BackColor="White"></TitleStyle>
                                            <OtherMonthDayStyle ForeColor="#999999"></OtherMonthDayStyle>
                                        </asp:Calendar>
                                        <asp:DataGrid ID="DataGrid1" Style="z-index: 102; left: 23px; position: absolute; top: 271px" runat="server" Font-Size="XX-Small" Font-Names="Verdana" Visible="False"></asp:DataGrid>
                                        </center>

                                    </div>
                                   
                                </div>

                                <div class="other-events">
                                    <a href="#" class="btn"><i class="fa fa-angle-left"></i> Evènement précédent</a>
                                    <a href="#" class="btn">Evènement suivant <i class="fa fa-angle-right"></i></a>
                                </div>
                                  <div class="product-details" style="margin: 50px 20px 20px 20px; padding: 10px; background-color: #fff; color: #e6e5eb">
            	                    <asp:Label ID="lbl_comments" runat="server" Text=""></asp:Label>
                                    <div>
                                    <asp:TextBox ID="txt_Comment" runat="server" size="100" placeholder="Votre commentaire" style="margin: 10px 10px 10px 25px; color: #000000" ValidationGroup="commentGrp" TextMode="SingleLine" Rows="2" Width="400"></asp:TextBox>
                                    <asp:Button ID="Commenter" class="bnt theme-btn" runat="server" Text="Commenter" OnClick="Button2_Click" CausesValidation="true" ValidationGroup="commentGrp" /> 
                                    </div>
                                    </div>
                                    <hr style="color: #FFFFFF; font-size: 2px" /> 
                                   </div>
                            </div>
                        </div> <!-- end row -->
                    </div>
                </div> <!-- end row -->
            </div> <!-- end container -->
            <!-- commentaires -->
           <%-- <section> 
            
             <div class ="col col-md-4"></div>
             <div class ="col col-md-8">
                 
             <div class="product-details" style="margin: 50px 20px 20px 20px; padding: 10px; background-color: #333333; color: #FFFFFF">
                                 
                                   <div class="container">
                                   
                                     
            	                    <asp:Label ID="lbl_comments" runat="server" Text=""></asp:Label>
                                    <div>
                                    <asp:TextBox ID="txt_Comment" runat="server" size="100" placeholder="Votre commentaire" style="margin: 10px 10px 10px 25px; color: #000000" ValidationGroup="commentGrp" TextMode="SingleLine" Rows="2" Width="1000"></asp:TextBox>
                                    <asp:Button ID="Commenter" class="bnt theme-btn" runat="server" Text="Commenter" OnClick="Button2_Click" CausesValidation="true" ValidationGroup="commentGrp" /> 
                                    </div>
                                    </div>
                                    <hr style="color: #FFFFFF; font-size: 2px" /> 
                                   </div>
                                   </div>
                 
                                  </section>  --%>


                             <section>
            <div class="sponsor">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col col-md-5 left-col">
                            <h2>Sponsoré par:</h2>
                        </div>
                        <div class="col col-md-7 right-col">
                            <div class="sponsor-slider">
                                <div class="box">
                                    <img src="images/event-single/sponsores/img-1.png" alt class="img img-responsive">
                                </div>
                                <div class="box">
                                    <img src="images/event-single/sponsores/img-2.png" alt class="img img-responsive">
                                </div>
                                <div class="box">
                                    <img src="images/event-single/sponsores/img-3.png" alt class="img img-responsive">
                                </div>
                                <div class="box">
                                    <img src="images/event-single/sponsores/img-1.png" alt class="img img-responsive">
                                </div>
                                <div class="box">
                                    <img src="images/event-single/sponsores/img-2.png" alt class="img img-responsive">
                                </div>
                                <div class="box">
                                    <img src="images/event-single/sponsores/img-3.png" alt class="img img-responsive">
                                </div>
                            </div>      
                        </div>
                    </div>
                </div>
            </div> <!-- end sopnsor -->
        </section>
        <!-- end event-single-main-content -->


        <!-- start footer -->  
        <footer>
            <div class="container">
                <div class="row upper-footer">
                    <div class="col col-md-5 col-xs-6">
                        <div class="widget about-widget">
                            <div class="logo">
                                <img src="images/logo.png" alt class="img img-responsive">
                            </div>

                            <div class="details">
                                <p>Ce cite web à été conçu et développé comme projet de fin d'études sous l'encadrement de l'Institut Supérieure de l'Informatique et de Mathématiques de Monastir et PAYPOS Tunisie pour des raisons de charité et pour ne pas avoir des profits personnels.</p>
                                <p class="copyright">
                                    2017 &copy; Tous les droits sont réservés par <span><a href="#">UHELP</a></span>
                                </p>
                                <ul class="social-links">
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                    <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="col col-md-2 col-xs-6">
                        <div class="widget">
                            <h3>Compagnie</h3>
                            <ul>
                                <li><a href="#">Nous sommes qui?</a></li>
                                <li><a href="#">Travaux</a></li>
                                <li><a href="#">Presse</a></li>
                                <li><a href="#">Campagnes populaires</a></li>
                                <li><a href="#">Carrière</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col col-md-2 col-xs-6">
                        <div class="widget">
                            <h3>Aide</h3>
                            <ul>
                                <li><a href="#">FAQ</a></li>
                                <li><a href="#">Politiue de confidentialité</a></li>
                                <li><a href="#">Conditions d'utilisation</a></li>
                                <li><a href="#">Support</a></li>
                                <li><a href="#">Règlements</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col col-md-3 col-xs-6">
                        <div class="widget contact-widget">
                            <h3>Contactez-nous</h3>
                            <div>
                                <%--<form action="#" class="form">--%>
                                    <div>
                                        <input type="text" class="form-control" placeholder="votre nom">
                                    </div>
                                    <div>
                                        <input type="email" class="form-control" placeholder="addresse email">
                                    </div>
                                    <div>
                                        <textarea placeholder="écrire ici"></textarea>
                                    </div>
                                    <div>
                                        <button class="btn theme-btn" type="submit">Envoyer</button>
                                    </div>
                               <%-- </form>--%>
                            </div>
                        </div>
                    </div>
                </div> <!-- end upper-footer -->
            </div> <!-- end container -->

            <div class="row lower-footer">
                <div class="col col-xs-12">
                    <p><span><i class="fa fa-heart"></i></span> Les portes de la charité sont <span>difficiles à ouvrir</span> et <span>dures à fermer</span> <span><i class="fa fa-heart"></i></span></p>
                </div>
            </div>
        </footer>
        <!-- end footer -->
    </div>
    <!-- end of page-wrapper -->
    </form>

    <!-- All JavaScript files
    ================================================== -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <!-- Plugins for this template -->
    <script src="js/jquery-plugin-collection.js"></script>

    <!-- Custom script for this template -->
    <script src="js/script.js"></script>

    <script>
       function check_empty() {
           if (document.getElementById('name').value == "" || document.getElementById('email').value == "" || document.getElementById('msg').value == "") {
               alert("Fill All Fields !");
           } else {
               document.getElementById('form').submit();
               alert("Form Submitted Successfully...");
           }
       }
       //Function To Display Popup
       function div_show() {
           document.getElementById('abc').style.display = "block".focus();
           
       }
       //Function To Check Target Element
       function check(e) {
           var target = (e && e.target) || (event && event.srcElement);
           var obj = document.getElementById('abc');
           var obj2 = document.getElementById('popup');
           checkParent(target) ? obj.style.display = 'none' : null;
           target == obj2 ? obj.style.display = 'block' : null;
       }
       //Function To Check Parent Node And Return Result Accordingly
       function checkParent(t) {
           while (t.parentNode) {
               if (t == document.getElementById('abc')) {
                   return false
               } else if (t == document.getElementById('close')) {
                   return true
               }
               t = t.parentNode
           }
           return true
       }
   </script>

    <!-- chat -->
    <script src="assets/js/elastic.min.js"></script>
	<script src="assets/js/main.js"></script>

</body>

</html>
