<%@ page import="com.pack.spring_mvc.model.Planning" %>
<%@ page import="java.util.List" %>
<%@ page import="com.pack.spring_mvc.model.V_Scenario" %>
<%
   // List<Planning> allplanning=( List<Planning>)request.getAttribute("listplanning");

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
            <!-- .boucle 1 -->
            <!-- boucle 2 -->
            <div class="col-3">
                <center>
                    <div class="row">
                        <div class="cs-white_bg cs-type1" style="width: 200px">
                            <center class="card-title"><b>Jour 1</b></center>
                        </div>
                    </div>
                </center>
                <div class="cs-tag_widget">
                    <div class="row">
                        <!-- boucle 3 -->
                        <div class="cs-activity cs-gray_bg col-9" style="padding: 5px; margin-top: 10px; border-radius: 0px">
                            <div class="cs-activity_right">
                                <span style="display: block; background-color: #0f0935; width: 200px; padding: 5px">08:00 - 09:00</span>
                                <br/>
                                <center><h4 class="cs-widget_title"><span>Scène 102</span></h4></center>
                                <p class="cs-activity_text">Durée: <span>00:15:00</span> </p>
                                <p >Plateau : Andoharonofotsy</p>
                                <br/>
                                <center><span class="cs-btn cs-style1" data-modal="#bid_1">
                        <span>Modifier</span>
                      </span></center>
                            </div>
                            <br/>
                        </div>

                        <div class="cs-activity cs-gray_bg col-9" style="padding: 5px; margin-top: 10px; border-radius: 0px">
                            <div class="cs-activity_right">
                                <span style="display: block; background-color: #0f0935; width: 200px; padding: 5px">08:00 - 09:00</span>
                                <br/>
                                <center><h4 class="cs-widget_title"><span>Scène 102</span></h4></center>
                                <p class="cs-activity_text">Durée: <span>00:15:00</span> </p>
                                <p>Plateau : Andoharonofotsy</p>
                                <br/>
                                <center><span class="cs-btn cs-style1" data-modal="#bid_1">
                  <span>Modifier</span>
                </span></center>
                            </div>
                            <br/>
                        </div>

                        <div class="cs-activity cs-gray_bg col-9" style="padding: 5px; margin-top: 10px; border-radius: 0px">
                            <div class="cs-activity_right">
                                <span style="display: block; background-color: #0f0935; width: 200px; padding: 5px">08:00 - 09:00</span>
                                <br/>
                                <center><h4 class="cs-widget_title"><span>Scène 102</span></h4></center>
                                <p class="cs-activity_text">Durée: <span>00:15:00</span> </p>
                                <p>Plateau : Andoharonofotsy</p>
                                <br/>
                                <center><span class="cs-btn cs-style1" data-modal="#bid_1">
                  <span>Modifier</span>
                </span></center>
                            </div>
                            <br/>
                        </div>

                        <!-- boucle 3 -->
                        <br/><br/><br/>
                    </div>
                </div>
            </div>


            <div class="col-1"></div>
            <!-- boucle 2 -->
            <br/>
            <!-- boucle 1 -->
        </div>
    </div>
</div>
<br/><br/><br/>

<jsp:include page="footer.jsp"/>
