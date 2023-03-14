<%@ page import="com.pack.spring_mvc.model.Planning" %>
<%@ page import="java.util.List" %>
<%@ page import="com.pack.spring_mvc.model.V_Scenario" %>
<%
   List<Planning> allplanning=( List<Planning>)request.getAttribute("listplanning");

%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="navbar.jsp"/>


<div class="cs-sidebar_frame_right">
    <div class="container">
        <div class="row">
            <div class="cs-white_bg cs-type1">
                <h2 class="page-title">Liste des plannings</h2>
                <strong class="card-title"> <h3> Plannings</h3></strong>
                <div class="row">
                </div> <!-- / .card -->
            </div>
        </div>
        <br/>
        <br/><!-- .col-12 -->
    </div>
    <div class="container">
        <div class="row">

            <%for(Planning planning:allplanning){%>
            <div class="col-3">
                <div class="cs-tag_widget">
                    <div class="row">
                        <!-- boucle 3 -->
                        <div class="cs-activity cs-gray_bg col-12" style="padding: 5px; margin-top: 10px; border-radius: 0px">
                            <div class="cs-activity_right">
                                <span style="display: block; background-color: #0f0935; width: 200px; padding: 5px">Planning <%=planning.getIdPlanning()%></span>
                                <br/>
                                <p class="cs-activity_text">Debut: <span><%=planning.getDateDebut()%></span> </p>
                                <p class="cs-activity_text">Fin: <span><%=planning.getDateFin()%></span> </p>
                                <br/>
                                <center><span class="cs-btn cs-style1" data-modal="#bid_1">
                                    <a href="<%=request.getContextPath()%>/list-planningscene?idPlanning=<%=planning.getIdPlanning()%>
                                    ">
                                        <span>Détails</span>
                                    </a>
                        </center>
                            </div>
                            <br/>
                        </div>
                        <br/><br/><br/>
                    </div>
                </div>
            </div>
            <% }%>


            <div class="col-1"></div>
            <!-- boucle 2 -->
            <br/>
            <!-- boucle 1 -->
        </div>
    </div>
</div>
<br/><br/><br/>

<jsp:include page="footer.jsp"/>
