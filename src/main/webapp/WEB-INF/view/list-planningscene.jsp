<%@ page import="com.pack.spring_mvc.model.Planning" %>
<%@ page import="java.util.List" %>
<%@ page import="com.pack.spring_mvc.model.V_Scenario" %>
<%
  List<List<Planning>> allplanning=( List<List<Planning>>)request.getAttribute("allplanning");
  String[]tempstravail={"Jour","Nuit"};
  int count=1;
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="navbar.jsp"/>

<div class="cs-modal_wrap" id="bid_1">
  <div class="cs-modal_overlay"></div>
  <div class="cs-modal_container">
    <div class="cs-modal_container_in">
      <div class="cs-modal_close cs-center">
        <svg width="13" height="13" viewBox="0 0 13 13" fill="none" xmlns="http://www.w3.org/2000/svg">
          <path d="M11.9649 2.54988C12.3554 2.15936 12.3554 1.52619 11.9649 1.13567C11.5744 0.745142 10.9412 0.745142 10.5507 1.13567L11.9649 2.54988ZM0.550706 11.1357C0.160181 11.5262 0.160181 12.1594 0.550706 12.5499C0.94123 12.9404 1.5744 12.9404 1.96492 12.5499L0.550706 11.1357ZM1.96492 1.13567C1.5744 0.745142 0.94123 0.745142 0.550706 1.13567C0.160181 1.52619 0.160181 2.15936 0.550706 2.54988L1.96492 1.13567ZM10.5507 12.5499C10.9412 12.9404 11.5744 12.9404 11.9649 12.5499C12.3554 12.1594 12.3554 11.5262 11.9649 11.1357L10.5507 12.5499ZM10.5507 1.13567L0.550706 11.1357L1.96492 12.5499L11.9649 2.54988L10.5507 1.13567ZM0.550706 2.54988L10.5507 12.5499L11.9649 11.1357L1.96492 1.13567L0.550706 2.54988Z" fill="currentColor"></path>
        </svg>
      </div>
      <div class="cs-bid_card">
        <h2 class="cs-title_title">Planning scène</h2>
        <form action="<%= request.getContextPath() %>/save-scene" method="post">
          <p>Date début <input class="cs-form_field" type="date" name="titre"></p>
          <p>Date fin <input class="cs-form_field" type="date" name="titre"></p>
          <br/>
          <input type="submit" class="btn btn-primary w-100" value="Valider">
        </form>
      </div>
    </div>
  </div>
</div>

<div class="cs-sidebar_frame_right">
  <div class="container">
    <div class="row">
      huhu
      <div class="cs-white_bg cs-type1">
        <h2 class="page-title">Planning du Film</h2>
        <strong class="card-title"> <h3> Planning</h3></strong>
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

      <div class="col-3">
        <center>
          <div class="row">
            <div class="cs-white_bg cs-type1" style="width: 200px">
              <center class="card-title"><b>Jour 2</b></center>
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

            <!-- boucle 3 -->
            <br/><br/><br/>
          </div>
        </div>
      </div>

      <div class="col-3">
        <center>
          <div class="row">
            <div class="cs-white_bg cs-type1" style="width: 200px">
              <center class="card-title"><b>Jour 3</b></center>
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
