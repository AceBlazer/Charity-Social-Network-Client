<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="evenement-proximite.aspx.cs" Inherits="charité.evenement_proxilite" Async="true"%>



<!DOCTYPE html>
<html lang="en">
<script src="js/my_js.js"></script>

<head>
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
 

    <!-- Meta Tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="SSOJ">

    <!-- Page Title -->
    <title>Evènements à proximité</title>
    <!-- style sheets-->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
	<link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/ionicons.min.css" />
    <link rel="stylesheet" href="css/font-awesome.min.css" />
    <link href="css/emoji.css" rel="stylesheet">

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
    <link href="css/owl.transitions.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="body" onclick="check(event)">

    <!-- start page-wrapper -->
    <div class="page-wrapper causes-grid-page">

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
                                        <form id="x" runat="server"  class="form">
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
                                    <li><a href="#">Demandes des collaborateurs</a></li>
                                </ul>
                            </li>
                            <li class="sub-menu">
                                <a href="#">Mes Pages</a>
                                <ul>
                                    <li><a href="#">Mon Profil</a></li>
                                    <li><a href="MesCollaborateurs.aspx">Mes Collaborateurs</a></li>
                                    <li><a href="calend.aspx">Mon Agenda</a></li>
                                    <li><a href="#">Mes évènements</a></li>
                                    <li><a href="#">Mes offres d'aide</a></li>
                                    <li><a href="#">Mes demandes d'aide</a></li>
                                </ul>
                            </li>
                            <li class="sub-menu">
                                <a href="#">évènements</a>
                                <ul>
                                    <li><a href="evenements-recents.aspx">évènements récents</a></li>
                                    <li><a href="#">évènements à proximité</a></li>
                                    <li><a href="#">évènements des collaborateurs</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="chat.aspx">Messagerie</a>
                            </li>
                            <li><a href="contact1.aspx">Contactez-nous</a></li>
                       <!-- connecté en tt que -->
                            <li> 
                                      <h6>  <asp:Button ID="Button1" runat="server" Text="Se déconnecter" CssClass="boutondec" OnClick="btn_deconnecter_Click" /> </h6>                                       <h5>     
            	                       <img id="img_top" runat="server" class="img-circle" height="40" width="40" />
                                       <a href="profil1.aspx" ><asp:Label ID="lbl_nom_top" runat="server"></asp:Label></a> 
                                       </h5>            
                                    </li>

                             <!-- notif -->



                            <li class="dropdown dropdown-extended dropdown-notification" id="header_notification_bar">
                                <a href="notifrealtime.aspx">
                                    <i class="fa fa-bell-o"></i>
                                     <asp:Label ID="lbl_nbnotif2" runat="server" Text=""></asp:Label>                                 
                                </a>  
                            </li>
                            <!-- fin notif -->

                        </ul>
                    </div>
                    <!-- end of nav-collapse -->

                      
                   
                </div><!-- end of container -->
            </nav>
        </header>
        <!-- end of header -->


        <!-- start page-title -->    
        <section class="page-title">
            <div class="page-title-bg"></div>
            <div class="container">
                <div class="title-box">
                    <h1><span>évènements</span> à proximité</h1>
                    <ol class="breadcrumb">
                        <li><a href="index1.aspx">Accueil</a></li>
                        <li class="active">évènements à proximité</li>
                    </ol>
                </div>
            </div> <!-- end container -->
        </section>
        <!-- end page-title -->

      

        <!-- start latest-causes -->
          <center>
        <h3>
        <asp:Label ID="proximitee" runat="server"></asp:Label>
            </h3>
         </center>
         <center>
        <div style="height:300px;width:100%">
        <div id="map" style="height:100%;width:100%"   ></div>     
         </div>
        </center>
        <section class="latest-causes section-padding">
            <div class="container">
                <div class="row content">
                               
                      <asp:Label ID="lbl_ev_prox" runat="server" Text=""></asp:Label>
     
                </div> <!-- end content -->
            </div> <!-- end container -->
            <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
        </section>
        <!-- end latest-causes -->

      


        <script async defer  src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAt51VorXEP-HH6J1ib2TZFSA_OkHv6pC0&callback=initMap"></script>
                                             


        <script>
            function initMap() {
                var map = new google.maps.Map(document.getElementById('map'), {
                    center: { lat: 36.8189700, lng: 10.1657900 },
                    zoom: 6
                });
                var infoWindow = new google.maps.InfoWindow({ map: map });

                // Try HTML5 geolocation.
                if (navigator.geolocation) {
                    navigator.geolocation.getCurrentPosition(function (position) {
                        var pos = {
                            lat: position.coords.latitude,
                            lng: position.coords.longitude
                        };

                        infoWindow.setPosition(pos);
                        infoWindow.setContent('position trouvée.');
                        map.setCenter(pos);
                    }, function () {
                        handleLocationError(true, infoWindow, map.getCenter());
                    });
                } else {
                    // Browser doesn't support Geolocation
                    handleLocationError(false, infoWindow, map.getCenter());
                }
            }

            function handleLocationError(browserHasGeolocation, infoWindow, pos) {
                infoWindow.setPosition(pos);
                infoWindow.setContent(browserHasGeolocation ?
                                      'Error: The Geolocation service failed.' :
                                      'Error: Your browser doesn\'t support geolocation.');
            }
            
        </script>



           <!-- act button-->
         <div  style="position: fixed; bottom: 0%; left: 1%; right: 0%; top: 85%; width:20%; z-index:100;" >
             <img id="popup" onclick="div_show()" src="images/actbtn.png" width="50" class="img-circle shadow img-responsive"  style="cursor: pointer; height:auto"  />
             <div>
             <p onclick="div_show()"> Créer</p> 
             </div>
         </div>

        

        <!--popup-->

        <div id="abc" style="z-index:100;">
            <!-- Popup Div Starts Here -->
            <div id="popupContact" class="center img-rounded img-responsive"  style="padding: 10px; border: 5px solid #808080; background-color:#FFFFFF; z-index:999; left: 30%;  top:20%;  position: center;height:auto;width:auto; background-repeat: no-repeat; ">
                <!-- Contact Us Form -->
                    <img id="close" src="images/3.png" width="30" height="30" class="img-circle" style="z-index: 999;">
                    
                  <h4><center> Pour créer une nouvelle publication, vous serez redirigé vers la page de création. Etes-vous sûr? </center></h4>
                  <center> <asp:Button ID="oui" class="bnt theme-btn" runat="server" Text="Oui" OnClick="redir" />  </center>

               
            </div>
            <!-- Popup Div Ends Here -->
        </div>

       

       
        </form>
        <!-- fin chat -->



        &nbsp;<!-- start footer --><footer>
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


    <!-- All JavaScript files
    ================================================== -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <!-- Plugins for this template -->
    <script src="js/jquery-plugin-collection.js"></script>

    <!-- Custom script for this template -->
    <script src="js/script.js"></script>

   <!--popup-->
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
           var map = document.getElementById('map');
           document.getElementById('abc').style.display = "block".focus();
          
               google.maps.event.trigger(map, 'resize');
          
          
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

<!-- Mirrored from themexriver.com/charity-plus/multipage/charity-plus/causes-grid.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 17 Mar 2017 13:15:20 GMT -->
</html>
