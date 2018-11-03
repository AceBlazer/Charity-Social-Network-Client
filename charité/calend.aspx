<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="calend.aspx.cs" Inherits="charité.calend" %>

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
    <title>Profil</title>

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
    <%--<form id="form1" runat="server"  class="form">--%>
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
                                        <h5>
                                            <img src="images/email-icon.png" alt>
                                            Email</h5>
                                        <p>Sellami.Saanoun@gmail.com</p>
                                    </div>
                                </div>
                                <div class="sidebar">
                                    <div class="widget search-widget">
                                        <form action="#" runat="server"  class="form">
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
                                    <li><a href="calend.aspx">Mon Agenda</a></li>
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
                       <!-- connecté en tt que -->
                            <li> 
                                      <h6>  <asp:Button ID="Button1" runat="server" Text="Se déconnecter" CssClass="boutondec" OnClick="btn_deconnecter_Click" /> </h6>                                       <h5>     
            	                       <img  src="images/volunteer-single/volunteers/img-1.jpg"  class="img-circle" height="40" width="40" />
                                       <a href="profil1.aspx" >Daenerys Targaryen</a> 
                                       </h5>            
                                    </li>

                             <!-- notif -->



                            <li class="dropdown dropdown-extended dropdown-notification" id="header_notification_bar">
                                <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true" aria-expanded="false">
                                    <i class="fa fa-bell-o"></i>
                                    <asp:ScriptManager ID="sm" runat="server" />
                                                                        <asp:Timer ID="Timer1" runat="server" Interval="10000" OnTick="Timer1_Tick"></asp:Timer>

                                    <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">
                                        <Triggers>
                                             <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                                            </Triggers>
                                        <ContentTemplate>
                                    
                                            <asp:Label ID="lbl_nbnotif2" runat="server" Text=""></asp:Label>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="img-rounded" style="padding: 10px; background-color: #fb7035">
                                        <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                                            <Triggers>
                                             <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                                            </Triggers>
                                            <ContentTemplate>
                                        <h3><span><asp:Label ID="lbl_nbnotif" runat="server" Text=""></asp:Label></span> notifications </h3>
                                        <hr />
                                                </ContentTemplate>
                                             </asp:UpdatePanel>
                                    </li>
                                    <li>
                                        <div class="img-rounded" style="position: relative; overflow: hidden; width: auto; height: 250px; padding: 10px;">
                                            <ul class="img-rounded" style="height: 250px; overflow-y: scroll; width: auto;" data-handle-color="#637283" data-initialized="1">
                                                <li>
                                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                                                        <Triggers>
                                                            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                                                        </Triggers>
                                                        <ContentTemplate>
                                                            <asp:Label ID="lbl_notif" runat="server" Text=""></asp:Label>
                                                        </ContentTemplate>

                                                    </asp:UpdatePanel>
                                                   
                                                </li>

                                            </ul>


                                        </div>
                                    </li>
                                </ul>
                            </li>


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
                    <h1><span> Mon Agenda</span> </h1>
                    <ol class="breadcrumb">
                        <li><a href="profil.aspx">Profil</a></li>
                        <li class="active">Mon Agenda</li>
                    </ol>
                </div>
            </div> <!-- end container -->
        </section>
        <!-- end page-title -->

        <!--agenda-->
       <h2> <center>Google Calendar API - Mon Agenda</center> </h2>

    <!--Add buttons to initiate auth sequence and sign out-->
        <center>
    <button id="authorize-button" class="btn theme-btn" style="display: none;">Autoriser</button>
    <button id="signout-button" class="btn theme-btn" style="display: none;">Se déconnecter</button>
            </center>
        <hr />
    <pre id="content"></pre>
        <script type="text/javascript">
      // Client ID and API key from the Developer Console
        var CLIENT_ID = '767999389552-m1vht5hddgj8ov7bubchj85qjgpao7hc.apps.googleusercontent.com';

      // Array of API discovery doc URLs for APIs used by the quickstart
      var DISCOVERY_DOCS = ["https://www.googleapis.com/discovery/v1/apis/calendar/v3/rest"];

      // Authorization scopes required by the API; multiple scopes can be
      // included, separated by spaces.
      var SCOPES = "https://www.googleapis.com/auth/calendar.readonly";

      var authorizeButton = document.getElementById('authorize-button');
      var signoutButton = document.getElementById('signout-button');

      /**
       *  On load, called to load the auth2 library and API client library.
       */
      function handleClientLoad() {
        gapi.load('client:auth2', initClient);
      }

      /**
       *  Initializes the API client library and sets up sign-in state
       *  listeners.
       */
      function initClient() {
        gapi.client.init({
          discoveryDocs: DISCOVERY_DOCS,
          clientId: CLIENT_ID,
          scope: SCOPES
        }).then(function () {
          // Listen for sign-in state changes.
          gapi.auth2.getAuthInstance().isSignedIn.listen(updateSigninStatus);

          // Handle the initial sign-in state.
          updateSigninStatus(gapi.auth2.getAuthInstance().isSignedIn.get());
          authorizeButton.onclick = handleAuthClick;
          signoutButton.onclick = handleSignoutClick;
        });
      }

      /**
       *  Called when the signed in status changes, to update the UI
       *  appropriately. After a sign-in, the API is called.
       */
      function updateSigninStatus(isSignedIn) {
        if (isSignedIn) {
          authorizeButton.style.display = 'none';
          signoutButton.style.display = 'block';
          listUpcomingEvents();
        } else {
          authorizeButton.style.display = 'block';
          signoutButton.style.display = 'none';
        }
      }

      /**
       *  Sign in the user upon button click.
       */
      function handleAuthClick(event) {
        gapi.auth2.getAuthInstance().signIn();
      }

      /**
       *  Sign out the user upon button click.
       */
      function handleSignoutClick(event) {
        gapi.auth2.getAuthInstance().signOut();
      }

      /**
       * Append a pre element to the body containing the given message
       * as its text node. Used to display the results of the API call.
       *
       * @param {string} message Text to be placed in pre element.
       */
      function appendPre(message) {
        var pre = document.getElementById('content');
        var textContent = document.createTextNode(message + '\n');
        pre.appendChild(textContent);
      }

      /**
       * Print the summary and start datetime/date of the next ten events in
       * the authorized user's calendar. If no events are found an
       * appropriate message is printed.
       */
      function listUpcomingEvents() {
        gapi.client.calendar.events.list({
          'calendarId': 'primary',
          'timeMin': (new Date()).toISOString(),
          'showDeleted': false,
          'singleEvents': true,
          'maxResults': 10,
          'orderBy': 'startTime'
        }).then(function(response) {
          var events = response.result.items;
          appendPre('évènements Prochains:');

          if (events.length > 0) {
            for (i = 0; i < events.length; i++) {
              var event = events[i];
              var when = event.start.dateTime;
              if (!when) {
                when = event.start.date;
              }
              appendPre(event.summary + ' (' + when + ')')
            }
          } else {
            appendPre('Votre google calendar ne contient pas des évènements prochains.');
          }
        });
      }

    </script>
        <script async defer src="https://apis.google.com/js/api.js"
      onload="this.onload=function(){};handleClientLoad()"
      onreadystatechange="if (this.readyState === 'complete') this.onload()">
    </script>
        <!-- end agenda-->

        <!-- popup -->
        <div id="abc" style="z-index:100;">
            <!-- Popup Div Starts Here -->
            <div id="popupContact" class="center img-rounded img-responsive"  style="padding: 10px; border: 5px solid #808080; background-color:#FFFFFF; z-index:999; left: 30%; right: 30%; top:18%; bottom: 30%; position: center; height:450px">
                <!-- Contact Us Form -->
               <%-- <form  id="form1" name="creer" runat="server">--%>
                    <img id="close" src="images/3.png" width="30" height="30" class="img-circle" style="z-index: 999;">
                    <div>
                  <center>  <h2>Créer</h2>  </center>
                        <hr />
                        <div class="col-lg-12" style="overflow-y:scroll; overflow-x:scroll" >
                            <div class="col-lg-4">
                                Type: 
                                <asp:DropDownList ID="DropDownList4" runat="server">
                                    <asp:ListItem Selected="True" >Statut</asp:ListItem>
                                    <asp:ListItem>Evènement</asp:ListItem>
                                    <asp:ListItem>Demande d&#39;aide</asp:ListItem>
                                    <asp:ListItem>Offre d&#39;aide</asp:ListItem>
                                    <asp:ListItem>Activité</asp:ListItem>
                                    <asp:ListItem>Rapport</asp:ListItem>
                                    <asp:ListItem>Question</asp:ListItem>
                                    <asp:ListItem>Proposition</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-lg-4">
                                Titre
                                <asp:TextBox ID="TextBox2" class="form-control"  runat="server" ></asp:TextBox>
                            </div>
                            <div class="col-lg-4">
                                Ville de départ
                               <asp:TextBox ID="TextBox3" class="form-control"  runat="server" ></asp:TextBox>
                            </div>
                            <div class="col-lg-12"></div>
                            <div class="col-lg-4">
                                Ville d'arrivée
                               <asp:TextBox ID="TextBox4" class="form-control"  runat="server" ></asp:TextBox>
                            </div>
                            <div class="col-lg-4">
                                Date de départ 
                                <asp:TextBox ID="TextBox5" class="form-control" TextMode="Date" runat="server" ></asp:TextBox>
                            </div>
                            <div class="col-lg-4">
                                Date d'arrivée 
                                <asp:TextBox ID="TextBox6" class="form-control" TextMode="Date" runat="server" ></asp:TextBox>
                            </div>
                            <div class="col-lg-12"></div>
                            <div class="col-lg-4">
                                Description 
                                <asp:TextBox ID="TextBox7" class="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-lg-4">
                                Images 
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </div>
                            <div class="col-lg-4">
                                Vidéos 
                                <asp:FileUpload ID="FileUpload2" runat="server" />
                            </div>
                            <div class="col-lg-12"></div>
                            <div class="col-lg-4">
                                Pièces jointes 
                                <asp:FileUpload ID="FileUpload3" runat="server" />
                            </div>
                            <div class="col-lg-4">
                                Calendrier partagé 
                            </div>
                            <div class="col-lg-4">
                                Carte partagée 
                                <asp:ImageMap ID="ImageMap1" runat="server"></asp:ImageMap>
                            </div>
                            <div class="col-lg-12"></div>
                            <div class="col-lg-4">
                                Invités
                            </div>
                            <div class="col-lg-4">
                                Visibilité 
                                <asp:DropDownList ID="DropDownList5" runat="server">
                                    <asp:ListItem Selected="True" >Public</asp:ListItem>
                                    <asp:ListItem>Collaborateurs uniquement</asp:ListItem>
                                    <asp:ListItem>Moi uniquement</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-lg-4">
                                types des dons 
                                <asp:DropDownList ID="DropDownList6" runat="server">
                                    <asp:ListItem Selected="True" >Argent</asp:ListItem>
                                    <asp:ListItem>Nombre d'objets</asp:ListItem>
                                    <asp:ListItem>Pourcentage</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-lg-12"></div>
                            <div class="col-lg-4">
                                Valeur initiale des dons 
                                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-lg-4">
                                Valeur attendue des dons 
                                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-lg-4">
                                Tags / mots clés 
                                <%--<asp:TextBox ID="tags" runat="server"></asp:TextBox>--%>
                            </div>
                        </div>
                    </div>
               <%-- </form>--%>
            </div>
            <!-- Popup Div Ends Here -->
        </div>

        <!-- chat -->
        <div id="chat" class="sidebar" style="z-index:100">
		<div id="scroller" class="inactive">
			<div class="container">
				<div class="row row-header">
					<div class="header">
						<div class="content">2</div>
					</div>
				</div>
				<div class="row row-body">
					<ul class="dropdown">
						<li>Muhammad Ali Akbar</li>
						<li>Andras Torma</li>
					</ul>
				</div>
			</div>
		</div>
		<ul id="tab-list">
			<li id="user-tab" class="tab">
				<div class="container">
					<div class="row row-header" style="background-color: #f46220">
						<div class="header" >
							<div class="content">Chat</div>
						</div>
					</div>
					<div class="row row-body">
						<div class="body">
							<div class="content">
								<ul id="user-list" class="users">
									<li class="user">
										<div class="media left">
											<div class="media-aside"><img class="avatar" src="assets/img/avatar.png" alt="avatar"></div>
											<div class="media-body">Talha Akbar</div>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="row row-footer">
						<div class="footer">
							<div class="content">
								<input type="text" class="form-control" placeholder="Search">
							</div>
						</div>
					</div>
				</div>
			</li>
			<li class="tab inactive">
				<div class="container">
					<div class="row row-header">
						<div class="header">
							<div class="content">Talha Akbar</div>
						</div>
					</div>
					<div class="row row-body">
						<div class="body">
							<div class="content">
								<ul class="messages">
                                   <!-- <li class="date">Today at 12:58 pm</li> -->

                                    
                                  <asp:Timer ID="Timer2" runat="server" Interval="10000" OnTick="Timer2_Tick"></asp:Timer> 
                                    <asp:UpdatePanel ID="UpdatePanel4" runat="server" UpdateMode="Conditional">
                                        <Triggers>
                                             <asp:AsyncPostBackTrigger ControlID="Timer2" EventName="Tick" />
                                            </Triggers>
                                        <ContentTemplate>
                                    
                                            <asp:Label ID="lbl_message" runat="server" Text=""></asp:Label>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
								</ul>
							</div>
						</div>
					</div>
					<div class="row row-footer">
						<div class="footer">
							<div class="content">
								<textarea rows="1" class="form-control" data-autosize-on="true" style="overflow: hidden; word-wrap: break-word; height: 30px;"></textarea>
							</div>
						</div>
					</div>
				</div>
			</li>
		</ul>
	</div>

        <!--  actbut -->
        <div  style="position: fixed; bottom: 0%; left: 1%; right: 0%; top: 85%; width:20%; z-index:100;" >
             <img id="popup" onclick="div_show()" src="images/actbtn.png" width="50" class="img-circle shadow img-responsive"  style="cursor: pointer; height:auto"  />
             <div>
             <p onclick="div_show()"> Créer</p>  
             </div>
         </div>

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
                                        <input type="text" class="form-control" placeholder="votre nom" >
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

    <!-- Google map API -->
    <script src="http://maps.google.com/maps/api/js?key=AIzaSyAt51VorXEP-HH6J1ib2TZFSA_OkHv6pC0"></script>



    <!-- Custom script for this template -->
    <script src="js/script.js"></script>
</body>

</html>






