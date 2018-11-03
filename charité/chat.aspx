<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="chat.aspx.cs" Inherits="charité.chat" %>




<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from themexriver.com/charity-plus/multipage/charity-plus/volunteer-single.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 17 Mar 2017 13:15:30 GMT -->
<head>



    <!-- Meta Tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Charity++ Responsive HTML Template">
    <meta name="author" content="themexriver">

    <!-- Page Title -->
    <title>Chat</title>

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

    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet">



    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <!-- start page-wrapper -->
    <div class="page-wrapper volunteer-single">

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
                                        <h5><img src="images/email-icon.png" alt> Email</h5>
                                        <p>Sellami.Saanoun@gmail.com</p> 
                                    </div>
                                </div>
                               <div class="sidebar">
                                  <div class="widget search-widget">
                                <form id="x" runat="server">
                                    <div>
                                        <input type="text" size="18" placeholder="Chercher" >
                                        <button type="submit" class="btn"><i class="fa fa-search"></i></button>
                                    </div>
                               
                            </div>
                                   </div> 
                            </div>
                        </div>       
                    </div>
                </div> <!-- end container -->

              

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
                                    <li><a href="#">...</a></li>
                                    <li><a href="#">...</a></li>
                                    <li><a href="#">dons réguliers</a></li>
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
                                      <h6>   <a href="#">Se déconnecter </a> </h6>
                                       <h5>     
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
                    <h1> <span> Chat </span> </h1>
                    <ol class="breadcrumb">
                        <li><a href="#">Profil</a></li>
                        <li class="active">Chat</li>
                    </ol>
                </div>
            </div> <!-- end container -->
        </section>
        <!-- end page-title -->

        <asp:ScriptManager ID="sm" runat="server" />
            <script type="text/javascript">
                var prm = Sys.WebForms.PageRequestManager.getInstance();
                prm.add_beginRequest(beginRequest);

                function beginRequest() {
                    prm._scrollPosition = null;
                }
            </script>



        <!-- start volunteer-single-section -->  
        <section class="volunteer-single-section" >
            <div class="container">
                

                <div class="row volunteer-content">
                    <div class="col col-md-4">
                        <div class="info">
                            
                            
                            
                           

                            <!-- enligne -->
                            <div class="widget recent-events">
                                <div class="box-title">
                                <h4><i class="fa-camera"></i> Collaborateurs en ligne</h4>
                                    </div>
                                        <!-- start gallery-3col-content -->
        <%--<section class="gallery-3col-content sortable-gallery gallery section-padding">--%>
            <div class="container">
                <div class="row">
                    <div class="col col-lg-3" style="overflow-y:scroll">
             

                        <div class="gallery-container popup-gallery">
                           

                            <asp:Timer ID="Timer3" runat="server" Interval="5000" OnTick="Timer3_Tick"></asp:Timer>

                            <asp:UpdatePanel ID="UpdatePanel5" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="true">
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="Timer3" />
                                </Triggers>
                                <ContentTemplate>
                                    <ul>
                                    <asp:Label ID="lbl_enligne" runat="server"></asp:Label>
                                        </ul>
                                </ContentTemplate>
                            </asp:UpdatePanel>


                        </div>
                    </div> <!-- end col -->
                </div> <!-- end row -->
            </div> <!-- end container -->
       <%-- </section>--%>
        <!-- end gallery-3col-content -->
                                
                            </div>


                           

                            </div>
                        </div>



           





                    <div class="col col-md-8" >
                        <div class="causes-list-box" style="background-color: #FFFFFF; padding:15px">
                         <div>
                             <center>
                             Discussion avec: 
                             <asp:TextBox ID="tb" runat="server"></asp:TextBox>
                             <asp:LinkButton ID="k" runat="server" Text="ok" OnClick="selectcol" />
                                 </center>
                             <hr />
                              <center><h4><asp:Label ID="namec" runat="server"></asp:Label></center></h4>

                         </div>
                       
			<!-- chat -->
		
				<div class="chat-body" style="overflow-y:scroll; height:400px"  >
                    
                      	<asp:Timer ID="Timer2" runat="server" Interval="5000" OnTick="Timer2_Tick"></asp:Timer> 
                                    <asp:UpdatePanel ID="UpdatePanel4" runat="server" UpdateMode="Conditional">
                                        <Triggers>
                                             <asp:AsyncPostBackTrigger ControlID="Timer2" EventName="Tick" />
                                            </Triggers>
                                        <ContentTemplate>
                                    
                                            <asp:Label ID="lbl_message" runat="server"></asp:Label>
                                           </ContentTemplate>
                                        </asp:UpdatePanel>
                    <asp:Label ID="lbl_message1" runat="server"></asp:Label>
                    
                     
                    </div> 
                            <div>
                           
                      <div class="col-lg-12" style="padding:10px">
                    <div class="col-lg-10">
                        <asp:TextBox ID="txt_msg" class="form-control" runat="server" palceholder="écrire votre message ici"></asp:TextBox> 
                    </div>
                    <div class="col-lg-2">
                     <asp:LinkButton id="bb" runat ="server" Text="Envoyer" OnClick="sendm"></asp:LinkButton> 
                        </div>
                        </div>
                           
                                </div>
                    </div>
             </div>
                    </div>
                    </div> <!-- end container -->
        </section>
        <!-- end volunteer-single-section -->


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
                                
                                    <div>
                                        <input type="text" class="form-control" placeholder="votre nom">
                                    </div>
                                    <div>
                                        <input type="email" class="form-control" placeholder="addresse email" >
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

        </form>
    </div>
    <!-- end of page-wrapper -->


    <!-- All JavaScript files
    ================================================== -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <!-- Plugins for this template -->
    <script src="js/jquery-plugin-collection.js"></script>



     <script>
        
             // check DOM Ready
             $(document).ready(function () {
                 // execute
                 (function () {
                     // map options
                     var options = {
                         zoom: 5,
                         center: new google.maps.LatLng(33.885949, 10.100971), // centered US     
                         mapTypeId: google.maps.MapTypeId.TERRAIN,
                         mapTypeControl: false
                     };

                     // init map
                     var map = new google.maps.Map(document.getElementById('map1'), options);

                     // NY and CA sample Lat / Lng
                     var southWest = new google.maps.LatLng(36.993233, 9.344246);
                     var northEast = new google.maps.LatLng(32.092940, 10.586402);
                     var lngSpan = northEast.lng() - southWest.lng();
                     var latSpan = northEast.lat() - southWest.lat();

                     // set multiple marker
                     for (var i = 0; i < 20; i++) {
                         // init markers
                         var marker = new google.maps.Marker({
                             position: new google.maps.LatLng(southWest.lat() + latSpan * Math.random(), southWest.lng() + lngSpan * Math.random()),
                             map: map,
                             title: 'Collaborateur ' + i
                         });

                         // process multiple info windows
                         (function (marker, i) {
                             // add click event
                             google.maps.event.addListener(marker, 'click', function () {
                                 infowindow = new google.maps.InfoWindow({
                                     content: 'Foulen x'
                                 });
                                 infowindow.open(map, marker);
                             });
                         })(marker, i);
                     }
                 })();
             });
         




function handleLocationError(browserHasGeolocation, infoWindow, pos) {
  infoWindow.setPosition(pos);
  infoWindow.setContent(browserHasGeolocation ?
                        'Error: The Geolocation service failed.' :
                        'Error: Your browser doesn\'t support geolocation.');
}
        </script>


    <!-- Google map API -->
    <script src="http://maps.google.com/maps/api/js?key=AIzaSyAt51VorXEP-HH6J1ib2TZFSA_OkHv6pC0"></script>



    <!-- Custom script for this template -->
    <script src="js/script.js"></script>
    	<script src="assets/js/elastic.min.js"></script>
	<script src="assets/js/main.js"></script>
</body>

<!-- Mirrored from themexriver.com/charity-plus/multipage/charity-plus/volunteer-single.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 17 Mar 2017 13:15:34 GMT -->
</html>
