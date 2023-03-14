<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String message = null;
    if( (String) request.getAttribute("error") != null ){
        message = (String) request.getAttribute("error");
    }
%>

<!DOCTYPE html>
<html class="no-js" lang="en">


<!-- Mirrored from thememarch.com/demo/html/enfhess-html/enfhess-dark/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 28 Feb 2023 16:10:31 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
    <!-- Meta Tags -->
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="ThemeMarch">
    <!-- Site Title -->
    <title>Sign In</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/theme/assets/css/plugins/fontawesome.min.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/theme/assets/css/plugins/bootstrap.min.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/theme/assets/css/plugins/slick.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/theme/assets/css/style.css">
</head>

<body class="cs-dark">

<div class="cs-preloader cs-center">
    <div class="cs-preloader_in"></div>
    <span>Chargement</span>
</div>


<div class="cs-height_100 cs-height_lg_70"></div>
<div class="container">
    <div class="row">
        <div class="col-xl-6 col-md-8 offset-xl-3 offset-md-2">
            <form action="<%= request.getContextPath() %>/utilisateur/login" method="post" class="cs-form_card cs-style1 cs-box_shadow cs-white_bg">
                <div class="cs-form_card_in">
                    <h2 class="cs-form_title text-center">Log in</h2>
                    <div class="cs-form_btns">
                        <a href="<%= request.getContextPath() %>/resources/#" class="cs-btn cs-style2 cs-btn_lg">
                            <span><i class="fab fa-google"></i>Google</span>
                        </a>
                        <a href="<%= request.getContextPath() %>/resources/#" class="cs-btn cs-style2 cs-btn_lg">
                            <span><i class="fab fa-facebook-f"></i>Facebook</span>
                        </a>
                        <a href="<%= request.getContextPath() %>/resources/#" class="cs-btn cs-style2 cs-btn_lg">
                            <span><i class="fab fa-linkedin-in"></i>Linkedin</span>
                        </a>
                    </div>
                    <div class="cs-height_30 cs-height_lg_30"></div>
                    <% if(message != null){ %>
                    <div class="alert alert-warning alert-dismissible fade show">
                        <strong>Erreur!</strong> <span style="color: tomato"><%= message %></span>
                    </div>
                    <% } %>
                    <div class="cs-form_field_wrap">
                        <input type="email" name="email" class="cs-form_field" placeholder="Email">
                    </div>
                    <div class="cs-height_20 cs-height_lg_20"></div>
                    <div class="cs-form_field_wrap">
                        <input type="password" name="motdepasse" class="cs-form_field" placeholder="Mot de passe">
                    </div>
                    <div class="cs-height_20 cs-height_lg_20"></div>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="notify">
                        <label class="form-check-label" for="notify">Se souvenir</label>
                    </div>
                    <div class="cs-height_15 cs-height_lg_15"></div>
                    <button type="submit" class="cs-btn cs-style1 cs-btn_lg w-100">
                        <span>Se connecter</span>
                    </button>
                    <div class="cs-height_30 cs-height_lg_30"></div>
                </div>
            </form>
        </div>
    </div>
</div>
<div class="cs-height_100 cs-height_lg_70"></div>


<!-- Script -->
<script src="<%= request.getContextPath() %>/resources/theme/assets/js/plugins/jquery-3.6.0.min.js"></script>
<script src="<%= request.getContextPath() %>/resources/theme/assets/js/plugins/isotope.pkg.min.js"></script>
<script src="<%= request.getContextPath() %>/resources/theme/assets/js/plugins/jquery.slick.min.js"></script>
<script src="<%= request.getContextPath() %>/resources/theme/assets/js/main.js"></script>
</body>

<!-- Mirrored from thememarch.com/demo/html/enfhess-html/enfhess-dark/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 28 Feb 2023 16:10:31 GMT -->
</html>