<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 01/03/2023
  Time: 10:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="<%= request.getContextPath() %>/save-personnages" method="post">
  <div class="card-body">
    <div class="row">
      <div class="col-md-3">
        <div class="form-group mb-3">



        </div>

        <button class="btn btn-primary" onClick="ajouter()">Action ++</button>
        <div style="width: 700px" id="volou">

        </div> <!-- /.col -->
        <button type="submit">Enregistrer</button>
      </div>
    </div>
  </div>
</form>

  <script>

    function ajouter(){

      e = document.createElement("input");
      e.setAttribute("name","nom");
      e.setAttribute("placeholder","nom");
      e.setAttribute("required","");
      e.setAttribute("type", "text");
      document.getElementById("volou").appendChild(e);

      e = document.createElement("textarea");
      e.setAttribute("name","descriptions");
      e.setAttribute("placeholder","descriptions");
      e.setAttribute("required","");
      document.getElementById("volou").appendChild(e);

      e = document.createElement("br");
      document.getElementById("volou").appendChild(e);

      e = document.createElement("br");
      document.getElementById("volou").appendChild(e);
    }


  </script>
</body>
</html>
