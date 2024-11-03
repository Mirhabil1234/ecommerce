<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Login</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="static/images/logo.png"/>
    <link rel="stylesheet" type="text/css" href="static/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="static/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="static/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
    <link rel="stylesheet" type="text/css" href="static/vendor/animate/animate.css">
    <link rel="stylesheet" type="text/css" href="static/vendor/css-hamburgers/hamburgers.min.css">
    <link rel="stylesheet" type="text/css" href="static/vendor/animsition/css/animsition.min.css">
    <link rel="stylesheet" type="text/css" href="static/vendor/select2/select2.min.css">
    <link rel="stylesheet" type="text/css" href="static/vendor/daterangepicker/daterangepicker.css">
    <link rel="stylesheet" type="text/css" href="static/css/util.css">
    <link rel="stylesheet" type="text/css" href="static/css/main.css">

    <link rel="stylesheet" href="static/css/bootstrap.min.css">
    <link rel="stylesheet" href="static/css/magnific-popup.css">
    <link rel="stylesheet" href="static/css/jquery-ui.css">
    <link rel="stylesheet" href="static/css/owl.carousel.min.css">
    <link rel="stylesheet" href="static/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="static/css/aos.css">
    <link rel="stylesheet" href="static/css/style.css">

    <style>
        body {
            background: linear-gradient(135deg, #6c63ff, #b8a5ff); /* Interesting gradient background */
            font-family: 'Arial', sans-serif; /* Modern font */
            height: 100vh; /* Full height */
            display: flex;
            align-items: center; /* Center vertically */
            justify-content: center; /* Center horizontally */
            margin: 0; /* Reset default margin */
        }

        .container-login100 {
            background-color: #ffffff; /* White background for the login box */
            border-radius: 8px; /* Rounded corners */
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1); /* Subtle shadow */
            padding: 40px; /* Padding inside the box */
            max-width: 400px; /* Max width for the login box */
            width: 100%; /* Responsive width */
        }

        .login100-form-title {
            color: #333333; /* Dark text color for title */
            font-size: 24px; /* Larger font size for title */
            margin-bottom: 30px; /* Margin below title */
        }

        .input100 {
            border: 1px solid #ced4da; /* Standard border color */
            border-radius: 5px; /* Rounded input corners */
            padding: 15px; /* Padding for inputs */
            width: 100%; /* Full width */
            margin-bottom: 20px; /* Space between inputs */
        }

        .login100-form-btn {
            background-color: #6c63ff; /* Primary button color */
            border: none; /* No border */
            border-radius: 5px; /* Rounded button corners */
            padding: 15px; /* Padding for button */
            width: 100%; /* Full width */
            color: #ffffff; /* White text color */
            transition: background-color 0.3s; /* Transition for hover effect */
        }

        .login100-form-btn:hover {
            background-color: #5a54e5; /* Darker shade on hover */
        }

        .txt1 {
            color: #999999; /* Light gray for additional text */
        }

        .txt1 a {
            color: #6c63ff; /* Primary color for links */
            text-decoration: underline; /* Underline for links */
        }
    </style>
</head>

<body>
<div class="limiter">
    <div class="container-login100">
        <div class="shadow-lg p-2 rounded" data-aos="fade-up">
            <div class="wrap-login100 p-t-50 p-b-90">
                <form action="login?status=typed" method="post" class="login100-form validate-form flex-sb flex-w">
                    <span class="login100-form-title p-b-51">Login</span>

                    ${alert}

                    <div class="wrap-input100 validate-input" data-validate="Username is required">
                        <input class="input100" type="text" name="username" placeholder="Username">
                    </div>

                    <div class="wrap-input100 validate-input" data-validate="Password is required">
                        <input class="input100" type="password" name="password" placeholder="Password">
                    </div>

                    <div class="flex-sb-m w-full p-t-3 p-b-24">
                        <div class="contact100-form-checkbox">
                            <input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me-checkbox">
                            <label class="label-checkbox100" for="ckb1">Remember me</label>
                        </div>

                        <div>
                            <a href="#" class="txt1">Forgot?</a>
                        </div>
                    </div>

                    <div class="container-login100-form-btn m-t-17">
                        <button type="submit" class="login100-form-btn">Login</button>
                    </div>
                </form>
            </div>

            <div class="text-center">
                <p class="txt1" style="color: #999999">
                    Don't have an account?
                    <a href="register.jsp" class="txt1">Create here</a>
                </p>
            </div>
        </div>
    </div>
</div>

<div id="dropDownSelect1"></div>

<script src="static/vendor/jquery/jquery-3.2.1.min.js"></script>
<script src="static/vendor/animsition/js/animsition.min.js"></script>
<script src="static/vendor/bootstrap/js/popper.js"></script>
<script src="static/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="static/vendor/select2/select2.min.js"></script>
<script src="static/vendor/daterangepicker/moment.min.js"></script>
<script src="static/vendor/daterangepicker/daterangepicker.js"></script>
<script src="static/vendor/countdowntime/countdowntime.js"></script>

<script src="static/js/jquery-3.3.1.min.js"></script>
<script src="static/js/jquery-ui.js"></script>
<script src="static/js/popper.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>
<script src="static/js/owl.carousel.min.js"></script>
<script src="static/js/jquery.magnific-popup.min.js"></script>
<script src="static/js/aos.js"></script>
<script src="static/js/main.js"></script>
</body>
</html>