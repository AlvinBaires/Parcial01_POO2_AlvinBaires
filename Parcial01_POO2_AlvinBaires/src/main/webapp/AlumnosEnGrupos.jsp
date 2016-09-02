<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.sv.udb.controlador.*"%>
<%@page import="com.sv.udb.modelo.*"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <link rel="icon" href="assets/img/ui-sam.jpg"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>Alumnos en Grupos</title> 

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/icono/style.css" rel="stylesheet" />    
    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

  <section id="container" >
      <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
      <!--header start-->
      <jsp:include page="INCLUDES/HEADER.jsp" flush="true"/>
      <!--header end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
      <!--sidebar start-->
      <jsp:include page="INCLUDES/ASIDE.jsp" flush="true"/>
      <!--sidebar end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->
      <form  action="GruposAlumnosServ" class="form-horizontal style-form" method="POST">
      <section id="main-content">          
              <section class="wrapper">
                  <h3><i class="fa fa-angle-right"></i>Alumnos en Grupos</h3>

                  <!-- BASIC FORM ELELEMNTS -->
                  <div class="row mt">
                      <div class="col-lg-12">
                          <div class="form-panel">
                                  <h4 class="mb" id="mensaje">${mensAler}</h4>
                                  <jsp:useBean id="BeanAlumnos" class="com.sv.udb.controlador.AlumnosCtrl" scope="page"/>
                                  <jsp:useBean id="BeanGrupos" class="com.sv.udb.controlador.GruposCtrl" scope="page"/>
                                  <div class="form-group">
                                      <div class="col-sm-12">
                                          <label for="nombre">Alumno </label>
                                          <select class="form-control" name="alumno">
                                              <c:forEach items="${BeanAlumnos.ConsTodo()}" var="fila">
                                                  <option value="${fila.codiAlum}">${fila.nombAlum} ${fila.apelAlum}</option>
                                              </c:forEach>
                                          </select>
                                      </div>
                                      <div class="col-sm-12">
                                          <label for="apellido">Grupo: </label>
                                          <select class="form-control" name="grupo">
                                              <c:forEach items="${BeanGrupos.ConsTodo()}" var="fila">
                                                  <option value="${fila.codiGrup}">${fila.nombGrup}</option>
                                              </c:forEach>
                                          </select>
                                      </div>
                                      
                                  </div>
                                      
                                      
                              <div class="col s12 center-align">
                                  <input type="submit" name="accionBtn" value="Guardar" class="btn btn-default" />                                        
                              </div>    
                          </div>
                      </div><!-- col-lg-12-->      	
                  </div><!-- /row -->
              </section>      
      </section><!-- /MAIN CONTENT -->
      </form>
                                  
      <form  action="VerAlumnos.jsp" class="form-horizontal style-form" method="POST">
      <section id="main-content">          
              <section class="wrapper">
                  <h3><i class="fa fa-angle-right"></i>Listado de Alumnos en Grupos</h3>

                  <!-- BASIC FORM ELELEMNTS -->
                  <div class="row mt">
                      <div class="col-lg-12">
                          <div class="form-panel">
                                  <div class="form-group">
                                      <div class="col-sm-12">
                                          <label for="grupo">Grupo: </label>
                                          <select class="form-control" name="grupo">
                                              <c:forEach items="${BeanGrupos.ConsTodo()}" var="fila">
                                                  <option value="${fila.codiGrup}">${fila.nombGrup}</option>
                                              </c:forEach>
                                          </select>
                                      </div>
                                      
                                  </div>
                                      
                                      
                              <div class="col s12 center-align">
                                  <input type="submit" name="accionBtn" value="Guardar" class="btn btn-default" />                                        
                              </div>    
                          </div>
                      </div><!-- col-lg-12-->      	
                  </div><!-- /row -->
              </section>      
      </section><!-- /MAIN CONTENT -->
      </form>
      <!--main content end-->
      <!--footer start-->
      <jsp:include page="INCLUDES/FOOTER.jsp" flush="true" />
      <!--footer end-->
  </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>
    <script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>


    <!--common script for all pages-->
    <script src="assets/js/common-scripts.js"></script>

    <!--script for this page-->
    <script src="assets/js/jquery-ui-1.9.2.custom.min.js"></script>

	<!--custom switch-->
	<script src="assets/js/bootstrap-switch.js"></script>
	
	<!--custom tagsinput-->
	<script src="assets/js/jquery.tagsinput.js"></script>
	
	<!--custom checkbox & radio-->
	<script type="text/javascript" src="assets/js/bootstrap-inputmask/bootstrap-inputmask.min.js"></script>
	

  </body>
</html>
