<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="connecter.aspx.cs" Inherits="charité.connecter" %>



<!DOCTYPE html>
<html lang="en">


<head>
    <!-- Meta Tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="SSOJ">

    <!-- Page Title -->
    <title>Se connecter</title>
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

<body>
      
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
                                <a href="index1.aspx">Accueil</a>
                               
                            </li>
                            <li class="sub-menu">
                                <a href="#">Demandes d'aide</a>
                                <ul>
                                    <li><a href="causes-grid.html">Demandes récentes</a></li>
                                    <li><a href="#">Demandes des collaborateurs</a></li>
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
                            
                            <li><a href="contact1.aspx">Contactez-nous</a></li>
                   

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
                    <h1 style="cursor:pointer" onclick="smoothScroll(document.getElementById('second'))"><span>Se connecter / </span> </h1><h1 style="cursor:pointer"  onclick="smoothScroll(document.getElementById('third'))"> S'inscrire </h1>
                    <ol class="breadcrumb">
                        <li><a href="#">Accueil</a></li>
                        <li class="active">Se connecter</li>
                    </ol>
                </div>
            </div> <!-- end container -->
        </section>
        <!-- end page-title -->
     
      
            <div class="col-lg-1" ></div>
            <!-- connection -->
            <asp:Panel  runat="server" id="second">
            <div class="col-lg-10" style="padding: 20px; margin:10px; background-color: #FFFFFF" >
                <center><h3>Bienvenue une autre fois</h3></center>
                <hr /> 
                <div class="col-lg-4">
                   Login: <asp:TextBox ID="txt_log" class="form-control" runat="server"  placeholder="Login"></asp:TextBox>
                    <asp:RequiredFieldValidator
                        ID="RequiredFieldValidator1"
                        ControlToValidate="txt_log"
                        ValidationGroup="cnxgrp"
                        ErrorMessage="Veuillez saisir un nom d'utilisateur correct"
                        ForeColor="red"
                        runat="Server">
                    </asp:RequiredFieldValidator>
                </div>
                <div class="col-lg-4">
                  Mot de passe:  <asp:TextBox ID="txt_pass" class="form-control" runat="server" TextMode="Password"  placeholder="Mot de passe" ></asp:TextBox>
                   <asp:RequiredFieldValidator
                        ID="RequiredFieldValidator2"
                        ControlToValidate="txt_pass"
                        ValidationGroup="cnxgrp"
                        ErrorMessage="Veuillez saisir un mot de passe correct"
                        ForeColor="red"
                        runat="Server">
                    </asp:RequiredFieldValidator>
                     </div>

                <div class="col-lg-2" style="margin: 16px 0px 0px 80px">
          
                   
                    <asp:Button ID="Button1" class="bnt theme-btn" runat="server" Text="Se connecter" OnClick="Button1_Click" CausesValidation="true" ValidationGroup="cnxgrp" />
             <center>   
                    
                              <!-- facebook -->
           <asp:ImageButton id="imagebutton1" runat="server"
           AlternateText="ImageButton 1"
           ImageAlign="left"
           ImageUrl="images/facebooklogin.png"
           CssClass="img-rounded"
           Height="40px"
           Width="40px"
           OnClick="Loginfb"/>
                    <!-- google -->
           <asp:ImageButton id="imagebutton2" runat="server"
           AlternateText="ImageButton 1"
           ImageAlign="left"
           ImageUrl="images/logingoogle.png"
           CssClass="img-rounded"
           Height="40px"
           Width="40px"
           OnClick="Loging"/>
                    <!--  twitter -->
           <asp:ImageButton id="imagebutton3" runat="server" 
           AlternateText="ImageButton 1"
           ImageAlign="left"
           ImageUrl="images/twitterlogin.png"
           CssClass="img-rounded"
           Height="40px"
           Width="40px"
           OnClick="btnLogin_Click"/>

</center>
               </div>
             
                
            </div>
            </asp:Panel>
          

           <div class="col-lg-1"></div>
            <!-- inscription -->

            <div class="col-lg-1" id="third"></div>
               <div class="col-lg-12">
             <div class="col-lg-1"></div>
            <div class="col-sm-10" style="padding: 20px; background-color:#FFFFFF; margin: 10px;">
                <center><h3>Pas encore un membre?</h3></center>
                <hr />
               
              <div class="col-sm-7">
                <div class="col-sm-5">
                   
                    <asp:TextBox ID="txt_nom" class="form-control" runat="server" placeholder="Nom"></asp:TextBox>
                     <asp:RequiredFieldValidator
                        ID="RequiredFieldValidator3"
                        ControlToValidate="txt_nom"
                        ValidationGroup="inscriptiongrp"
                        ErrorMessage="Veuillez saisir un nom correct"
                        ForeColor="red"
                        runat="Server">
                    </asp:RequiredFieldValidator>
                </div>
                <div class="col-sm-5">
                    <asp:TextBox ID="txt_prenom" class="form-control" runat="server"  placeholder="Prénom"></asp:TextBox>
                     <asp:RequiredFieldValidator
                        ID="RequiredFieldValidator4"
                        ControlToValidate="txt_prenom"
                        ValidationGroup="inscriptiongrp"
                        ErrorMessage="Veuillez saisir votre prénom"
                        ForeColor="red"
                        runat="Server">
                    </asp:RequiredFieldValidator>
                </div>
        
              
                <div class="col-sm-10"></div>
                <div class="col-sm-5">
                    <asp:TextBox ID="txt_email" class="form-control" runat="server" TextMode="Email"  placeholder="Addresse e-mail"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txt_email" ErrorMessage="Adresse électronique" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        Display="Dynamic">Adresse électronique non valide. Elle doit être au format email@hôte.domaine
                    </asp:RegularExpressionValidator><div class="col-lg-10 " style="color: #FF0000" ><asp:Literal runat="server"  ID="ltNotify" /></div> 
                </div>
                <div class="col-sm-5">
                     <asp:TextBox ID="txt_address" class="form-control" runat="server" placeholder="Addresse"></asp:TextBox>
                     <asp:RequiredFieldValidator
                        ID="RequiredFieldValidator5"
                        ControlToValidate="txt_address"
                        ValidationGroup="inscriptiongrp"
                        ErrorMessage="Veuillez saisir une addresse valide"
                        ForeColor="red"
                        runat="Server">
                    </asp:RequiredFieldValidator>
                </div>
                <div class="col-sm-10"></div>
                <div class="col-sm-5">
                    Date de naissance: <asp:TextBox ID="txt_naiss" class="form-control" runat="server"  TextMode="Date" placeholder="Date de naissance"></asp:TextBox>
                     <asp:RequiredFieldValidator
                        ID="RequiredFieldValidator6"
                        ControlToValidate="txt_naiss"
                        ValidationGroup="inscriptiongrp"
                        ErrorMessage="Veuillez saisir une date de naissance"
                        ForeColor="red"
                        runat="Server">
                    </asp:RequiredFieldValidator>
                </div>
                <div class="col-sm-5">
                    <br />
                    <asp:TextBox ID="txt_tel" class="form-control" runat="server"  TextMode="Number" placeholder="Numéro téléphone"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ControlToValidate="txt_tel" 
                        ValidationGroup="inscriptiongrp"
                        ErrorMessage="Téléphone" 
                        ForeColor="Red" ValidationExpression="\d{8}" 
                        Display="Dynamic">
                        Le numéro de téléphone doit être au format : XXXXXXXX
                    </asp:RegularExpressionValidator>
                </div>
                <div class="col-sm-10"></div>
                <div class="col-sm-5">
                    <asp:TextBox ID="txt_pass1"  class="form-control" runat="server" TextMode="Password" placeholder="Mot de passe"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="txt_pass1"
                        ValidationGroup="inscriptiongrp"
                        ErrorMessage="Mot de passe" 
                        ForeColor="Red" 
                        ValidationExpression=".*[@#&%!=?+*-/].*" Display="Dynamic">
                        Le mot de passe doit comprendre un de ces caractères: (@ # & % ! = ? + - * /)
                       </asp:RegularExpressionValidator>
                       <asp:RequiredFieldValidator
                        ID="RequiredFieldValidator10"
                        ControlToValidate="txt_pass1"
                        ValidationGroup="inscriptiongrp"
                        ErrorMessage="Veuillez entrer votre mot de passe"
                        ForeColor="red"
                        runat="Server">
                    </asp:RequiredFieldValidator>
                </div>
                <div class="col-sm-5">
                     <asp:TextBox ID="txt_pass2"  class="form-control" runat="server" TextMode="Password" placeholder="Confirmation mot de passe"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txt_pass1" ControlToValidate="txt_pass2" 
                        ValidationGroup="inscriptiongrp"
                        ErrorMessage="Entrez à nouveau le mot de passe" ForeColor="Orange" 
                        Display="Dynamic">Les champs relatifs au mot de passe sont diffèrents
                    </asp:CompareValidator>
                </div>
                <div class="col-sm-10"></div>
                <div class="col-sm-5">
                     Sexe: <br />
                   <asp:RadioButtonList ID="RadioButtonList1" RepeatColumns="1"
                    RepeatDirection="Vertical" RepeatLayout="Table" runat="server" 
                    ValidationGroup="inscriptiongrp">
                   <asp:ListItem>Homme</asp:ListItem>
                   <asp:ListItem>Femme</asp:ListItem>
                   </asp:RadioButtonList>
                   <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator13" ControlToValidate="RadioButtonList1" 
                   Text="Veuillez indiquer votre sexe" ForeColor="red"  ValidationGroup="inscriptiongrp">
                   </asp:RequiredFieldValidator>
                </div>
                <div class="col-sm-5">
                      <asp:TextBox ID="txt_fonc" class="form-control" runat="server" placeholder="Votre fonction / Vous êtes"></asp:TextBox>
                  <asp:RequiredFieldValidator
                        ID="RequiredFieldValidator11"
                        ControlToValidate="txt_fonc"
                        ValidationGroup="inscriptiongrp"
                        ErrorMessage="Veuillez saisir votre fonction (exp:Etudiant , Médeçin , Inemployé ...."
                        ForeColor="red"
                        runat="Server">
                    </asp:RequiredFieldValidator> 
                </div>
                  <div class="col-sm-10"></div>
                  <div class="col-sm-5">
                      Image du profil <asp:FileUpload ID="FileUpload1" runat="server" />
                  </div>
                <div class="col-sm-10"></div>
                <div class="col-sm-10" style="padding-top:20px">
                    <center>
                  <asp:Button ID="Button2" class="bnt theme-btn" runat="server" Text="S'inscrire" OnClick="Button2_Click" CausesValidation="true" ValidationGroup="inscriptiongrp" /> 
                    

                    </center>
                </div>
            </div>
              <div >
                  <img class="img-rounded" src="images/home-5-hero-bg.jpg" height="250" width="400" style="margin: 35px 0px 0px 0px"  />
              </div>
            </div>
             <div class="col-lg-1">
                 </div>
            </div>
     
         </form>


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
            </div>
            <!-- end upper-footer -->
        </div>
        <!-- end container -->

        <div class="row lower-footer">
            <div class="col col-xs-12">
                <p><span><i class="fa fa-heart"></i></span>Les portes de la charité sont <span>difficiles à ouvrir</span> et <span>dures à fermer</span> <span><i class="fa fa-heart"></i></span></p>
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


    <script>

        window.smoothScroll = function (target) {
            var scrollContainer = target;
            do { //find scroll container
                scrollContainer = scrollContainer.parentNode;
                if (!scrollContainer) return;
                scrollContainer.scrollTop += 1;
            } while (scrollContainer.scrollTop == 0);

            var targetY = 0;
            do { //find the top of target relatively to the container
                if (target == scrollContainer) break;
                targetY += target.offsetTop;
            } while (target = target.offsetParent);

            scroll = function (c, a, b, i) {
                i++; if (i > 30) return;
                c.scrollTop = a + (b - a) / 30 * i;
                setTimeout(function () { scroll(c, a, b, i); }, 20);
            }
            // start scrolling
            scroll(scrollContainer, scrollContainer.scrollTop, targetY-180, 0);
        }


    </script>
    
</body>

</html>
