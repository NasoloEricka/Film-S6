<%@ page import="com.pack.spring_mvc.model.Type" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.pack.spring_mvc.model.Personnage" %>
<%
    int idScene = Integer.parseInt(request.getParameter("idScene"));

    ArrayList<Type> types = (ArrayList<Type>) request.getAttribute("types");
    ArrayList<Personnage> personnages = (ArrayList<Personnage>) request.getAttribute("personnages");

%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="navbar.jsp"/>
<style>

    #farou
    {
        width: 700px;
        margin-top: 10px;
    }

</style>
<div class="cs-sidebar_frame_right">
    <div class="container">
        <div class="row">
            <div class="cs-white_bg cs-type1">
                <h2 class="page-title">Nouveau Scenario</h2>
                <p class="text-muted">Veuillez remplir les champs.</p>
                <strong class="card-title">Ajout de scénarios</strong>
                <form id="theForm" action="save-scenario" method="post">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group mb-3">
                                <input type="hidden" name="idScene" value="<%= idScene %>">
                            </div>
                            <button class="cs-btn cs-style1" type="button" style="border-radius: 2px" onClick="ajouter()">Action ++</button>
                            <div style="width: 700px" id="volou">
                            </div>
                        </div>
                    </div>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group mb-3">
                        </div>
                        <button class="cs-btn cs-style1" type="button" style="border-radius: 2px" onClick="ajouterPiece()">Dialogue ++</button>
                        <br/>
                        <div id="farou">
                        </div> <!-- /.col -->
                        <br/>
                        <div>
                            <button type="submit" class="cs-btn cs-style1 cs-btn_lg" style="border-radius: 2px">Valider</button>
                            <br/>
                        </div>
                    </div>
                </div>
                </form>
            </div> <!-- / .card -->
        </div>
    </div><!-- .col-12 -->
</div>



<script src=<%= request.getContextPath() %>/resources/theme/assets/js/plugins/jquery-3.6.0.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/moment.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/simplebar.min.js"></script>
<script src='js/daterangepicker.js'></script>
<script src='js/jquery.stickOnScroll.js'></script>
<script src="js/tinycolor-min.js"></script>
<script src="js/config.js"></script>
<script src="js/apps.js"></script>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-56159088-1"></script>
<script>
    window.dataLayer = window.dataLayer || [];

    function gtag()
    {
        dataLayer.push(arguments);
    }
    gtag('js', new Date());
    gtag('config', 'UA-56159088-1');


    function ajouter(){
        var e = document.createElement("select");
        e.setAttribute("name","idPersonnage");
        e.setAttribute("required","");
        e.setAttribute("style","height : 50px");
        e.setAttribute("class","cs-form_field");

        <% for (int i = 0; i < personnages.size(); i++) { %>

        e.options[<%= i %>] = new Option("<%= personnages.get(i).getNom()%>","<%= personnages.get(i).getIdPersonnage() %>");

        <% } %>

        document.getElementById("volou").appendChild(e);


        e = document.createElement("input");
        e.setAttribute("name","idType");
        e.setAttribute("placeholder","idType");
        e.setAttribute("type","hidden");
        e.setAttribute("value","<%= types.get(0).getIdType() %>");

        document.getElementById("farou").appendChild(e);
        document.getElementById("farou").appendChild(document.createElement("br"));

        e = document.createElement("textarea");
        e.setAttribute("name","description");
        e.setAttribute("placeholder","description");
        e.setAttribute("class","cs-form_field");
        e.setAttribute("required","");
        document.getElementById("volou").appendChild(e);


        e = document.createElement("br");
        document.getElementById("volou").appendChild(e);

        e = document.createElement("br");
        document.getElementById("volou").appendChild(e);
    }

    function ajouterPiece(){
        var e = document.createElement("select");
        e.setAttribute("name","idPersonnage");
        e.setAttribute("required","");
        e.setAttribute("class","cs-form_field");
        e.setAttribute("style","height : 50px");

        <% for (int i = 0; i < personnages.size(); i++) { %>

        e.options[<%= i %>] = new Option("<%= personnages.get(i).getNom() %>","<%= personnages.get(i).getIdPersonnage() %>");

        <% } %>


        document.getElementById("farou").appendChild(e);

        e = document.createElement("input");
        e.setAttribute("name","idType");
        e.setAttribute("placeholder","idType");
        e.setAttribute("type","hidden");
        e.setAttribute("value","<%= types.get(1).getIdType() %>");

        document.getElementById("farou").appendChild(e);


        e = document.createElement("textarea");
        e.setAttribute("name","script");
        e.setAttribute("class","cs-form_field");
        e.setAttribute("placeholder","script");
        e.setAttribute("required","");
        document.getElementById("farou").appendChild(e);

        e = document.createElement("input");
        e.setAttribute("name","emotion");
        e.setAttribute("class","cs-form_field");
        e.setAttribute("placeholder","emotion");
        e.setAttribute("type","text");

        document.getElementById("farou").appendChild(e);


        e = document.createElement("br");
        document.getElementById("farou").appendChild(e);

        e = document.createElement("br");
        document.getElementById("farou").appendChild(e);
    }
</script>

<jsp:include page="footer.jsp"/>
