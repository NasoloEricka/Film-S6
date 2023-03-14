<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.pack.spring_mvc.model.*" %>
<%@ page import="java.util.List" %>
<%
    List<V_Films> films = (List<V_Films>) request.getAttribute("films");
    Utilisateur utilisateur = (Utilisateur) request.getAttribute("utilisateur");
    //   int pages = (int)request.getAttribute("pages");
    // int size = (int)request.getAttribute("size");
%>

<%@ include file="/WEB-INF/view/navbar.jsp" %>

        <div class="cs-sidebar_frame_right">
            <div class="cs-height_90 cs-height_lg_90"></div>
            <div class="cs-height_50 cs-height_lg_50"></div>
            <div class="cs-filter_head">
                <div class="cs-filter_head_left">
                    <span class="cs-search_result cs-medium cs-ternary_color">29064886 Results</span>
                    <div class="cs-form_field_wrap">
                        <input type="text" class="cs-form_field cs-field_sm" placeholder="In Auction">
                    </div>
                    <a href="#" class="cs-clear_btn">Clear All</a>
                </div>
                <% if( utilisateur.getIdrole() == 2 ){ %>
                <div class="cs-filter_head_right">
                    <div class="cs-form_field_wrap cs-select_arrow">
                        <a href="<%= request.getContextPath() %>/resources/#" class="cs-btn cs-style1 cs-btn_lg"><span>Ajouter film</span></a>
                    </div>
                </div>
                <% } %>
            </div>
            <div class="cs-height_30 cs-height_lg_30"></div>
            <div class="row">
            <% for(V_Films film: films){ %>
                    <div class="col-xl-3 col-lg-4 col-sm-6">
                        <div class="cs-card cs-style4 cs-box_shadow cs-white_bg">
                  <span class="cs-card_like cs-primary_color">
                    <i class="fas fa-heart fa-fw"></i>
                    <%= film.getStatut() %>
                  </span>
                            <a href="<%= request.getContextPath() %>/resources/explore-details.html" class="cs-card_thumb cs-zoom_effect">
                                <img style="height: 250px; object-fit: cover; object-position: center" src="<%= request.getContextPath() %>/resources/image/<%= film.getImage() %>" alt="Image" class="cs-zoom_item">
                            </a>
                            <div class="cs-card_info">
                                <a href="<%= request.getContextPath() %>/resources/#" class="cs-avatar cs-white_bg">
                                    <img src="<%= request.getContextPath() %>/resources/theme/assets/img/avatar/avatar_12.png" alt="Avatar">
                                    <span><%= film.getNomutilisateur() %></span>
                                </a>
                                <h3 class="cs-card_title"><a href="<%= request.getContextPath() %>/resources/explore-details.html"><%= film.getNom() %></a></h3>
                                <div class="cs-card_price">Date création: <b class="cs-primary_color"><%= film.getDateCreation() %></b></div>
                                <hr>
                                <% if( utilisateur.getIdrole() == 2 || utilisateur.getIdrole() == 1 ){ %>
                                    <div class="cs-card_footer">
                                            <i class="fas fa-redo fa-fw"></i>
                                            <a href="<%= request.getContextPath() %>/list-scene?idFilm=<%= film.getIdFilms() %>&page=0">Voir détails</a>
                                        <a  href="<%= request.getContextPath() %>/list-planning?idFilm=<%= film.getIdFilms() %>">
                                            <span class="cs-card_btn_2">Voir planning</span>
                                        </a>
                                    </div>
                                <% } %>
                            </div>
                        </div>
                        <div class="cs-height_30 cs-height_lg_30"></div>
                    </div>
            <% } %>
            </div>

            <div class="cs-height_10 cs-height_lg_10"></div>
        </div>

<div class="cs-height_100 cs-height_lg_70"></div>
<div class="cs-height_50 cs-height_lg_70"></div>


<%@ include file="/WEB-INF/view/footer.jsp" %>