<%@ page import="com.pack.spring_mvc.model.V_Scenario" %>
<%@ page import="java.util.List" %>
<%@ page import="com.pack.spring_mvc.model.V_Action" %>
<%@ page import="com.pack.spring_mvc.model.V_Dialogue" %>
<%
    List<V_Scenario> allscenario=(List<V_Scenario>)request.getAttribute("allscenario");
    int idScene = (int)request.getAttribute("idScene");
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Liste des scenes</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/theme/assets/css/plugins/fontawesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/theme/assets/css/plugins/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/theme/assets/css/plugins/slick.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/theme/assets/css/style.css">

</head>
<body class="cs-dark">
<div class="cs-height_100 cs-height_lg_70"></div>
<div class="container">
    <div class="cs-collection_card">
        <div class="cs-collection_img"><img src="${pageContext.request.contextPath}/resources/theme/assets/img/general/collection_details.jpg" alt="Collection Details"></div>
        <div class="cs-collection_bottom">
            <div class="cs-collection_avatar"><img src="${pageContext.request.contextPath}/resources/theme/assets/img/avatar/avatar_20.png" alt="Avatar"></div>
            <div class="cs-collection_info">
                <div class="cs-collection_info_in cs-white_bg">
                    <div class="cs-collection_info_left">
                        <h2 class="cs-collection_avatar_name">Audioglyphs</h2>
                        <div class="cs-collection_user">@johon kobra <span>Created</span></div>
                        <span class="cs-btn cs-style1" data-modal="#bid_1">
                      <span>
                        <a href="<%= request.getContextPath() %>/create-scenario?idScene=<%= idScene %>">Ajouter Scenario</a>
                      </span>
                    </span>
                    </div>
                    <div class="cs-collection_right">
                        <div class="cs-collection_list_wrap">
                            <ul class="cs-collection_list cs-white_bg cs-mp0">
                                <li>
                                    <div class="cs-collection_list_title">Collection of</div>
                                    <div class="cs-collection_list_number">12</div>
                                </li>
                                <li>
                                    <div class="cs-collection_list_title">Owned by</div>
                                    <div class="cs-collection_list_number">2</div>
                                </li>
                                <li>
                                    <div class="cs-collection_list_title">Floor Price</div>
                                    <div class="cs-collection_list_number">0.24 ETH</div>
                                </li>
                                <li>
                                    <div class="cs-collection_list_title">Total Sales</div>
                                    <div class="cs-collection_list_number">0.53 ETH</div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container g-md-0">
    <div class="row">
        <div class="col-3">
            <br/>
            <div class="cs-filter_sidebar">
                <div class="cs-search_widget">
                    <center><h5>FILMAPP</h5></center>
                    <hr/>
                </div>
            </div>
        </div>
        <div class="col-9">
            <% for(int i=0;i<allscenario.size();i++){%>
            <%V_Scenario scenario=(V_Scenario) allscenario.get(i);%>
            <div class="cs-activity_wrap cs-box_shadow cs-white_bg">
                <h5>Scenario numero : <%=(i+1)%> de <%=scenario.getDuree()%> de durée</h5>
                <div class="cs-height_45 cs-height_lg_45"></div>
                <ul class="cs-activity_list cs-mp0">
                    <li>
                        <% for(Object ob:scenario.getDetails()){%>
                        <div class="cs-activity cs-gray_bg">
                            <% if(scenario.getNomtype().equals("Action")){%>
                            <% V_Action action=(V_Action) ob;%>
                            <div class="cs-activity_right">
                                <p><strong><%=action.getNom()%></strong>  : <%=action.getDescriptions()%></p>
                            </div>
                            <div class="cs-activity_icon cs-center cs-white_bg cs-accent_color">
                                <a href="<%= request.getContextPath() %>/update-scenario?idScenario=<%= scenario.getIdScenario() %>">
                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" clip-rule="evenodd" d="M7.58321 0.709957C6.80344 0.874407 6.18914 1.21704 5.59168 1.82076C5.18675 2.22991 5.00479 2.50229 4.76907 3.05207C4.50504 3.66793 4.48083 3.89286 4.48083 5.73042V7.37635H3.41299C2.54968 7.37635 2.3136 7.3895 2.18057 7.44513C1.96981 7.53316 1.82838 7.66619 1.71925 7.87903C1.6398 8.03397 1.60008 8.62486 1.2546 14.7885C1.04683 18.4956 0.887802 21.6486 0.901176 21.7952C0.933924 22.154 1.17236 22.635 1.43954 22.8813C1.5516 22.9846 1.77688 23.1324 1.94009 23.2097L2.23691 23.3504L6.05108 23.3627L9.86525 23.375L9.73124 23.1405C9.51169 22.7562 9.36302 22.248 9.33844 21.7974C9.30778 21.2353 9.83037 13.8479 9.92639 13.4862C9.96527 13.3396 10.0588 13.1041 10.1341 12.9627C10.2958 12.6594 10.745 12.2223 11.058 12.0637C11.495 11.8422 11.7038 11.8211 13.4676 11.8204L15.1006 11.8198L15.1013 11.6976C15.1016 11.6304 15.0606 10.8055 15.01 9.86466C14.9095 7.99483 14.8896 7.87774 14.6301 7.62567C14.4029 7.40505 14.2408 7.37635 13.2221 7.37635H12.3092L12.2904 5.65453C12.2732 4.07388 12.2639 3.90467 12.1777 3.59066C11.6104 1.52377 9.62549 0.279258 7.58321 0.709957ZM8.86051 2.0029C9.75083 2.16326 10.5632 2.9018 10.8612 3.82163C10.9298 4.03349 10.9426 4.28614 10.9576 5.72118L10.9749 7.37635H11.6417H12.3085L12.2938 8.15083C12.2804 8.85049 12.2702 8.93709 12.1874 9.04787C11.8758 9.46484 11.3401 9.47515 11.0691 9.06938C10.9739 8.92692 10.9682 8.87498 10.9682 8.14737V7.37635H8.39471H5.82118L5.80643 8.15083C5.79305 8.85049 5.78279 8.93709 5.70001 9.04787C5.38839 9.46484 4.85274 9.47515 4.58169 9.06938C4.48651 8.92692 4.48083 8.87498 4.48083 8.14737V7.37635H5.14734H5.81385V5.80112C5.81385 4.10672 5.8302 3.93978 6.04233 3.46904C6.27632 2.94988 6.72745 2.48132 7.25 2.21472C7.68696 1.99179 8.3297 1.90728 8.86051 2.0029ZM11.7014 13.2364C11.4861 13.3362 11.3508 13.4769 11.2592 13.6961C11.1769 13.893 10.6373 21.2578 10.6707 21.7285C10.7251 22.4959 11.2453 23.1174 11.9949 23.3103C12.2061 23.3647 13.0058 23.3726 17.2603 23.3624L22.2767 23.3504L22.5735 23.2097C22.7367 23.1324 22.9614 22.9851 23.0729 22.8824C23.3192 22.6553 23.57 22.1737 23.6098 21.8513C23.6271 21.7113 23.5294 20.0574 23.3663 17.7295C23.0598 13.3569 23.0937 13.5829 22.7036 13.3087L22.5134 13.175L17.1962 13.1645C12.0992 13.1544 11.8717 13.1574 11.7014 13.2364ZM15.4736 15.253C15.7574 15.4157 15.8115 15.5711 15.8115 16.2241C15.8115 16.9539 15.8786 17.177 16.1929 17.4933C16.5907 17.8934 17.1539 17.9713 17.6468 17.6946C18.1309 17.4227 18.2998 17.0384 18.2998 16.2092C18.2998 15.6054 18.3481 15.4412 18.5725 15.2811C18.7704 15.14 19.126 15.1327 19.3047 15.2661C19.5817 15.4729 19.6094 15.5528 19.6248 16.1885C19.65 17.2283 19.439 17.8413 18.8537 18.4286C18.0668 19.2184 16.9536 19.4099 15.9495 18.9283C15.6546 18.7868 15.5055 18.6776 15.2373 18.4061C14.6651 17.8268 14.4806 17.3113 14.4792 16.2883C14.4786 15.8042 14.4924 15.6848 14.567 15.5307C14.7354 15.183 15.1369 15.06 15.4736 15.253Z" fill="currentColor"></path>
                                    </svg>
                                </a>
                            </div>
                            <br/>
                            <% }else{%>
                            <% V_Dialogue dialogue=(V_Dialogue) ob;%>
                            <div class="cs-activity_right">
                                <p><strong><%=dialogue.getNom()%></strong>(<%=dialogue.getEmotion()%>) : <%=dialogue.getScript()%></p>
                            </div>
                            <div class="cs-activity_icon cs-center cs-white_bg cs-accent_color">
                                <a href="<%= request.getContextPath() %>/update-scenario?idScenario=<%= scenario.getIdScenario() %>">
                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" clip-rule="evenodd" d="M7.58321 0.709957C6.80344 0.874407 6.18914 1.21704 5.59168 1.82076C5.18675 2.22991 5.00479 2.50229 4.76907 3.05207C4.50504 3.66793 4.48083 3.89286 4.48083 5.73042V7.37635H3.41299C2.54968 7.37635 2.3136 7.3895 2.18057 7.44513C1.96981 7.53316 1.82838 7.66619 1.71925 7.87903C1.6398 8.03397 1.60008 8.62486 1.2546 14.7885C1.04683 18.4956 0.887802 21.6486 0.901176 21.7952C0.933924 22.154 1.17236 22.635 1.43954 22.8813C1.5516 22.9846 1.77688 23.1324 1.94009 23.2097L2.23691 23.3504L6.05108 23.3627L9.86525 23.375L9.73124 23.1405C9.51169 22.7562 9.36302 22.248 9.33844 21.7974C9.30778 21.2353 9.83037 13.8479 9.92639 13.4862C9.96527 13.3396 10.0588 13.1041 10.1341 12.9627C10.2958 12.6594 10.745 12.2223 11.058 12.0637C11.495 11.8422 11.7038 11.8211 13.4676 11.8204L15.1006 11.8198L15.1013 11.6976C15.1016 11.6304 15.0606 10.8055 15.01 9.86466C14.9095 7.99483 14.8896 7.87774 14.6301 7.62567C14.4029 7.40505 14.2408 7.37635 13.2221 7.37635H12.3092L12.2904 5.65453C12.2732 4.07388 12.2639 3.90467 12.1777 3.59066C11.6104 1.52377 9.62549 0.279258 7.58321 0.709957ZM8.86051 2.0029C9.75083 2.16326 10.5632 2.9018 10.8612 3.82163C10.9298 4.03349 10.9426 4.28614 10.9576 5.72118L10.9749 7.37635H11.6417H12.3085L12.2938 8.15083C12.2804 8.85049 12.2702 8.93709 12.1874 9.04787C11.8758 9.46484 11.3401 9.47515 11.0691 9.06938C10.9739 8.92692 10.9682 8.87498 10.9682 8.14737V7.37635H8.39471H5.82118L5.80643 8.15083C5.79305 8.85049 5.78279 8.93709 5.70001 9.04787C5.38839 9.46484 4.85274 9.47515 4.58169 9.06938C4.48651 8.92692 4.48083 8.87498 4.48083 8.14737V7.37635H5.14734H5.81385V5.80112C5.81385 4.10672 5.8302 3.93978 6.04233 3.46904C6.27632 2.94988 6.72745 2.48132 7.25 2.21472C7.68696 1.99179 8.3297 1.90728 8.86051 2.0029ZM11.7014 13.2364C11.4861 13.3362 11.3508 13.4769 11.2592 13.6961C11.1769 13.893 10.6373 21.2578 10.6707 21.7285C10.7251 22.4959 11.2453 23.1174 11.9949 23.3103C12.2061 23.3647 13.0058 23.3726 17.2603 23.3624L22.2767 23.3504L22.5735 23.2097C22.7367 23.1324 22.9614 22.9851 23.0729 22.8824C23.3192 22.6553 23.57 22.1737 23.6098 21.8513C23.6271 21.7113 23.5294 20.0574 23.3663 17.7295C23.0598 13.3569 23.0937 13.5829 22.7036 13.3087L22.5134 13.175L17.1962 13.1645C12.0992 13.1544 11.8717 13.1574 11.7014 13.2364ZM15.4736 15.253C15.7574 15.4157 15.8115 15.5711 15.8115 16.2241C15.8115 16.9539 15.8786 17.177 16.1929 17.4933C16.5907 17.8934 17.1539 17.9713 17.6468 17.6946C18.1309 17.4227 18.2998 17.0384 18.2998 16.2092C18.2998 15.6054 18.3481 15.4412 18.5725 15.2811C18.7704 15.14 19.126 15.1327 19.3047 15.2661C19.5817 15.4729 19.6094 15.5528 19.6248 16.1885C19.65 17.2283 19.439 17.8413 18.8537 18.4286C18.0668 19.2184 16.9536 19.4099 15.9495 18.9283C15.6546 18.7868 15.5055 18.6776 15.2373 18.4061C14.6651 17.8268 14.4806 17.3113 14.4792 16.2883C14.4786 15.8042 14.4924 15.6848 14.567 15.5307C14.7354 15.183 15.1369 15.06 15.4736 15.253Z" fill="currentColor"></path>
                                    </svg>
                                </a>
                            </div>
                            <% }%>
                        </div>
                        <br/>
                        <% }%>
                    </li>
                </ul>

            </div>
            <br/>
            <% }%>
        </div>
    </div>
        </div>
    </div>
</div>


</body>
</html>
