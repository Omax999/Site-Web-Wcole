﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Ecoule.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="bootstrap.min.css" />
    <!--<link rel="stylesheet" href="Style/StylePageHome.css" />-->
    <style>
        body {
            font-family: "Poppins", sans-serif;
            height: 100vh;
            background-image: url("Style/back_page1.jpg");
        }
        
        a {
            color: #92badd;
            display: inline-block;
            text-decoration: none;
            font-weight: 400;
        }

        .wrapper {
            display: flex;
            align-items: center;
            flex-direction: column;
            justify-content: center;
            width: 100%;
            min-height: 100%;
            padding: 20px;
        }

        #formContent {
            border-radius: 10px 10px 10px 10px;
            background: #fff;
            padding: 30px;
            width: 90%;
            max-width: 450px;
            position: relative;
            padding: 0px;
            box-shadow: 0 30px 60px 0 rgba(0,0,0,0.5);
            text-align: center;
        }

        #formFooter {
            background-color: #f6f6f6;
            border-top: 1px solid #dce8f1;
            padding: 25px;
            text-align: center;
            border-radius: 0 0 10px 10px;
        }

        input[type=button], input[type=submit], input[type=reset] {
            background-color: #56baed;
            border: none;
            color: white;
            padding: 15px 80px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            text-transform: uppercase;
            font-size: 13px;
            box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4);
            border-radius: 5px 5px 5px 5px;
            margin: 5px 20px 40px 20px;
            transition: all 0.3s ease-in-out;
        }

        input[type=button]:hover, input[type=submit]:hover, input[type=reset]:hover {
            background-color: #39ace7;
        }

        input[type=button]:active, input[type=submit]:active, input[type=reset]:active {
            transform: scale(0.95);
        }

        input[type=text], input[type=password] {
            background-color: #f6f6f6;
            width: 80%;
            color: #0d0d0d;
            padding: 15px 32px;
            text-align: center;
            padding-left: 80px;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 5px;
            margin-right: 0;
            border: 2px solid #f6f6f6;
            transition: all 0.5s ease-in-out;
            border-top-left-radius: 5px;
            border-bottom-left-radius: 5px;
        }

        input[type=text]:focus {
            background-color: #fff;
            border-bottom: 2px solid #5fbae9;
        }

        input[type=text]:placeholder {
            color: #cccccc;
        }

        .fadeInDown {
            animation-name: fadeInDown;
            animation-duration: 1s;
            animation-fill-mode: both;
        }

        @keyframes fadeInDown {
            0% {
                opacity: 0;
                transform: translate3d(0, -100%, 0);
            }

            100% {
                opacity: 1;
                transform: none;
            }
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }

            to {
                opacity: 1;
            }
        }

        .fadeIn {
            opacity: 0;
            animation: fadeIn ease-in 1s;
            animation-fill-mode: forwards;
        }

        .fadeIn.first {
            animation-delay: 0.4s;
        }

        .fadeIn.second {
            animation-delay: 0.6s;
        }

        .fadeIn.third {
            animation-delay: 0.8s;
        }

        .fadeIn.fourth {
            animation-delay: 1s;
        }

        .underlineHover:after {
            display: block;
            left: 0;
            bottom: -10px;
            width: 0;
            height: 2px;
            background-color: #56baed;
            content: "";
            transition: width 0.2s;
        }

        .underlineHover:hover {
            color: #0d0d0d;
            text-decoration: none;
        }

        .underlineHover:hover:after {
            width: 100%;
        }

        *:focus {
            outline: none;
        }

        label {
            position: relative;
            top: -1px;
            border: solid rgba(000,000,000, 0.7);
            padding: 12px 10px;
            margin-top: 3px;
            border: 2px solid #f6f6f6;
            border-top-right-radius: 5px;
            border-bottom-right-radius: 5px;
            border-left: none;
            background-color: #f6f6f6;
            width:10%;
        }

        #show:hover {
            cursor:pointer;
        }

        #hide:hover {
            cursor:pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper fadeInDown">
            <div id="formContent">
                <div class="fadeIn">
                    <!--icon-->
                    <img src="icons/person-fill.svg" height="70px"/>
                </div>
                <span id="msg" runat="server" class="fadeIn first" style="color:red;"></span>
                <!-- Login -->
                <input type="text" id="email" runat="server" required class="fadeIn second" placeholder="Email"><label for="email"><img src="icons/email.png" height="30px" class="fadeIn second"/></label>
                <input type="password" id="password" runat="server" required class="fadeIn third" name="login" placeholder="Mot de Passe"><label for="password"><img id="show" src="icons/view.png" height="30px class="fadeIn third"/></label>
                <asp:Button id="btn_connecter" runat="server" Text="Connecter" OnClick="btn_connecter_Click"/>
                <!-- Mot de Passe Oblier -->
                <div id="formFooter">
                    <!--<a class="underlineHover" href="#">Mot de Passe Oblié?</a>-->
                </div>
            </div>
        </div>


        <script src="JS/JavaScriptPageHome.js"></script>
    </form>
</body>
</html>
