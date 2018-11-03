<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact1.aspx.cs" Inherits="charité.contact1" %>


<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from themexriver.com/charity-plus/multipage/charity-plus/contact.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 17 Mar 2017 13:16:05 GMT -->
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

    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body  onload="initMap();">

    <!-- start page-wrapper -->
    <div class="page-wrapper contact-page">

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
                            <a class="logo" href="index.html"><img src="images/logo.png" class="img img-responsive" alt></a>
                        </div>
                        <div class="col col-sm-8">
                            <div class="contact-info">
                                <div class="box">
                                    <div class="details">
                                        <h5><img src="images/email-icon.png" alt> Email</h5>
                                        <p>contact@charityplusplus.com</p>
                                    </div>
                                </div>
                                <div class="box">
                                    <div class="details">
                                        <h5> <img src="images/phone-icon.png" alt> Phone</h5>
                                        <p>+1-(192)-8222 974</p>
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
                            <li class="sub-menu">
                                <a href="#">Home</a>
                                <ul>
                                    <li><a href="index.html">Home style 1</a></li>
                                    <li><a href="index-2.html">Home style 2</a></li>
                                    <li><a href="index-3.html">Home style 3</a></li>
                                    <li><a href="index-4.html">Home style 4</a></li>
                                    <li><a href="index-5.html">Home style 5</a></li>
                                </ul>
                            </li>
                            <li class="sub-menu">
                                <a href="#">Causes</a>
                                <ul>
                                    <li><a href="demandes-recentes.aspx">Causes grid</a></li>
                                    <li><a href="causes-list.html">Causes list</a></li>
                                    <li><a href="causes-single.html">Causes Single</a></li>
                                </ul>
                            </li>
                            <li class="sub-menu">
                                <a href="#">Pages</a>
                                <ul>
                                    <li><a href="volunteers.html">Volunteers</a></li>
                                    <li><a href="volunteer-single.html">Volunteer single</a></li>
                                    <li><a href="gallery-3col.html">Gallery 3 coloumn</a></li>
                                    <li><a href="gallery-4col.html">Gallery 4 coloumn</a></li>
                                    <li><a href="gallery-fullwidth.html">Gallery fullwidth</a></li>
                                    <li class="sub-sub-menu">
                                        <a href="#">Blog</a>
                                        <ul>
                                            <li><a href="blog.html">Blog Grid</a></li>
                                            <li><a href="blog-details.html">Blog details</a></li>
                                        </ul>

                                    </li>
                                    <li><a href="about.html">About</a></li>
                                    <li><a href="error-404.html">404</a></li>
                                </ul>
                            </li>
                            <li class="sub-menu">
                                <a href="#">Events</a>
                                <ul>
                                    <li><a href="event-2col.html">Event 2 coloumn</a></li>
                                    <li><a href="event-3col.html">Event 3 coloumn</a></li>
                                    <li><a href="event-single.html">Event Details</a></li>
                                </ul>
                            </li>
                            <li class="sub-menu">
                                <a href="#">Shop</a>
                                <ul>
                                    <li><a href="shop.html">Shop</a></li>
                                    <li><a href="shop-details.html">Shop details</a></li>
                                </ul>
                            </li>
                            <li><a href="contact.html">Contact</a></li>
                        </ul>
                    </div><!-- end of nav-collapse -->

                    <div class="navbar-right social-links-mini-cart">
                        <ul class="social-links">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                        </ul>

                        <ul class="mini-cart-wrapper">
                            <li>
                                <a href="#" class="mini-cart-btn">
                                    <i class="fi flaticon-bag-1"></i>
                                    <span class="item-count">21</span>
                                </a>
                                <ul class="mini-cart">
                                    <li class="item">
                                        <div class="product-img">
                                            <img src="images/shop/thumb/img-1.jpg" alt="">
                                        </div>
                                        <div class="product-details">
                                            <h6>Name of the product</h6>
                                            <p>$255.5</p>
                                            <a href="#"><i class="fi flaticon-garbage"></i></a>
                                        </div>
                                    </li>
                                    <li class="item">
                                        <div class="product-img">
                                            <img src="images/shop/thumb/img-2.jpg" alt="">
                                        </div>
                                        <div class="product-details">
                                            <h6>Name of the product</h6>
                                            <p>$155.5</p>
                                            <a href="#"><i class="fi flaticon-garbage"></i></a>
                                        </div>
                                    </li>
                                    <li class="minicart-price-total">
                                        <div class="price-total">
                                            <span class="label-price-total">Subtotal</span>
                                            <div class="price-total-w">
                                                <span>255.5</span>
                                            </div>
                                        </div>

                                        <div class="checkout-btn">
                                            <a class="btn theme-btn">Proceed to checkout</a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                        </ul> <!-- end mini-cart -->
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
                    <h1>Contactez nous</h1>
                    <ol class="breadcrumb">
                        <li><a href="index.aspx">Accueil</a></li>
                        <li class="active">Contactez nous</li>
                    </ol>
                </div>
            </div> <!-- end container -->
        </section>
        <!-- end page-title -->


        <!-- start contact-main-content -->
        <section class="contact-main-content section-padding">
            <div class="container">
                <div class="row contact-info">
                    <div class="col col-sm-4">
                        <div class="wow slideInUpSlow">
                            <span class="icon"><i class="fa fa-map-marker"></i></span>
                            <h3>Addresse</h3>
                            <p>Avenue de la Corniche, BP 223,, Monastir 5000</p>
                        </div>
                    </div>
                    <div class="col col-sm-4">
                        <div class="wow slideInUpSlow" data-wow-delay="0.2s">
                            <span class="icon"><i class="fa fa-envelope-o"></i></span>
                            <h3>Email</h3>
                            <p>Sellami.Saanoun@gmail.com</p>
                            <p>Sellami006@gmail.com</p>
                            <p>Saanoun.jasser21@gmail.com</p>
                        </div>
                    </div>
                    <div class="col col-sm-4">
                        <div class="wow slideInUpSlow" data-wow-delay="0.4s">
                            <span class="icon"><i class="fa fa-fax"></i></span>
                            <h3>Tél</h3>
                            <p>+216 28 000 434</p>
                            <p>+216 50 613 453</p>
                        </div>
                    </div>
                </div> <!-- end contact info -->
            </div> <!-- end container -->

            <div class="row map-concate-form">
                <div class="col col-xs-12">
                    <div id="map1" style="width:100%;height:400px;"></div>
                </div>
                <div class="contact-form">
                    <div class="container">
                        <div class="row  wow bounceInUp">
                            <div class="col col-md-10 col-md-offset-1 form-inner">
                                <h3>Laisser un message</h3>
                                <form class="form row" id="contact-form">
                                    <div class="col col-md-6">
                                        <input type="text" class="form-control" name="name" placeholder="votre nom..">
                                    </div>
                                    <div class="col col-md-6">
                                        <input type="email" class="form-control" name="email" placeholder="votre email..">
                                    </div>
                                    <div class="col col-md-12">
                                        <input type="text" class="form-control" name="subject" placeholder="sujet..">
                                    </div>
                                    <div class="col col-md-12">
                                        <textarea class="form-control" name="message" placeholder="écrire ici.."></textarea>
                                    </div>
                                    <div class="col col-md-12">
                                        <button type="submit" class="bnt theme-btn">Envoyer</button>
                                        <span id="loader"><img src="images/contact-ajax-loader.gif" alt="Loader"></span>
                                    </div>
                                    <div class="col col-md-12">
                                        <div id="success">Merci</div>
                                        <div id="error"> erreur survenue lors de l'envoi. Veuillez réessayer ultérieurement. </div>
                                    </div>
                                </form>
                            </div>
                        </div> <!-- end row -->
                    </div> <!-- end container -->
                </div>
            </div>
        </section>
        <!-- end contact-main-content -->


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
                                <form action="#" class="form">
                                    <div>
                                        <input type="text" class="form-control" placeholder="votre nom" required>
                                    </div>
                                    <div>
                                        <input type="email" class="form-control" placeholder="addresse email" required>
                                    </div>
                                    <div>
                                        <textarea placeholder="écrire ici"></textarea>
                                    </div>
                                    <div>
                                        <button class="btn theme-btn" type="submit">Envoyer</button>
                                    </div>
                                </form>
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

    <!-- initialiser la carte -->
       <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false">
</script>
    <script>
        function initMap() {
            var map = new google.maps.Map(document.getElementById('map1'), {
                zoom: 17,
                center: { lat: 35.764467, lng: 10.840910 }
            });
            var marker = new google.maps.Marker({
                position: { lat: 35.764467, lng: 10.840910 },
                map: map,
            });
        }

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
</body>

<!-- Mirrored from themexriver.com/charity-plus/multipage/charity-plus/contact.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 17 Mar 2017 13:16:06 GMT -->
</html>
