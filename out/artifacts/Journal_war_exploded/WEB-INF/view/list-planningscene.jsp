<%@ page import="com.pack.spring_mvc.model.Planning" %>
<%@ page import="java.util.List" %>
<%@ page import="com.pack.spring_mvc.model.V_Scenario" %>
<%@ page import="com.pack.spring_mvc.model.PlanningScene" %>
<%@ page import="com.pack.spring_mvc.model.V_PlanningSceneAdd" %>
<%
  List<V_PlanningSceneAdd> allplanning=( List<V_PlanningSceneAdd>)request.getAttribute("listscene");

%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="navbar.jsp"/>

<%for(V_PlanningSceneAdd planning:allplanning){%>
  <div class="cs-modal_wrap" id="bid_<%=planning.getIdscene()%>">
    <div class="cs-modal_overlay"></div>
    <div class="cs-modal_container">
      <div class="cs-modal_container_in">
        <div class="cs-modal_close cs-center">
          <svg width="13" height="13" viewBox="0 0 13 13" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M11.9649 2.54988C12.3554 2.15936 12.3554 1.52619 11.9649 1.13567C11.5744 0.745142 10.9412 0.745142 10.5507 1.13567L11.9649 2.54988ZM0.550706 11.1357C0.160181 11.5262 0.160181 12.1594 0.550706 12.5499C0.94123 12.9404 1.5744 12.9404 1.96492 12.5499L0.550706 11.1357ZM1.96492 1.13567C1.5744 0.745142 0.94123 0.745142 0.550706 1.13567C0.160181 1.52619 0.160181 2.15936 0.550706 2.54988L1.96492 1.13567ZM10.5507 12.5499C10.9412 12.9404 11.5744 12.9404 11.9649 12.5499C12.3554 12.1594 12.3554 11.5262 11.9649 11.1357L10.5507 12.5499ZM10.5507 1.13567L0.550706 11.1357L1.96492 12.5499L11.9649 2.54988L10.5507 1.13567ZM0.550706 2.54988L10.5507 12.5499L11.9649 11.1357L1.96492 1.13567L0.550706 2.54988Z" fill="currentColor"></path>
          </svg>
        </div>
        <div class="cs-bid_card">
          <h2 class="cs-title_title">Modification Planning Scene</h2>
          <form action="<%= request.getContextPath() %>/update-planning" method="post">
            <input type="hidden" value="<%=planning.getIdplanningscene()%>" name="id">
            <p>Debut : <input class="cs-form_field" value="<%=planning.getDatedebut()%>" type="datetime-local" name="debut"></p>
            <p>Fin : <input class="cs-form_field" value="<%=planning.getDatefin()%>" type="datetime-local" name="fin"></p>
            <br/>
            <input type="submit" class="btn btn-primary w-100" value="Modifier">
          </form>
        </div>
      </div>
    </div>
  </div>
<% }%>

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

      <%for(V_PlanningSceneAdd planning:allplanning){%>
      <div class="col-3">
        <div class="cs-tag_widget">
          <div class="row">
            <!-- boucle 3 -->
            <div class="cs-activity cs-gray_bg col-12" style="padding: 5px; margin-top: 10px; border-radius: 0px">
              <div class="cs-activity_right">
                <span style="display: block; background-color: #0f0935; width: 200px; padding: 5px">Scene <%=planning.getIdscene()%></span>
                <br/>
                <p class="cs-activity_text">Debut:<span> <%=planning.getDatedebut()%></span> </p>
                <p class="cs-activity_text">Fin: <span><%=planning.getDatefin()%></span> </p>
                <p class="cs-activity_text">Heure ideal: <%=planning.getHeureideal()%></p>

                <br/>
                <center><span class="cs-btn cs-style1" data-modal="#bid_<%=planning.getIdscene()%>">
                        <span>Modifier</span>
                      </span></center>
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
