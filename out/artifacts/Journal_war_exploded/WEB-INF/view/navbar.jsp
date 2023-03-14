<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.pack.spring_mvc.model.*" %>
<%@ page import="java.util.List" %>
<%
    //Utilisateur user=new Utilisateur();
    Utilisateur user = (Utilisateur) request.getAttribute("utilisateur");
%>

<!DOCTYPE html>
<html class="no-js" lang="en">


<!-- Mirrored from thememarch.com/demo/html/enfhess-html/enfhess-dark/explore-1.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 28 Feb 2023 16:09:20 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
    <!-- Meta Tags -->
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="ThemeMarch">
    <!-- Site Title -->
    <title>Explore</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/theme/assets/css/plugins/fontawesome.min.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/theme/assets/css/plugins/bootstrap.min.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/theme/assets/css/plugins/slick.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/theme/assets/css/style.css">
</head>

<body class="cs-dark">

<!-- Start Header Section -->
<header class="cs-site_header cs-style1 cs-sticky-header cs-white_bg">
    <div class="cs-main_header">
        <div class="container-fluid">
            <div class="cs-main_header_in">
                <div class="cs-main_header_left">
                    <a class="cs-site_branding" href="<%= request.getContextPath() %>/resources/index.html"><img src="<%= request.getContextPath() %>/resources/assets/img/logo.svg" alt="Logo"></a>
                </div>
                <div class="cs-main_header_right">
                    <div class="cs-search_wrap">
                        <form action="#" class="cs-search">
                            <input type="text" class="cs-search_input" placeholder="Search">
                            <button class="cs-search_btn">
                                <svg width="20" height="21" viewBox="0 0 20 21" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M9.16667 16.3333C12.8486 16.3333 15.8333 13.3486 15.8333 9.66667C15.8333 5.98477 12.8486 3 9.16667 3C5.48477 3 2.5 5.98477 2.5 9.66667C2.5 13.3486 5.48477 16.3333 9.16667 16.3333Z" stroke="currentColor" stroke-opacity="0.5" stroke-linecap="round" stroke-linejoin="round"/>
                                    <path d="M17.5 18L13.875 14.375" stroke="currentColor" stroke-opacity="0.5" stroke-linecap="round" stroke-linejoin="round"/>
                                </svg>
                            </button>
                        </form>
                    </div>
                    <div class="cs-nav_wrap">
                        <div class="cs-nav_out">
                            <div class="cs-nav_in">
                                <div class="cs-nav">
                                    <ul class="cs-nav_list">
                                        <li class="menu-item-has-children">
                                            <a href="<%= request.getContextPath() %>/resources/index.html">Home</a>
                                            <ul>
                                                <li><a href="<%= request.getContextPath() %>/resources/index.html">Home Default</a></li>
                                                <li><a href="<%= request.getContextPath() %>/resources/index_2.html">Home Style 2</a></li>
                                                <li><a href="<%= request.getContextPath() %>/resources/index_3.html">Home Style 3</a></li>
                                                <li><a href="<%= request.getContextPath() %>/resources/index_4.html">Home Style 4</a></li>
                                                <li><a href="<%= request.getContextPath() %>/resources/index_5.html">Home Style 5</a></li>
                                            </ul>
                                        </li>
                                        <li class="menu-item-has-children">
                                            <a href="<%= request.getContextPath() %>/resources/explore-1.html">Explore</a>
                                            <ul>
                                                <li><a href="<%= request.getContextPath() %>/resources/explore-1.html">Explore Style 1</a></li>
                                                <li><a href="<%= request.getContextPath() %>/resources/explore-2.html">Explore Style 2</a></li>
                                                <li><a href="<%= request.getContextPath() %>/resources/explore-details.html">Explore Details</a></li>
                                                <li><a href="<%= request.getContextPath() %>/resources/live-action.html">Live Auction</a></li>
                                                <li><a href="<%= request.getContextPath() %>/resources/collection.html">Collection</a></li>
                                                <li><a href="<%= request.getContextPath() %>/resources/collection-details.html">Collection Details</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="<%= request.getContextPath() %>/resources/how-it-works.html">How It Works</a></li>
                                        <li class="menu-item-has-children">
                                            <a href="<%= request.getContextPath() %>/resources/blog.html">Community</a>
                                            <ul>
                                                <li><a href="<%= request.getContextPath() %>/resources/blog.html">Blog</a></li>
                                                <li><a href="<%= request.getContextPath() %>/resources/blog-with-sidebar.html">Blog With Sidebar</a></li>
                                                <li><a href="<%= request.getContextPath() %>/resources/blog-details.html">Blog Details</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="<%= request.getContextPath() %>/resources/activity.html">Activity</a></li>
                                        <li class="menu-item-has-children cs-mega-menu">
                                            <a href="<%= request.getContextPath() %>/resources/#">Pages</a>
                                            <ul class="cs-mega-wrapper">
                                                <li class="menu-item-has-children">
                                                    <a href="<%= request.getContextPath() %>/resources/#">Column One</a>
                                                    <ul>
                                                        <li><a href="<%= request.getContextPath() %>/resources/connect-wallet.html">Connect Wallet</a></li>
                                                        <li><a href="<%= request.getContextPath() %>/resources/about.html">About Us</a></li>
                                                        <li><a href="<%= request.getContextPath() %>/resources/help-center.html">Help Center</a></li>
                                                        <li><a href="<%= request.getContextPath() %>/resources/help-center-browser-by-category.html">Help Center Catagory</a></li>
                                                        <li><a href="<%= request.getContextPath() %>/resources/help-details.html">Help Center Details</a></li>
                                                        <li><a href="<%= request.getContextPath() %>/resources/terms-condition.html">Terms & Conditions</a></li>
                                                        <li><a href="<%= request.getContextPath() %>/resources/privacy-policy.html">Privacy Policy</a></li>
                                                        <li><a href="<%= request.getContextPath() %>/resources/faq.html">FAQ</a></li>
                                                        <li><a href="<%= request.getContextPath() %>/resources/404.html">404</a></li>
                                                    </ul>
                                                </li>
                                                <li class="menu-item-has-children">
                                                    <a href="<%= request.getContextPath() %>/resources/#">Column Two</a>
                                                    <ul>
                                                        <li><a href="<%= request.getContextPath() %>/resources/user-profile.html">Edit Profile</a></li>
                                                        <li><a href="<%= request.getContextPath() %>/resources/user-account-settings.html">Profile Settings</a></li>
                                                        <li><a href="<%= request.getContextPath() %>/resources/user-items.html">My Item</a></li>
                                                        <li><a href="<%= request.getContextPath() %>/resources/create-items.html">Create Items</a></li>
                                                        <li><a href="<%= request.getContextPath() %>/resources/user-activity.html">My Activity</a></li>
                                                        <li><a href="<%= request.getContextPath() %>/resources/user-wallet.html">My Wallet</a></li>
                                                        <li><a href="<%= request.getContextPath() %>/resources/login.html">Login</a></li>
                                                        <li><a href="<%= request.getContextPath() %>/resources/register.html">Register</a></li>
                                                        <li><a href="<%= request.getContextPath() %>/resources/forget-password.html">Forget Password</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                        <li><a href="<%= request.getContextPath() %>/resources/contact.html">Contact</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="cs-header_btns_wrap">
                        <div class="cs-header_btns">
                            <div class="cs-header_icon_btn cs-center cs-mobile_search_toggle">
                                <svg width="20" height="21" viewBox="0 0 20 21" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M9.16667 16.3333C12.8486 16.3333 15.8333 13.3486 15.8333 9.66667C15.8333 5.98477 12.8486 3 9.16667 3C5.48477 3 2.5 5.98477 2.5 9.66667C2.5 13.3486 5.48477 16.3333 9.16667 16.3333Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
                                    <path d="M17.5 18L13.875 14.375" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
                                </svg>
                            </div>
                            <div class="cs-toggle_box cs-notification_box">
                                <div class="cs-toggle_btn cs-header_icon_btn cs-center">
                                    <svg width="19" height="19" viewBox="0 0 19 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M14 6.63916C14 5.44569 13.5259 4.30109 12.682 3.45718C11.8381 2.61327 10.6935 2.13916 9.5 2.13916C8.30653 2.13916 7.16193 2.61327 6.31802 3.45718C5.47411 4.30109 5 5.44569 5 6.63916C5 11.8892 2.75 13.3892 2.75 13.3892H16.25C16.25 13.3892 14 11.8892 14 6.63916Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
                                        <path d="M10.7981 16.3887C10.6663 16.616 10.477 16.8047 10.2493 16.9358C10.0216 17.067 9.76341 17.136 9.50063 17.136C9.23784 17.136 8.97967 17.067 8.75196 16.9358C8.52424 16.8047 8.33498 16.616 8.20312 16.3887" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
                                    </svg>
                                    <span class="cs-btn_badge">8</span>
                                </div>
                                <div class="cs-toggle_body">
                                    <h3 class="cs-notification_title">Notifications 10</h3>
                                    <ul class="cs-notification_list">
                                        <li>
                                            <a href="<%= request.getContextPath() %>/resources/#" class="cs-notification_item">
                                                <div class="cs-notification_thumb"><img src="<%= request.getContextPath() %>/resources/assets/img/general/notificaiton_1.jpg" alt="Image"></div>
                                                <div class="cs-notification_right">
                                                    <p>@mark joshef purchased</p>
                                                    <h4>Digital NFT Art</h4>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="<%= request.getContextPath() %>/resources/#" class="cs-notification_item">
                                                <div class="cs-notification_thumb"><img src="<%= request.getContextPath() %>/resources/assets/img/general/notificaiton_2.jpg" alt="Image"></div>
                                                <div class="cs-notification_right">
                                                    <p>@ellen capaso commented</p>
                                                    <h4>Digital NFT Art</h4>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="<%= request.getContextPath() %>/resources/#" class="cs-notification_item">
                                                <div class="cs-notification_thumb"><img src="<%= request.getContextPath() %>/resources/assets/img/general/notificaiton_3.jpg" alt="Image"></div>
                                                <div class="cs-notification_right">
                                                    <p>@steve boone started following you.</p>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="<%= request.getContextPath() %>/resources/#" class="cs-notification_item">
                                                <div class="cs-notification_thumb"><img src="<%= request.getContextPath() %>/resources/assets/img/general/notificaiton_4.jpg" alt="Image"></div>
                                                <div class="cs-notification_right">
                                                    <p>@mark jos just share</p>
                                                    <h4>Digital NFT Art</h4>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="<%= request.getContextPath() %>/resources/#" class="cs-notification_item">
                                                <div class="cs-notification_thumb"><img src="<%= request.getContextPath() %>/resources/assets/img/general/notificaiton_5.jpg" alt="Image"></div>
                                                <div class="cs-notification_right">
                                                    <p>@richard steger purchased</p>
                                                    <h4>Digital NFT Art</h4>
                                                </div>
                                            </a>
                                        </li>
                                    </ul>
                                    <div class="text-center">
                                        <a href="<%= request.getContextPath() %>/resources/#" class="cs-btn cs-style1">
                        <span>
                          View More
                          <svg width="14" height="13" viewBox="0 0 14 13" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M13.4366 7.01471C13.7295 6.72181 13.7295 6.24694 13.4366 5.95404L8.66361 1.18107C8.37072 0.888181 7.89584 0.888181 7.60295 1.18107C7.31006 1.47397 7.31006 1.94884 7.60295 2.24173L11.8456 6.48438L7.60295 10.727C7.31006 11.0199 7.31006 11.4948 7.60295 11.7877C7.89584 12.0806 8.37072 12.0806 8.66361 11.7877L13.4366 7.01471ZM0.90625 7.23438H12.9062V5.73438H0.90625V7.23438Z" fill="currentColor"/>
                          </svg>
                        </span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="cs-toggle_box cs-profile_box">
                                <div class="cs-toggle_btn cs-header_icon_btn cs-center">
                                    <svg width="19" height="18" viewBox="0 0 19 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M15.5 15.75V14.25C15.5 13.4544 15.1839 12.6913 14.6213 12.1287C14.0587 11.5661 13.2956 11.25 12.5 11.25H6.5C5.70435 11.25 4.94129 11.5661 4.37868 12.1287C3.81607 12.6913 3.5 13.4544 3.5 14.25V15.75" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
                                        <path d="M9.5 8.25C11.1569 8.25 12.5 6.90685 12.5 5.25C12.5 3.59315 11.1569 2.25 9.5 2.25C7.84315 2.25 6.5 3.59315 6.5 5.25C6.5 6.90685 7.84315 8.25 9.5 8.25Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
                                    </svg>
                                </div>
                                <div class="cs-toggle_body">
                                    <div class="cs-user_info">
                                        <h3 class="cs-user_name">Thomas G. Smith</h3>
                                        <h4 class="cs-user_balance">13.45 ETH</h4>
                                        <div class="cs-user_profile_link">
                                            <div class="cs-user_profile_link_in">
                                                <span>1BAkZn7LrU43oK8Jv...</span>
                                                <button>
                                                    <svg width="19" height="19" viewBox="0 0 19 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path d="M4.35381 4.15531L4.35156 5.74756V13.6256C4.35156 14.272 4.60837 14.892 5.06549 15.3491C5.52261 15.8063 6.1426 16.0631 6.78906 16.0631H13.2511C13.1346 16.3921 12.9191 16.6769 12.634 16.8784C12.349 17.0799 12.0086 17.1881 11.6596 17.1881H6.78906C5.84423 17.1881 4.93809 16.8127 4.26999 16.1446C3.6019 15.4765 3.22656 14.5704 3.22656 13.6256V5.74756C3.22656 5.01256 3.69681 4.38631 4.35381 4.15531ZM13.5391 2.18506C13.7607 2.18506 13.9801 2.22871 14.1848 2.31351C14.3896 2.39832 14.5756 2.52262 14.7323 2.67932C14.889 2.83601 15.0133 3.02204 15.0981 3.22678C15.1829 3.43152 15.2266 3.65095 15.2266 3.87256V13.6226C15.2266 13.8442 15.1829 14.0636 15.0981 14.2683C15.0133 14.4731 14.889 14.6591 14.7323 14.8158C14.5756 14.9725 14.3896 15.0968 14.1848 15.1816C13.9801 15.2664 13.7607 15.3101 13.5391 15.3101H6.78906C6.34151 15.3101 5.91229 15.1323 5.59582 14.8158C5.27935 14.4993 5.10156 14.0701 5.10156 13.6226V3.87256C5.10156 3.42501 5.27935 2.99578 5.59582 2.67932C5.91229 2.36285 6.34151 2.18506 6.78906 2.18506H13.5391ZM13.5391 3.31006H6.78906C6.63988 3.31006 6.4968 3.36932 6.39132 3.47481C6.28583 3.5803 6.22656 3.72337 6.22656 3.87256V13.6226C6.22656 13.9331 6.47856 14.1851 6.78906 14.1851H13.5391C13.6882 14.1851 13.8313 14.1258 13.9368 14.0203C14.0423 13.9148 14.1016 13.7717 14.1016 13.6226V3.87256C14.1016 3.72337 14.0423 3.5803 13.9368 3.47481C13.8313 3.36932 13.6882 3.31006 13.5391 3.31006Z" fill="currentColor"/>
                                                    </svg>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    <ul>
                                        <li><a href="<%= request.getContextPath() %>/resources/user-profile.html">My Profile</a></li>
                                        <li><a href="<%= request.getContextPath() %>/resources/user-items.html">My Item</a></li>
                                        <li><a href="<%= request.getContextPath() %>/resources/user-wallet.html">My Wallet</a></li>
                                        <li><a href="<%= request.getContextPath() %>/resources/user-account-settings.html">Settings</a></li>
                                        <li>
                                            <div class="form-check form-switch">
                                                <input class="form-check-input" type="checkbox" id="mode_switch" checked>
                                                <label class="form-check-label" for="mode_switch">Night Mode</label>
                                            </div>
                                        </li>
                                        <li><a href="<%= request.getContextPath() %>/resources/login.html">Logout</a></li>
                                    </ul>
                                    <div class="text-center">
                                        <a href="<%= request.getContextPath() %>/resources/create-items.html" class="cs-btn cs-style1"><span>Create</span></a>
                                    </div>
                                </div>
                            </div>
                            <a href="<%= request.getContextPath() %>/resources/connect-wallet.html" class="cs-btn cs-style1"><span>Connect Wallet</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>

<div class="container">
    <div class="cs-sidebar_frame cs-style1">
        <div class="cs-sidebar_frame_left">

            <div class="cs-height_90 cs-height_lg_80"></div>
            <div class="cs-height_100 cs-height_lg_70"></div>
            <div class="cs-height_50 cs-height_lg_20"></div>

            <div class="cs-profile_left">
                <div class="cs-profile_sidebar cs-white_bg cs-box_shadow">
                    <div class="cs-profile_info">
                        <div class="cs-profile_pic"><img src="<%= request.getContextPath() %>/resources/assets/img/avatar/avatar_29.png" alt=""></div>
                        <h3 class="cs-profile_title"><%= user.getNom() %></h3>
                        <div class="cs-name"><%= user.getEmail() %></div>
                    </div>
                    <div class="cs-height_30 cs-height_lg_30"></div>
                    <ul class="cs-profile_nav cs-mp0">
                        <li>
                            <a href="<%= request.getContextPath() %>/resources/login.html">
                                <svg width="19" height="18" viewBox="0 0 19 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M13.7109 6L12.6534 7.0575L13.8384 8.25H7.71094V9.75H13.8384L12.6534 10.935L13.7109 12L16.7109 9L13.7109 6ZM4.71094 3.75H9.96094V2.25H4.71094C3.88594 2.25 3.21094 2.925 3.21094 3.75V14.25C3.21094 15.075 3.88594 15.75 4.71094 15.75H9.96094V14.25H4.71094V3.75Z" fill="currentColor"/>
                                </svg>
                                <span>Se déconnecter</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>