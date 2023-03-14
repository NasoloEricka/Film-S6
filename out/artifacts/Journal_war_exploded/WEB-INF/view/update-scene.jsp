<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.pack.spring_mvc.model.*" %>
<%@ page import="java.util.List" %>
<%
    V_Scene scene = (V_Scene) request.getAttribute("scene");
    List<Plateau> plateaux = (List<Plateau>)request.getAttribute("plateaux");
    Utilisateur user = (Utilisateur) request.getAttribute("user");
%>
<!DOCTYPE html>
<html class="no-js" lang="en">


<!-- Mirrored from thememarch.com/demo/html/enfhess-html/enfhess-dark/user-profile.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 28 Feb 2023 16:10:29 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
    <!-- Meta Tags -->
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="ThemeMarch">
    <!-- Site Title -->
    <title>Profile Info</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/theme/assets/css/plugins/fontawesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/theme/assets/css/plugins/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/theme/assets/css/plugins/slick.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/theme/assets/css/style.css">
</head>

<body class="cs-dark">

<div class="cs-preloader cs-center">
    <div class="cs-preloader_in"></div>
    <span>Loading</span>
</div>

<!-- Start Header Section -->

/*header*/

<div class="cs-height_90 cs-height_lg_80"></div>

<div class="cs-height_100 cs-height_lg_70"></div>
<div class="container">
    <div class="cs-cover_photo cs-bg" data-src="${pageContext.request.contextPath}/resources/theme/assets/img/cover-photo.jpg">
        <button class="cs-edit_cover cs-center">
            <svg width="33" height="33" viewBox="0 0 33 33" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M29.9062 24.75H26.8125V21.6562C26.8125 21.3827 26.7039 21.1204 26.5105 20.927C26.3171 20.7336 26.0548 20.625 25.7812 20.625C25.5077 20.625 25.2454 20.7336 25.052 20.927C24.8586 21.1204 24.75 21.3827 24.75 21.6562V24.75H21.6562C21.3827 24.75 21.1204 24.8586 20.927 25.052C20.7336 25.2454 20.625 25.5077 20.625 25.7812C20.625 26.0548 20.7336 26.3171 20.927 26.5105C21.1204 26.7039 21.3827 26.8125 21.6562 26.8125H24.75V29.9062C24.75 30.1798 24.8586 30.4421 25.052 30.6355C25.2454 30.8289 25.5077 30.9375 25.7812 30.9375C26.0548 30.9375 26.3171 30.8289 26.5105 30.6355C26.7039 30.4421 26.8125 30.1798 26.8125 29.9062V26.8125H29.9062C30.1798 26.8125 30.4421 26.7039 30.6355 26.5105C30.8289 26.3171 30.9375 26.0548 30.9375 25.7812C30.9375 25.5077 30.8289 25.2454 30.6355 25.052C30.4421 24.8586 30.1798 24.75 29.9062 24.75Z" fill="url(#paint0_linear_1353_5467)"/>
                <path d="M17.5312 24.75H5.15625C4.88275 24.75 4.62044 24.6414 4.42705 24.448C4.23365 24.2546 4.125 23.9923 4.125 23.7188V5.15625C4.125 4.88275 4.23365 4.62044 4.42705 4.42705C4.62044 4.23365 4.88275 4.125 5.15625 4.125H23.7188C23.9923 4.125 24.2546 4.23365 24.448 4.42705C24.6414 4.62044 24.75 4.88275 24.75 5.15625V17.5312C24.75 17.8048 24.8586 18.0671 25.052 18.2605C25.2454 18.4539 25.5077 18.5625 25.7812 18.5625C26.0548 18.5625 26.3171 18.4539 26.5105 18.2605C26.7039 18.0671 26.8125 17.8048 26.8125 17.5312V5.15625C26.8125 4.33574 26.4866 3.54883 25.9064 2.96864C25.3262 2.38845 24.5393 2.0625 23.7188 2.0625H5.15625C4.33574 2.0625 3.54883 2.38845 2.96864 2.96864C2.38845 3.54883 2.0625 4.33574 2.0625 5.15625V23.7188C2.0625 24.5393 2.38845 25.3262 2.96864 25.9064C3.54883 26.4866 4.33574 26.8125 5.15625 26.8125H17.5312C17.8048 26.8125 18.0671 26.7039 18.2605 26.5105C18.4539 26.3171 18.5625 26.0548 18.5625 25.7812C18.5625 25.5077 18.4539 25.2454 18.2605 25.052C18.0671 24.8586 17.8048 24.75 17.5312 24.75Z" fill="url(#paint1_linear_1353_5467)"/>
                <path d="M11.3438 11.3438C12.7676 11.3438 13.9219 10.1895 13.9219 8.76562C13.9219 7.34177 12.7676 6.1875 11.3438 6.1875C9.91989 6.1875 8.76562 7.34177 8.76562 8.76562C8.76562 10.1895 9.91989 11.3438 11.3438 11.3438Z" fill="url(#paint2_linear_1353_5467)"/>
                <path d="M7.51781 14.7367L6.1875 16.0773V22.6876H22.6875V16.0773L18.2634 11.6429C18.1676 11.5463 18.0535 11.4696 17.9278 11.4172C17.8022 11.3648 17.6674 11.3379 17.5312 11.3379C17.3951 11.3379 17.2603 11.3648 17.1347 11.4172C17.009 11.4696 16.8949 11.5463 16.7991 11.6429L11.3438 17.1086L8.98219 14.7367C8.88632 14.64 8.77226 14.5633 8.64659 14.511C8.52093 14.4586 8.38614 14.4316 8.25 14.4316C8.11386 14.4316 7.97907 14.4586 7.85341 14.511C7.72774 14.5633 7.61368 14.64 7.51781 14.7367Z" fill="url(#paint3_linear_1353_5467)"/>
                <defs>
                    <linearGradient id="paint0_linear_1353_5467" x1="20.625" y1="20.625" x2="32.9893" y2="26.8849" gradientUnits="userSpaceOnUse">
                        <stop offset="0" stop-color="#FC466B"/>
                        <stop offset="1" stop-color="#3F5EFB"/>
                    </linearGradient>
                    <linearGradient id="paint1_linear_1353_5467" x1="2.0625" y1="2.0625" x2="31.7368" y2="17.0862" gradientUnits="userSpaceOnUse">
                        <stop offset="0" stop-color="#FC466B"/>
                        <stop offset="1" stop-color="#3F5EFB"/>
                    </linearGradient>
                    <linearGradient id="paint2_linear_1353_5467" x1="8.76562" y1="6.1875" x2="14.9478" y2="9.31744" gradientUnits="userSpaceOnUse">
                        <stop offset="0" stop-color="#FC466B"/>
                        <stop offset="1" stop-color="#3F5EFB"/>
                    </linearGradient>
                    <linearGradient id="paint3_linear_1353_5467" x1="6.1875" y1="11.3379" x2="22.3081" y2="23.2031" gradientUnits="userSpaceOnUse">
                        <stop offset="0" stop-color="#FC466B"/>
                        <stop offset="1" stop-color="#3F5EFB"/>
                    </linearGradient>
                </defs>
            </svg>
        </button>
    </div>
    <div class="cs-prifile_wrap">
        <div class="cs-profile_left">
            <div class="cs-profile_sidebar cs-white_bg cs-box_shadow">
                <div class="cs-profile_info">
                    <div class="cs-profile_pic"><img src="${pageContext.request.contextPath}/resources/theme/assets/img/avatar/avatar_29.png" alt=""></div>
                    <h3 class="cs-profile_title">Edward Figaro</h3>
                </div>
            </div>
        </div>

        <div class="cs-profile_right">
            <div class="cs-height_30 cs-height_lg_30"></div>
            <h2 class="cs-section_heading cs-style1">Modifier une Scène</h2>
            <div class="cs-height_25 cs-height_lg_25"></div>
            <form class="row" action="<%= request.getContextPath() %>/modifier-scene" method="post">
                <input type="hidden" name="idScene" value="<%=scene.getIdScene() %>">
                <div class="row">
                    <div class="col-lg-6">
                        <div>
                            Titre: <input type="text" name="titre" value="<%=scene.getTitre() %>">
                        </div>
                        <div class="cs-height_25 cs-height_lg_25"></div>
                        <div>
                            Films: <%=scene.getNomfilm() %>
                        </div>

                        <div class="cs-height_25 cs-height_lg_25"></div>

                            <% if( user.getIdRole() != 1){ %>
                        <div>
                            Plateau: <%=scene.getNomplateau() %>
                            <div class="cs-height_25 cs-height_lg_25"></div>
                        </div>
                            <% }else{ %>
                        <div>
                            Plateaux:
                            <p>
                                <% for(Plateau p : plateaux){ %>
                                <% if( p.getIdPlateau() == scene.getIdPlateau() ){ %>
                                <input type="radio" name="idPlateau" checked="true" value="<%=scene.getIdPlateau() %>"><%=scene.getNomplateau() %>
                                <% }else{ %>
                                <input type="radio" name="idPlateau" value="<%=p.getIdPlateau() %>"><%=p.getNom() %>
                                <% } %>
                                <% } %>
                            </p>

                            <div class="cs-height_25 cs-height_lg_25"></div>
                        </div>
                            <% } %>
                        <div class="row">
                            <div class="col-lg-6">
                                <input type="submit" class="cs-btn cs-style1 cs-btn_lg" value="Modifier">
                            </div>
                        </div>

            </form>
        </div>

    </div>
</div>
<div class="cs-height_100 cs-height_lg_70"></div>

/*Footer*/

<div class="cs-video_popup">
    <div class="cs-video_popup_overlay"></div>
    <div class="cs-video_popup_content">
        <div class="cs-video_popup_layer"></div>
        <div class="cs-video_popup_container">
            <div class="cs-video_popup_align">
                <div class="embed-responsive embed-responsive-16by9">
                    <iframe class="embed-responsive-item" src="about:blank"></iframe>
                </div>
            </div>
            <div class="cs-video_popup_close"></div>
        </div>
    </div>
</div>
<!-- End Video Popup -->

<!-- Script -->
<script src="${pageContext.request.contextPath}/resources/theme/assets/js/plugins/jquery-3.6.0.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/theme/assets/js/plugins/isotope.pkg.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/theme/assets/js/plugins/jquery.slick.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/theme/assets/js/main.js"></script>

</body>

<!-- Mirrored from thememarch.com/demo/html/enfhess-html/enfhess-dark/user-profile.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 28 Feb 2023 16:10:31 GMT -->
</html>










