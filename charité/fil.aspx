<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fil.aspx.cs" Inherits="charité.fil" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="This is social network html5 template available in themeforest......" />
    <meta name="keywords" content="Social Network, Social Media, Make Friends, Newsfeed, Profile Page" />
    <meta name="robots" content="index, follow" />
    <title>Fil d'actualités</title>

    <!-- Stylesheets
    ================================================= -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/ionicons.min.css" />
    <link rel="stylesheet" href="css/font-awesome.min.css" />
    <link href="css/emoji.css" rel="stylesheet">
    <link href="css/ionicons.min.css" rel="stylesheet">

    <!--Favicon-->
    <link rel="shortcut icon" type="image/png" href="images/fav.png" />


    <style>
        .post-content .post-container {
            padding: 20px;
        }

        .post-content img.post-image, video.post-video, .google-maps {
            width: 100%;
            height: auto;
        }

        .carousel-inner > .item > a > img, .carousel-inner > .item > img, .img-responsive, .thumbnail a > img, .thumbnail > img {
            display: block;
            max-width: 100%;
            height: auto;
        }

        ::after, ::before {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        img {
            border: 0;
        }

        .profile-card {
            background: linear-gradient(to bottom, rgba(39,170,225,.8), rgba(28,117,188,.8)), url(../images/covers/1.jpg) no-repeat;
            background-size: cover;
            width: 100%;
            min-height: 90px;
            border-radius: 4px;
            padding: 10px 20px;
            color: #fff;
            margin-bottom: 40px;
        }

        ::after, ::before {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        ul.online-users {
            padding-left: 20px;
            padding-right: 20px;
            text-align: center;
            margin: 0;
        }

        .list-inline {
            padding-left: 0px;
            margin-left: -5px;
            list-style: none;
        }

        ::after, ::before {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        ul.online-users li span.online-dot {
            background: linear-gradient(to bottom, rgba(141,198,63, 1), rgba(0,148,68, 1));
            border: none;
            height: 12px;
            width: 12px;
            border-radius: 50%;
            position: absolute;
            bottom: -6px;
            border: 2px solid #fff;
            left: 0px;
            right: 0px;
            margin: auto;
        }

        ::after, ::before {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        .ion-thumbsup::before {
            content: "\f251";
        }

        .text-white:hover {
            color: #fff;
        }

        .text-white {
            color: #fff;
        }



        .profile-card img.profile-photo {
            border: 7px solid #fff;
            float: left;
            margin-right: 20px;
            position: relative;
            top: -30px;
            height: 70px;
            width: 70px;
            border-radius: 50%;
        }

        img.profile-photo {
            height: 58px;
            width: 58px;
            border-radius: 50%;
        }

        ul.nav-news-feed li div::after {
            content: "";
            width: 100%;
            height: 1px;
            border-top: 1px solid #f1f2f2;
            position: absolute;
            bottom: -15px;
            left: 0px;
        }

        ul.nav-news-feed li div {
            position: relative;
            margin-left: 30px;
        }

        .create-post {
            width: 100%;
            min-height: 90px;
            padding: 20px;
            margin-bottom: 20px;
            border-bottom: 1px solid #f1f2f2;
        }

        img.profile-photo-md {
            height: 50px;
            width: 50px;
            border-radius: 50%;
        }

        .pull-left {
            float: left;
        }

        img.profile-photo-sm {
            height: 40px;
            width: 40px;
            border-radius: 50%;
        }

        body {
            font-family: "Lato",sans-serif;
            line-height: 26px;
            color: #6d6e71;
            font-size: 12px;
        }

        body {
            font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
            font-size: 14px;
            line-height: 1.4285;
            color: #333;
            background-color: #fff;
        }

        .ion-map::before {
            content: "\f203";
        }

        #page-contents {
            padding: 30px 0 50px;
        }

        ::after, ::before {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        * {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }


        .ion-compose::before {
            content: "\f12c";
        }

        .ion, .ionicons, .ion-alert::before, .ion-alert-circled::before, .ion-android-add::before, .ion-android-add-circle::before, .ion-android-alarm-clock::before, .ion-android-alert::before, .ion-android-apps::before, .ion-android-archive::before, .ion-android-arrow-back::before, .ion-android-arrow-down::before, .ion-android-arrow-dropdown::before, .ion-android-arrow-dropdown-circle::before, .ion-android-arrow-dropleft::before, .ion-android-arrow-dropleft-circle::before, .ion-android-arrow-dropright::before, .ion-android-arrow-dropright-circle::before, .ion-android-arrow-dropup::before, .ion-android-arrow-dropup-circle::before, .ion-android-arrow-forward::before, .ion-android-arrow-up::before, .ion-android-attach::before, .ion-android-bar::before, .ion-android-bicycle::before, .ion-android-boat::before, .ion-android-bookmark::before, .ion-android-bulb::before, .ion-android-bus::before, .ion-android-calendar::before, .ion-android-call::before, .ion-android-camera::before, .ion-android-cancel::before, .ion-android-car::before, .ion-android-cart::before, .ion-android-chat::before, .ion-android-checkbox::before, .ion-android-checkbox-blank::before, .ion-android-checkbox-outline::before, .ion-android-checkbox-outline-blank::before, .ion-android-checkmark-circle::before, .ion-android-clipboard::before, .ion-android-close::before, .ion-android-cloud::before, .ion-android-cloud-circle::before, .ion-android-cloud-done::before, .ion-android-cloud-outline::before, .ion-android-color-palette::before, .ion-android-compass::before, .ion-android-contact::before, .ion-android-contacts::before, .ion-android-contract::before, .ion-android-create::before, .ion-android-delete::before, .ion-android-desktop::before, .ion-android-document::before, .ion-android-done::before, .ion-android-done-all::before, .ion-android-download::before, .ion-android-drafts::before, .ion-android-exit::before, .ion-android-expand::before, .ion-android-favorite::before, .ion-android-favorite-outline::before, .ion-android-film::before, .ion-android-folder::before, .ion-android-folder-open::before, .ion-android-funnel::before, .ion-android-globe::before, .ion-android-hand::before, .ion-android-hangout::before, .ion-android-happy::before, .ion-android-home::before, .ion-android-image::before, .ion-android-laptop::before, .ion-android-list::before, .ion-android-locate::before, .ion-android-lock::before, .ion-android-mail::before, .ion-android-map::before, .ion-android-menu::before, .ion-android-microphone::before, .ion-android-microphone-off::before, .ion-android-more-horizontal::before, .ion-android-more-vertical::before, .ion-android-navigate::before, .ion-android-notifications::before, .ion-android-notifications-none::before, .ion-android-notifications-off::before, .ion-android-open::before, .ion-android-options::before, .ion-android-people::before, .ion-android-person::before, .ion-android-person-add::before, .ion-android-phone-landscape::before, .ion-android-phone-portrait::before, .ion-android-pin::before, .ion-android-plane::before, .ion-android-playstore::before, .ion-android-print::before, .ion-android-radio-button-off::before, .ion-android-radio-button-on::before, .ion-android-refresh::before, .ion-android-remove::before, .ion-android-remove-circle::before, .ion-android-restaurant::before, .ion-android-sad::before, .ion-android-search::before, .ion-android-send::before, .ion-android-settings::before, .ion-android-share::before, .ion-android-share-alt::before, .ion-android-star::before, .ion-android-star-half::before, .ion-android-star-outline::before, .ion-android-stopwatch::before, .ion-android-subway::before, .ion-android-sunny::before, .ion-android-sync::before, .ion-android-textsms::before, .ion-android-time::before, .ion-android-train::before, .ion-android-unlock::before, .ion-android-upload::before, .ion-android-volume-down::before, .ion-android-volume-mute::before, .ion-android-volume-off::before, .ion-android-volume-up::before, .ion-android-walk::before, .ion-android-warning::before, .ion-android-watch::before, .ion-android-wifi::before, .ion-aperture::before, .ion-archive::before, .ion-arrow-down-a::before, .ion-arrow-down-b::before, .ion-arrow-down-c::before, .ion-arrow-expand::before, .ion-arrow-graph-down-left::before, .ion-arrow-graph-down-right::before, .ion-arrow-graph-up-left::before, .ion-arrow-graph-up-right::before, .ion-arrow-left-a::before, .ion-arrow-left-b::before, .ion-arrow-left-c::before, .ion-arrow-move::before, .ion-arrow-resize::before, .ion-arrow-return-left::before, .ion-arrow-return-right::before, .ion-arrow-right-a::before, .ion-arrow-right-b::before, .ion-arrow-right-c::before, .ion-arrow-shrink::before, .ion-arrow-swap::before, .ion-arrow-up-a::before, .ion-arrow-up-b::before, .ion-arrow-up-c::before, .ion-asterisk::before, .ion-at::before, .ion-backspace::before, .ion-backspace-outline::before, .ion-bag::before, .ion-battery-charging::before, .ion-battery-empty::before, .ion-battery-full::before, .ion-battery-half::before, .ion-battery-low::before, .ion-beaker::before, .ion-beer::before, .ion-bluetooth::before, .ion-bonfire::before, .ion-bookmark::before, .ion-bowtie::before, .ion-briefcase::before, .ion-bug::before, .ion-calculator::before, .ion-calendar::before, .ion-camera::before, .ion-card::before, .ion-cash::before, .ion-chatbox::before, .ion-chatbox-working::before, .ion-chatboxes::before, .ion-chatbubble::before, .ion-chatbubble-working::before, .ion-chatbubbles::before, .ion-checkmark::before, .ion-checkmark-circled::before, .ion-checkmark-round::before, .ion-chevron-down::before, .ion-chevron-left::before, .ion-chevron-right::before, .ion-chevron-up::before, .ion-clipboard::before, .ion-clock::before, .ion-close::before, .ion-close-circled::before, .ion-close-round::before, .ion-closed-captioning::before, .ion-cloud::before, .ion-code::before, .ion-code-download::before, .ion-code-working::before, .ion-coffee::before, .ion-compass::before, .ion-compose::before, .ion-connection-bars::before, .ion-contrast::before, .ion-crop::before, .ion-cube::before, .ion-disc::before, .ion-document::before, .ion-document-text::before, .ion-drag::before, .ion-earth::before, .ion-easel::before, .ion-edit::before, .ion-egg::before, .ion-eject::before, .ion-email::before, .ion-email-unread::before, .ion-erlenmeyer-flask::before, .ion-erlenmeyer-flask-bubbles::before, .ion-eye::before, .ion-eye-disabled::before, .ion-female::before, .ion-filing::before, .ion-film-marker::before, .ion-fireball::before, .ion-flag::before, .ion-flame::before, .ion-flash::before, .ion-flash-off::before, .ion-folder::before, .ion-fork::before, .ion-fork-repo::before, .ion-forward::before, .ion-funnel::before, .ion-gear-a::before, .ion-gear-b::before, .ion-grid::before, .ion-hammer::before, .ion-happy::before, .ion-happy-outline::before, .ion-headphone::before, .ion-heart::before, .ion-heart-broken::before, .ion-help::before, .ion-help-buoy::before, .ion-help-circled::before, .ion-home::before, .ion-icecream::before, .ion-image::before, .ion-images::before, .ion-information::before, .ion-information-circled::before, .ion-ionic::before, .ion-ios-alarm::before, .ion-ios-alarm-outline::before, .ion-ios-albums::before, .ion-ios-albums-outline::before, .ion-ios-americanfootball::before, .ion-ios-americanfootball-outline::before, .ion-ios-analytics::before, .ion-ios-analytics-outline::before, .ion-ios-arrow-back::before, .ion-ios-arrow-down::before, .ion-ios-arrow-forward::before, .ion-ios-arrow-left::before, .ion-ios-arrow-right::before, .ion-ios-arrow-thin-down::before, .ion-ios-arrow-thin-left::before, .ion-ios-arrow-thin-right::before, .ion-ios-arrow-thin-up::before, .ion-ios-arrow-up::before, .ion-ios-at::before, .ion-ios-at-outline::before, .ion-ios-barcode::before, .ion-ios-barcode-outline::before, .ion-ios-baseball::before, .ion-ios-baseball-outline::before, .ion-ios-basketball::before, .ion-ios-basketball-outline::before, .ion-ios-bell::before, .ion-ios-bell-outline::before, .ion-ios-body::before, .ion-ios-body-outline::before, .ion-ios-bolt::before, .ion-ios-bolt-outline::before, .ion-ios-book::before, .ion-ios-book-outline::before, .ion-ios-bookmarks::before, .ion-ios-bookmarks-outline::before, .ion-ios-box::before, .ion-ios-box-outline::before, .ion-ios-briefcase::before, .ion-ios-briefcase-outline::before, .ion-ios-browsers::before, .ion-ios-browsers-outline::before, .ion-ios-calculator::before, .ion-ios-calculator-outline::before, .ion-ios-calendar::before, .ion-ios-calendar-outline::before, .ion-ios-camera::before, .ion-ios-camera-outline::before, .ion-ios-cart::before, .ion-ios-cart-outline::before, .ion-ios-chatboxes::before, .ion-ios-chatboxes-outline::before, .ion-ios-chatbubble::before, .ion-ios-chatbubble-outline::before, .ion-ios-checkmark::before, .ion-ios-checkmark-empty::before, .ion-ios-checkmark-outline::before, .ion-ios-circle-filled::before, .ion-ios-circle-outline::before, .ion-ios-clock::before, .ion-ios-clock-outline::before, .ion-ios-close::before, .ion-ios-close-empty::before, .ion-ios-close-outline::before, .ion-ios-cloud::before, .ion-ios-cloud-download::before, .ion-ios-cloud-download-outline::before, .ion-ios-cloud-outline::before, .ion-ios-cloud-upload::before, .ion-ios-cloud-upload-outline::before, .ion-ios-cloudy::before, .ion-ios-cloudy-night::before, .ion-ios-cloudy-night-outline::before, .ion-ios-cloudy-outline::before, .ion-ios-cog::before, .ion-ios-cog-outline::before, .ion-ios-color-filter::before, .ion-ios-color-filter-outline::before, .ion-ios-color-wand::before, .ion-ios-color-wand-outline::before, .ion-ios-compose::before, .ion-ios-compose-outline::before, .ion-ios-contact::before, .ion-ios-contact-outline::before, .ion-ios-copy::before, .ion-ios-copy-outline::before, .ion-ios-crop::before, .ion-ios-crop-strong::before, .ion-ios-download::before, .ion-ios-download-outline::before, .ion-ios-drag::before, .ion-ios-email::before, .ion-ios-email-outline::before, .ion-ios-eye::before, .ion-ios-eye-outline::before, .ion-ios-fastforward::before, .ion-ios-fastforward-outline::before, .ion-ios-filing::before, .ion-ios-filing-outline::before, .ion-ios-film::before, .ion-ios-film-outline::before, .ion-ios-flag::before, .ion-ios-flag-outline::before, .ion-ios-flame::before, .ion-ios-flame-outline::before, .ion-ios-flask::before, .ion-ios-flask-outline::before, .ion-ios-flower::before, .ion-ios-flower-outline::before, .ion-ios-folder::before, .ion-ios-folder-outline::before, .ion-ios-football::before, .ion-ios-football-outline::before, .ion-ios-game-controller-a::before, .ion-ios-game-controller-a-outline::before, .ion-ios-game-controller-b::before, .ion-ios-game-controller-b-outline::before, .ion-ios-gear::before, .ion-ios-gear-outline::before, .ion-ios-glasses::before, .ion-ios-glasses-outline::before, .ion-ios-grid-view::before, .ion-ios-grid-view-outline::before, .ion-ios-heart::before, .ion-ios-heart-outline::before, .ion-ios-help::before, .ion-ios-help-empty::before, .ion-ios-help-outline::before, .ion-ios-home::before, .ion-ios-home-outline::before, .ion-ios-infinite::before, .ion-ios-infinite-outline::before, .ion-ios-information::before, .ion-ios-information-empty::before, .ion-ios-information-outline::before, .ion-ios-ionic-outline::before, .ion-ios-keypad::before, .ion-ios-keypad-outline::before, .ion-ios-lightbulb::before, .ion-ios-lightbulb-outline::before, .ion-ios-list::before, .ion-ios-list-outline::before, .ion-ios-location::before, .ion-ios-location-outline::before, .ion-ios-locked::before, .ion-ios-locked-outline::before, .ion-ios-loop::before, .ion-ios-loop-strong::before, .ion-ios-medical::before, .ion-ios-medical-outline::before, .ion-ios-medkit::before, .ion-ios-medkit-outline::before, .ion-ios-mic::before, .ion-ios-mic-off::before, .ion-ios-mic-outline::before, .ion-ios-minus::before, .ion-ios-minus-empty::before, .ion-ios-minus-outline::before, .ion-ios-monitor::before, .ion-ios-monitor-outline::before, .ion-ios-moon::before, .ion-ios-moon-outline::before, .ion-ios-more::before, .ion-ios-more-outline::before, .ion-ios-musical-note::before, .ion-ios-musical-notes::before, .ion-ios-navigate::before, .ion-ios-navigate-outline::before, .ion-ios-nutrition::before, .ion-ios-nutrition-outline::before, .ion-ios-paper::before, .ion-ios-paper-outline::before, .ion-ios-paperplane::before, .ion-ios-paperplane-outline::before, .ion-ios-partlysunny::before, .ion-ios-partlysunny-outline::before, .ion-ios-pause::before, .ion-ios-pause-outline::before, .ion-ios-paw::before, .ion-ios-paw-outline::before, .ion-ios-people::before, .ion-ios-people-outline::before, .ion-ios-person::before, .ion-ios-person-outline::before, .ion-ios-personadd::before, .ion-ios-personadd-outline::before, .ion-ios-photos::before, .ion-ios-photos-outline::before, .ion-ios-pie::before, .ion-ios-pie-outline::before, .ion-ios-pint::before, .ion-ios-pint-outline::before, .ion-ios-play::before, .ion-ios-play-outline::before, .ion-ios-plus::before, .ion-ios-plus-empty::before, .ion-ios-plus-outline::before, .ion-ios-pricetag::before, .ion-ios-pricetag-outline::before, .ion-ios-pricetags::before, .ion-ios-pricetags-outline::before, .ion-ios-printer::before, .ion-ios-printer-outline::before, .ion-ios-pulse::before, .ion-ios-pulse-strong::before, .ion-ios-rainy::before, .ion-ios-rainy-outline::before, .ion-ios-recording::before, .ion-ios-recording-outline::before, .ion-ios-redo::before, .ion-ios-redo-outline::before, .ion-ios-refresh::before, .ion-ios-refresh-empty::before, .ion-ios-refresh-outline::before, .ion-ios-reload::before, .ion-ios-reverse-camera::before, .ion-ios-reverse-camera-outline::before, .ion-ios-rewind::before, .ion-ios-rewind-outline::before, .ion-ios-rose::before, .ion-ios-rose-outline::before, .ion-ios-search::before, .ion-ios-search-strong::before, .ion-ios-settings::before, .ion-ios-settings-strong::before, .ion-ios-shuffle::before, .ion-ios-shuffle-strong::before, .ion-ios-skipbackward::before, .ion-ios-skipbackward-outline::before, .ion-ios-skipforward::before, .ion-ios-skipforward-outline::before, .ion-ios-snowy::before, .ion-ios-speedometer::before, .ion-ios-speedometer-outline::before, .ion-ios-star::before, .ion-ios-star-half::before, .ion-ios-star-outline::before, .ion-ios-stopwatch::before, .ion-ios-stopwatch-outline::before, .ion-ios-sunny::before, .ion-ios-sunny-outline::before, .ion-ios-telephone::before, .ion-ios-telephone-outline::before, .ion-ios-tennisball::before, .ion-ios-tennisball-outline::before, .ion-ios-thunderstorm::before, .ion-ios-thunderstorm-outline::before, .ion-ios-time::before, .ion-ios-time-outline::before, .ion-ios-timer::before, .ion-ios-timer-outline::before, .ion-ios-toggle::before, .ion-ios-toggle-outline::before, .ion-ios-trash::before, .ion-ios-trash-outline::before, .ion-ios-undo::before, .ion-ios-undo-outline::before, .ion-ios-unlocked::before, .ion-ios-unlocked-outline::before, .ion-ios-upload::before, .ion-ios-upload-outline::before, .ion-ios-videocam::before, .ion-ios-videocam-outline::before, .ion-ios-volume-high::before, .ion-ios-volume-low::before, .ion-ios-wineglass::before, .ion-ios-wineglass-outline::before, .ion-ios-world::before, .ion-ios-world-outline::before, .ion-ipad::before, .ion-iphone::before, .ion-ipod::before, .ion-jet::before, .ion-key::before, .ion-knife::before, .ion-laptop::before, .ion-leaf::before, .ion-levels::before, .ion-lightbulb::before, .ion-link::before, .ion-load-a::before, .ion-load-b::before, .ion-load-c::before, .ion-load-d::before, .ion-location::before, .ion-lock-combination::before, .ion-locked::before, .ion-log-in::before, .ion-log-out::before, .ion-loop::before, .ion-magnet::before, .ion-male::before, .ion-man::before, .ion-map::before, .ion-medkit::before, .ion-merge::before, .ion-mic-a::before, .ion-mic-b::before, .ion-mic-c::before, .ion-minus::before, .ion-minus-circled::before, .ion-minus-round::before, .ion-model-s::before, .ion-monitor::before, .ion-more::before, .ion-mouse::before, .ion-music-note::before, .ion-navicon::before, .ion-navicon-round::before, .ion-navigate::before, .ion-network::before, .ion-no-smoking::before, .ion-nuclear::before, .ion-outlet::before, .ion-paintbrush::before, .ion-paintbucket::before, .ion-paper-airplane::before, .ion-paperclip::before, .ion-pause::before, .ion-person::before, .ion-person-add::before, .ion-person-stalker::before, .ion-pie-graph::before, .ion-pin::before, .ion-pinpoint::before, .ion-pizza::before, .ion-plane::before, .ion-planet::before, .ion-play::before, .ion-playstation::before, .ion-plus::before, .ion-plus-circled::before, .ion-plus-round::before, .ion-podium::before, .ion-pound::before, .ion-power::before, .ion-pricetag::before, .ion-pricetags::before, .ion-printer::before, .ion-pull-request::before, .ion-qr-scanner::before, .ion-quote::before, .ion-radio-waves::before, .ion-record::before, .ion-refresh::before, .ion-reply::before, .ion-reply-all::before, .ion-ribbon-a::before, .ion-ribbon-b::before, .ion-sad::before, .ion-sad-outline::before, .ion-scissors::before, .ion-search::before, .ion-settings::before, .ion-share::before, .ion-shuffle::before, .ion-skip-backward::before, .ion-skip-forward::before, .ion-social-android::before, .ion-social-android-outline::before, .ion-social-angular::before, .ion-social-angular-outline::before, .ion-social-apple::before, .ion-social-apple-outline::before, .ion-social-bitcoin::before, .ion-social-bitcoin-outline::before, .ion-social-buffer::before, .ion-social-buffer-outline::before, .ion-social-chrome::before, .ion-social-chrome-outline::before, .ion-social-codepen::before, .ion-social-codepen-outline::before, .ion-social-css3::before, .ion-social-css3-outline::before, .ion-social-designernews::before, .ion-social-designernews-outline::before, .ion-social-dribbble::before, .ion-social-dribbble-outline::before, .ion-social-dropbox::before, .ion-social-dropbox-outline::before, .ion-social-euro::before, .ion-social-euro-outline::before, .ion-social-facebook::before, .ion-social-facebook-outline::before, .ion-social-foursquare::before, .ion-social-foursquare-outline::before, .ion-social-freebsd-devil::before, .ion-social-github::before, .ion-social-github-outline::before, .ion-social-google::before, .ion-social-google-outline::before, .ion-social-googleplus::before, .ion-social-googleplus-outline::before, .ion-social-hackernews::before, .ion-social-hackernews-outline::before, .ion-social-html5::before, .ion-social-html5-outline::before, .ion-social-instagram::before, .ion-social-instagram-outline::before, .ion-social-javascript::before, .ion-social-javascript-outline::before, .ion-social-linkedin::before, .ion-social-linkedin-outline::before, .ion-social-markdown::before, .ion-social-nodejs::before, .ion-social-octocat::before, .ion-social-pinterest::before, .ion-social-pinterest-outline::before, .ion-social-python::before, .ion-social-reddit::before, .ion-social-reddit-outline::before, .ion-social-rss::before, .ion-social-rss-outline::before, .ion-social-sass::before, .ion-social-skype::before, .ion-social-skype-outline::before, .ion-social-snapchat::before, .ion-social-snapchat-outline::before, .ion-social-tumblr::before, .ion-social-tumblr-outline::before, .ion-social-tux::before, .ion-social-twitch::before, .ion-social-twitch-outline::before, .ion-social-twitter::before, .ion-social-twitter-outline::before, .ion-social-usd::before, .ion-social-usd-outline::before, .ion-social-vimeo::before, .ion-social-vimeo-outline::before, .ion-social-whatsapp::before, .ion-social-whatsapp-outline::before, .ion-social-windows::before, .ion-social-windows-outline::before, .ion-social-wordpress::before, .ion-social-wordpress-outline::before, .ion-social-yahoo::before, .ion-social-yahoo-outline::before, .ion-social-yen::before, .ion-social-yen-outline::before, .ion-social-youtube::before, .ion-social-youtube-outline::before, .ion-soup-can::before, .ion-soup-can-outline::before, .ion-speakerphone::before, .ion-speedometer::before, .ion-spoon::before, .ion-star::before, .ion-stats-bars::before, .ion-steam::before, .ion-stop::before, .ion-thermometer::before, .ion-thumbsdown::before, .ion-thumbsup::before, .ion-toggle::before, .ion-toggle-filled::before, .ion-transgender::before, .ion-trash-a::before, .ion-trash-b::before, .ion-trophy::before, .ion-tshirt::before, .ion-tshirt-outline::before, .ion-umbrella::before, .ion-university::before, .ion-unlocked::before, .ion-upload::before, .ion-usb::before, .ion-videocamera::before, .ion-volume-high::before, .ion-volume-low::before, .ion-volume-medium::before, .ion-volume-mute::before, .ion-wand::before, .ion-waterdrop::before, .ion-wifi::before, .ion-wineglass::before, .ion-woman::before, .ion-wrench::before, .ion-xbox::before {
            display: inline-block;
            font-family: "Ionicons";
            speak: none;
            font-style: normal;
            font-weight: normal;
            font-variant: normal;
            text-transform: none;
            text-rendering: auto;
            line-height: 1;
            -webkit-font-smoothing: antialiased;
        }

        .ion-compose::before {
            content: "\f12c";
        }

        .ion-android-person-add::before {
            content: "\f39f";
        }


        .create-post .tools ul.publishing-tools li a:hover {
            color: #27aae1;
        }

        .create-post .tools ul.publishing-tools li a {
            color: #6d6e71;
            font-size: 18px;
        }

        a:hover {
            color: #149ac9;
        }

        a:focus {
            outline: 5px auto -webkit-focus-ring-color;
            outline-offset: -2px;
        }

        a:focus, a:hover {
            color: #23527c;
            text-decoration: underline;
        }

        #chat-block .title {
            background: #8dc63f;
            padding: 2px 20px;
            width: 70%;
            height: 30px;
            border-radius: 15px;
            position: relative;
            margin: 0 auto 20px;
            color: #fff;
            font-size: 14px;
            font-weight: 600;
        }

        #chat-block {
            margin: 0 0 40px 0;
            text-align: center;
        }

        .post-content {
            background: #f8f8f8;
            border-radius: 4px;
            width: 100%;
            border: 1px solid #f1f2f2;
            margin-bottom: 20px;
            overflow: hidden;
            position: relative;
        }

        ul.nav-news-feed i.ion-chatboxes {
            color: #f7941e;
        }

        ul.nav-news-feed li i {
            font-size: 18px;
            margin-right: 15px;
            float: left;
        }

        .ion-chatboxes::before {
            content: "\f11c";
        }

        .ion-thumbsup::before {
            content: "\f251";
        }

        .text-green:hover {
            color: #39b54a;
        }

        .btn.focus, .btn:focus, .btn:hover {
            color: #333;
            text-decoration: none;
        }

        .text-green {
            color: #8dc63f;
        }

        .btn {
            display: inline-block;
            padding: 6px 12px;
            margin-bottom: 0px;
            font-size: 14px;
            font-weight: 400;
            line-height: 1.4285;
            text-align: center;
            white-space: nowrap;
            vertical-align: middle;
            -ms-touch-action: manipulation;
            touch-action: manipulation;
            cursor: pointer;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            background-image: none;
            border: 1px solid transparent;
            border-radius: 4px;
        }

        .create-post .form-group {
            margin-bottom: 0px;
            display: inline-flex;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .ion-map::before {
            content: "\f203";
        }



        .create-post .tools ul.publishing-tools {
            display: inline-block;
            text-align: left;
            margin: 0;
            padding: 5px 0;
        }

        .list-inline {
            padding-left: 0px;
            margin-left: -5px;
            list-style: none;
        }

        .static {
            position: static;
        }
        /*@media all and (min-width:992px)*/
        .col-md-3 {
            width: 25%;
        }
        /*@media all and (min-width:992px)*/
        .col-md-1, .col-md-10, .col-md-11, .col-md-12, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9 {
            float: left;
        }

        .col-lg-1, .col-lg-10, .col-lg-11, .col-lg-12, .col-lg-2, .col-lg-3, .col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-md-1, .col-md-10, .col-md-11, .col-md-12, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-sm-1, .col-sm-10, .col-sm-11, .col-sm-12, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-xs-1, .col-xs-10, .col-xs-11, .col-xs-12, .col-xs-2, .col-xs-3, .col-xs-4, .col-xs-5, .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9 {
            position: relative;
            min-height: 1px;
            padding-right: 10px;
            padding-left: 10px;
        }

        ul.nav-news-feed i.ion-ios-people {
            color: #662d91;
        }

        .ion-ios-people::before {
            content: "\f47c";
        }

        ul.nav-news-feed li {
            list-style: none;
            display: block;
            padding: 15px 0;
        }

        Style inline {
            top: -18px;
            width: 154.93px;
            position: fixed;
        }

        .ion-ios-videocam::before {
            content: "\f4cd";
        }

        .follow-user div::after {
            content: "";
            background: none;
            border-top: 1px solid #f1f2f2;
            position: absolute;
            width: 100%;
            left: 0px;
            bottom: -10px;
        }

        .follow-user div {
            margin-left: 50px;
            position: relative;
        }

        ul.online-users li {
            list-style: none;
            position: relative;
            margin: 3px auto !important;
            padding-left: 3px;
            padding-right: 3px;
        }

        ul.online-users {
            padding-left: 20px;
            padding-right: 20px;
            text-align: center;
            margin: 0;
        }

        .follow-user {
            margin-bottom: 20px;
        }

        .line-divider {
            background: none;
            height: 1px;
            border-top: 1px solid #e6e6e6;
            width: 100%;
            margin: auto;
            margin-bottom: 10px;
        }

        .em-anguished {
            background-image: url("emoji/anguished.png");
        }

        .em {
            height: 1.5em;
            width: 1.5em;
            background-position: center;
            background-repeat: no-repeat;
            background-size: contain;
            display: inline-block;
            vertical-align: middle;
        }

        .post-content .post-container .post-detail .post-text {
            line-height: 24px;
            margin: 0;
        }

        .btn-primary:hover {
            background: #149AC9;
            transition: all 1s;
        }

        .btn-primary:hover {
            color: #fff;
            background-color: #286090;
            border-color: #204d74;
        }

        .btn-primary.focus, .btn-primary:focus {
            color: #fff;
            background-color: #286090;
            border-color: #122b40;
        }

        .btn.active.focus, .btn.active:focus, .btn.focus, .btn.focus:active, .btn:focus:active, .btn:focus {
            outline: 5px auto -webkit-focus-ring-color;
            outline-offset: -2px;
        }

        .pull-right {
            float: right;
        }

        .btn-primary {
            background: #27aae1;
            padding: 5px 25px;
            border: none;
            font-size: 14px;
            border-radius: 4px;
            color: #fff;
            position: relative;
            font-weight: 600;
            outline: none;
            border-radius: 30px;
        }

        .pull-right {
            float: right !important;
        }

        .btn-primary {
            color: #fff;
            background-color: #337ab7;
            border-color: #2e6da4;
        }

        button, input, select, textarea {
            font-family: inherit;
            font-size: inherit;
            line-height: inherit;
        }

            button, html input[type=button], input[type=reset], input[type=submit] {
                -webkit-appearance: button;
                cursor: pointer;
            }

        button, select {
            text-transform: none;
        }

        button {
            overflow: visible;
        }

        button, input, optgroup, select, textarea {
            margin: 0;
            font: inherit;
            color: inherit;
        }


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
   
    <!-- Header
    ================================================= -->
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
    <!--Header End-->
    <div>
        <div id="page-contents">
            <div class="container">
                <div class="row">

                    <!-- Newsfeed Common Side Bar Left
          ================================================= -->
                    <div class="col-md-3 static">
                        <div class="profile-card">
                  <asp:Image ID="ProfileImage" class="profile-photo" runat ="server"/>

                            <h5><asp:Label ID="lbl_nom" runat="server" text="-" CssClass="text-white"></asp:Label></h5>
                            <a href="#" class="text-white"><i class="ion ion-android-person-add"></i><asp:Label ID="lbl_nb_collaborateurs" runat="server" text="0"></asp:Label> Collaborateurs</a>
                        </div>
                        <!--profile card ends-->
                        <ul class="nav-news-feed">
                            <li><i class="icon ion-ios-paper"></i>
                                <div><a href="fil.aspx">Mes Publications</a></div>
                            </li>
                           
                            <li><i class="icon ion-ios-people-outline"></i>
                                <div><a href="mesCollaborateurs.aspx">Mes collaborateurs</a></div>
                            </li>
                            <li><i class="icon ion-chatboxes"></i>
                                <div><a href="chat.aspx">Messages</a></div>
                            </li>
                           
                        </ul>
                        <!--news-feed links ends-->
                        
                        <!--chat block ends-->
                    </div>
                    <div class="col-md-7">

                        <!-- Post Create Box
            ================================================= -->
                        <div class="create-post">
                            <div class="row">
                                <div class="col-md-7 col-sm-7">
                                    <div class="form-group">
                                        
                                          <asp:Image ID="postimage" class="profile-photo" runat ="server" CssClass="profile-photo-md"/>
                                        <textarea name="texts" id="exampleTextarea" cols="30" rows="1" class="form-control" placeholder="Exprimez-vous" style="margin-left: 10px"></textarea>
                                    </div>
                                </div>
                                <div class="col-md-5 col-sm-5">
                                    <div class="tools">
                                        <ul class="publishing-tools list-inline">
                                            <li><a href="#"><i class="ion-compose"></i></a></li>
                                            <li><a href="#"><i class="ion-images"></i></a></li>
                                            <li><a href="#"><i class="ion-ios-videocam"></i></a></li>
                                            <li><a href="#"><i class="ion-map"></i></a></li>
                                        </ul>
                                        <button class="btn btn-primary pull-right">Publier</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Post Create Box End-->

                        <!-- Post Content
            ================================================= -->
                        <div class="post-content">
                            <asp:Label ID="post" runat="server"></asp:Label>
                        </div>

                       

                   
                </div>
            </div>
        </div>
    </div>




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

       

        <!--  actbut -->
        <div  style="position: fixed; bottom: 0%; left: 1%; right: 0%; top: 85%; width:20%; z-index:100;" >
             <img id="popup" onclick="div_show()" src="images/actbtn.png" width="50" class="img-circle shadow img-responsive"  style="cursor: pointer; height:auto"  />
             <div>
             <p onclick="div_show()"> Créer</p>  
             </div>
         </div>


    <!-- Footer
    ================================================= -->
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

</form>

    <!-- Scripts
    ================================================= -->

    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.sticky-kit.min.js"></script>
    <script src="js/jquery.scrollbar.min.js"></script>
    <script src="js/script.js"></script>
    <script src="http://maps.google.com/maps/api/js?key=AIzaSyAt51VorXEP-HH6J1ib2TZFSA_OkHv6pC0"></script>

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
