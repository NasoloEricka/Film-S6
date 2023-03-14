<%@ page import="com.pack.spring_mvc.model.Plateau" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.pack.spring_mvc.model.Personnage" %>
<%
    ArrayList<Plateau> plateaux = (ArrayList<Plateau>) request.getAttribute("plateaux");
    int [] idScene = (int [])request.getAttribute("idScene");
    String [] heureIdeal = (String []) request.getAttribute("heureIdeal");
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="navbar.jsp" %>

<style>

    #farou
    {
        width: 700px;
        margin-top: 10px;
    }

</style>

<main role="main" class="main-content">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-12">
                <h2 class="page-title">Nouvel Planning</h2>
                <p class="text-muted">Veuillez remplir les champs.</p>
                <div class="card shadow mb-4">
                    <div class="card-header">
                        <strong class="card-title">Planning</strong>
                    </div>
                    <form id="theForm" action="<%= request.getContextPath() %>/valider" method="post">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-3">

                                    <% for(int j=0; j<idScene.length; j++){ %>
                                        <input type="hidden" name="idScene" value="<%= idScene[j] %>">
                                        <input type="hidden" name="heureIdeal" value=<%= heureIdeal[j] %>>
                                    <% } %>

                                    
                                    <div style="width: 700px" >
                                        <input type="datetime-local" name="dateDebut" required />
                                        <input type="datetime-local" name="dateFin" required />
                                    </div> <!-- /.col -->

                                </div>
                            </div>
                        </div>

                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group mb-3">

                                    </div>

                                    <button class="btn btn-primary" onClick="ajouterPiece()">Plateau++</button>
                                    <div id="farou">



                                    </div> <!-- /.col -->

                                    <br/>
                                    <hr/>
                                    <div>
                                        <button type="submit" class="btn btn-success">Valider</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div> <!-- / .card -->
            </div> <!-- .col-12 -->
        </div> <!-- .row -->
    </div> <!-- .container-fluid -->


</main>

<script src="js/jquery.min.js"></script>
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

    
  
    function ajouterPiece(){
        var e = document.createElement("select");
        e.setAttribute("name","idPlateau");
        e.setAttribute("required","");
        e.setAttribute("style","height : 50px");


        <% for (int i = 0; i < plateaux.size(); i++) { %>

            e.options[<%= i %>] = new Option("<%= plateaux.get(i).getNom() %>","<%= plateaux.get(i).getIdPlateau() %>");

        <% } %>

        document.getElementById("farou").appendChild(e);


        e = document.createElement("input");
        e.setAttribute("name","heureDebut");
        e.setAttribute("placeholder","heureDebut");
        e.setAttribute("type","time");

        document.getElementById("farou").appendChild(e);


        e = document.createElement("input");
        e.setAttribute("name","heureFin");
        e.setAttribute("placeholder","heureFin");
        e.setAttribute("type","time");

        document.getElementById("farou").appendChild(e);


        e = document.createElement("br");
        document.getElementById("farou").appendChild(e);

        e = document.createElement("br");
        document.getElementById("farou").appendChild(e);
    }
</script>

<%@ include file="footer.jsp" %>