<%-- 
    Document   : reservation-search
    Created on : 27 may. 2022, 17:43:00
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>Buscar cita</title>

    <!-- Normalize V8.0.1 -->
    <link rel="stylesheet" href="./css/normalize.css">

    <!-- Bootstrap V4.3 -->
    <link rel="stylesheet" href="./css/bootstrap.min.css">

    <!-- Bootstrap Material Design V4.0 -->
    <link rel="stylesheet" href="./css/bootstrap-material-design.min.css">

    <!-- Font Awesome V5.9.0 -->
    <link rel="stylesheet" href="./css/all.css">

    <!-- Sweet Alerts V8.13.0 CSS file -->
    <link rel="stylesheet" href="./css/sweetalert2.min.css">

    <!-- Sweet Alert V8.13.0 JS file-->
    <script src="./js/sweetalert2.min.js"></script>

    <!-- jQuery Custom Content Scroller V3.1.5 -->
    <link rel="stylesheet" href="./css/jquery.mCustomScrollbar.css">

    <!-- General Styles -->
    <link rel="stylesheet" href="./css/style.css">


</head>


<body>
    <!-- Main container -->
    <main class="full-box main-container">
        <!-- Nav lateral -->
             <section class="full-box nav-lateral">
            <div class="full-box nav-lateral-bg show-nav-lateral"></div>
            <div class="full-box nav-lateral-content">
                <figure class="full-box nav-lateral-avatar">
                    <i class="far fa-times-circle show-nav-lateral"></i>
                    <img src="./assets/avatar/Avatar.png" class="img-fluid" alt="Avatar">
                    <figcaption class="roboto-medium text-center">
                        Alma Valer  <br><small class="roboto-condensed-light">Administrador</small>
                    </figcaption>
                </figure>
                <div class="full-box nav-lateral-bar"></div>
                <nav class="full-box nav-lateral-menu">
                    <ul>
                        <li>
                            <a href="home.jsp"><i class="fab fa-dashcube fa-fw"></i> &nbsp; Dashboard</a>
                        </li>

                        <li>
                            <a href="#" class="nav-btn-submenu"><i class="fas fa-users fa-fw"></i> &nbsp; Clientes <i class="fas fa-chevron-down"></i></a>
                            <ul>
                                <li>
                                    <a href="client-new.jsp"><i class="fas fa-plus fa-fw"></i> &nbsp; Agregar Cliente</a>
                                </li>
                                <li>
                                    <a href="client-list.jsp"><i class="fas fa-clipboard-list fa-fw"></i> &nbsp; Lista de clientes</a>
                                </li>
                                <li>
                                    <a href="client-search.jsp"><i class="fas fa-search fa-fw"></i> &nbsp; Buscar cliente</a>
                                </li>
                            </ul>
                        </li>

                        <li>
                            <a href="#" class="nav-btn-submenu"><i class="fas fa-pallet fa-fw"></i> &nbsp; Repuestos <i class="fas fa-chevron-down"></i></a>
                            <ul>
                                <li>
                                    <a href="item-new.jsp"><i class="fas fa-plus fa-fw"></i> &nbsp; Agregar Repuestos</a>
                                </li>
                                <li>
                                    <a href="item-list.jsp"><i class="fas fa-clipboard-list fa-fw"></i> &nbsp; Control de Repuestos</a>
                                </li>
                                <li>
                                    <a href="item-search.jsp"><i class="fas fa-search fa-fw"></i> &nbsp; Buscar Repuesto</a>
                                </li>
                            </ul>
                        </li>

                        <li>
                            <a href="#" class="nav-btn-submenu"><i class="fas  fa-user-secret fa-fw"></i> &nbsp; Técnicos <i class="fas fa-chevron-down"></i></a>
                            <ul>
                                <li>
                                    <a href="user-new.jsp"><i class="fas fa-plus fa-fw"></i> &nbsp; Nuevo Técnico</a>
                                </li>
                                <li>
                                    <a href="user-list.jsp"><i class="fas fa-clipboard-list fa-fw"></i> &nbsp; Lista de Técnicos</a>
                                </li>
                                <li>
                                    <a href="user-search.jsp"><i class="fas fa-search fa-fw"></i> &nbsp; Buscar Técnico</a>
                                </li>
                            </ul>
                        </li>

                        <li>
                            <a href="#" class="nav-btn-submenu"><i class="fas fa-file-invoice-dollar fa-fw"></i> &nbsp; Citas <i class="fas fa-chevron-down"></i></a>
                            <ul>
                                <li>
                                    <a href="reservation-new.jsp"><i class="fas fa-plus fa-fw"></i> &nbsp; Atención a domicilio</a>
                                </li>

                                <li>
                                    <a href="reservation-new.jsp"><i class="fas fa-plus fa-fw"></i> &nbsp; Atención en el taller</a>
                                </li>

                                <li>
                                    <a href="reservation-list.jsp"><i class="fas fa-clipboard-list fa-fw"></i> &nbsp; Lista de citas</a>
                                </li>
                                <li>
                                    <a href="reservation-search.jsp"><i class="fas fa-search-dollar fa-fw"></i> &nbsp; Buscar Cita</a>
                                </li>
                                <li>
                                    <a href="reservation-pending.jsp"><i class="fas fa-hand-holding-usd fa-fw"></i> &nbsp; Reporte de citas</a>
                                </li>
                            </ul>
                        </li>

                        
                    </ul>
                </nav>
            </div>
        </section>

        <!-- Page content -->
        <section class="full-box page-content">
            <nav class="full-box navbar-info">
                <a href="#" class="float-left show-nav-lateral">
                    <i class="fas fa-exchange-alt"></i>
                </a>
                <a href="user-update.jsp">
                    <i class="fas fa-user-cog"></i>
                </a>
                <a href="#" class="btn-exit-system">
                    <i class="fas fa-power-off"></i>
                </a>
            </nav>

            <!-- Page header -->
            <div class="full-box page-header">
                <h3 class="text-left">
                    <i class="fab fa-dashcube fa-fw"></i> &nbsp; DASHBOARD
                </h3>
                <p class="text-justify">
                    El Taller UTP, es una empresa se dedica a la reparación y mantenimiento de aparatos de computo de todas las marcas, cuenta con un servicio técnico que atiende las solicitudes de instalaciones, reparaciones y mantenimiento para brindar la mejor experiencia a los clientes.
                </p>
            </div>
            <div class="container-fluid">
                <ul class="full-box list-unstyled page-nav-tabs">
                    <li>
                        <a href="reservation-new.jsp"><i class="fas fa-plus fa-fw"></i> &nbsp; NUEVO PRÉSTAMO</a>
                    </li>
                    <li>
                        <a href="reservation-list.jsp"><i class="fas fa-clipboard-list fa-fw"></i> &nbsp; LISTA DE PRÉSTAMOS</a>
                    </li>
                    <li>
                        <a class="active" href="reservation-search.jsp"><i class="fas fa-search-dollar fa-fw"></i> &nbsp; BUSCAR PRÉSTAMOS</a>
                    </li>
                    <li>
                        <a href="reservation-pending.jsp"><i class="fas fa-hand-holding-usd fa-fw"></i> &nbsp; PRÉSTAMOS PENDIENTES</a>
                    </li>
                </ul>
            </div>
            
            <!--CONTENT-->
            <div class="container-fluid">
				<form class="form-neon" action="">
					<div class="container-fluid">
						<div class="row justify-content-md-center">
							<div class="col-12 col-md-6">
								<div class="form-group">
									<label for="inputSearch" class="bmd-label-floating">¿Qué cita estas buscando?</label>
									<input type="text" class="form-control" name="busqueda_reservation" id="inputSearch" maxlength="30">
								</div>
							</div>
							<div class="col-12">
								<p class="text-center" style="margin-top: 40px;">
									<button type="submit" class="btn btn-raised btn-info"><i class="fas fa-search"></i> &nbsp; BUSCAR</button>
								</p>
							</div>
						</div>
					</div>
				</form>
			</div>

			
			<div class="container-fluid">
				<form action="">
					<input type="hidden" name="eliminar_busqueda_reservation" value="eliminar">
					<div class="container-fluid">
						<div class="row justify-content-md-center">
							<div class="col-12 col-md-6">
								<p class="text-center" style="font-size: 20px;">
									Resultados de la busqueda <strong>“Buscar”</strong>
								</p>
							</div>
							<div class="col-12">
								<p class="text-center" style="margin-top: 20px;">
									<button type="submit" class="btn btn-raised btn-danger"><i class="far fa-trash-alt"></i> &nbsp; ELIMINAR BÚSQUEDA</button>
								</p>
							</div>
						</div>
					</div>
				</form>
			</div>


			 <div class="container-fluid">
				<div class="table-responsive">
					<table class="table table-dark table-sm">
						<thead>
							<tr class="text-center roboto-medium">
								<th>#</th>
								<th>CLIENTE</th>
								<th>FECHA DE CITA</th>
								<th>TECNICO</th>
								<th>ESTADO</th>
								<th>FACTURA</th>
								<th>ACTUALIZAR</th>
								<th>PAGOS</th>
								<th>ELIMINAR</th>
							</tr>
						</thead>
						<tbody>
							<tr class="text-center" >
								<td>1</td>
								<td>NOMBRE CLIENTE</td>
								<td>2017/10/8</td>
								<td>POOL MENDOZA</td>
								<td>Pendiente</td>
								<td>
									<a href="#" class="btn btn-info">
	  									<i class="fas fa-file-pdf"></i>	
									</a>
								</td>
								<td>
									<a href="reservation-update.jsp" class="btn btn-success">
	  									<i class="fas fa-sync-alt"></i>	
									</a>
								</td>
								<td>
									<a href="payment.jsp" class="btn btn-info">
	  									<i class="fas fa-dollar-sign"></i>	
									</a>
								</td>
								<td>
									<form action="">
										<button type="button" class="btn btn-warning">
		  									<i class="far fa-trash-alt"></i>
										</button>
									</form>
								</td>
							</tr>
							<tr class="text-center" >
								<td>2</td>
								<td>NOMBRE CLIENTE</td>
								<td>2017/10/8</td>
								<td>LANDRUX MENDOZA</td>
								<td>Finalizado</td>
								<td>
									<a href="#" class="btn btn-info">
	  									<i class="fas fa-file-pdf"></i>	
									</a>
								</td>
								<td>
									<a href="reservation-update.jsp" class="btn btn-success">
	  									<i class="fas fa-sync-alt"></i>	
									</a>
								</td>
								<td>
									<a href="payment.jsp" class="btn btn-info">
	  									<i class="fas fa-dollar-sign"></i>	
									</a>
								</td>
								<td>
									<form action="">
										<button type="button" class="btn btn-warning">
		  									<i class="far fa-trash-alt"></i>
										</button>
									</form>
								</td>
							</tr>
							<tr class="text-center" >
								<td>3</td>
								<td>NOMBRE CLIENTE</td>
								<td>2017/10/8</td>
								<td>ALMA VALER VILCA</td>
								<td>Finalizado</td>
								<td>
									<a href="#" class="btn btn-info">
	  									<i class="fas fa-file-pdf"></i>	
									</a>
								</td>
								<td>
									<a href="reservation-update.jsp" class="btn btn-success">
	  									<i class="fas fa-sync-alt"></i>	
									</a>
								</td>
								<td>
									<a href="payment.jsp" class="btn btn-info">
	  									<i class="fas fa-dollar-sign"></i>	
									</a>
								</td>
								<td>
									<form action="">
										<button type="button" class="btn btn-warning">
		  									<i class="far fa-trash-alt"></i>
										</button>
									</form>
								</td>
							</tr>
							<tr class="text-center" >
								<td>4</td>
								<td>NOMBRE CLIENTE</td>
								<td>2017/10/8</td>
								<td>ALMA VALER VILCA</td>
								<td>Pendiente</td>
								<td>
									<a href="#" class="btn btn-info">
	  									<i class="fas fa-file-pdf"></i>	
									</a>
								</td>
								<td>
									<a href="reservation-update.jsp" class="btn btn-success">
	  									<i class="fas fa-sync-alt"></i>	
									</a>
								</td>
								<td>
									<a href="payment.jsp" class="btn btn-info">
	  									<i class="fas fa-dollar-sign"></i>	
									</a>
								</td>
								<td>
									<form action="">
										<button type="button" class="btn btn-warning">
		  									<i class="far fa-trash-alt"></i>
										</button>
									</form>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<nav aria-label="Page navigation example">
					<ul class="pagination justify-content-center">
						<li class="page-item disabled">
							<a class="page-link" href="#" tabindex="-1">Previous</a>
						</li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item">
							<a class="page-link" href="#">Next</a>
						</li>
					</ul>
				</nav>
			</div>
        </section>
    </main>
    
    	
	<!--=============================================
	=            Include JavaScript files           =
	==============================================-->
	<!-- jQuery V3.4.1 -->
	<script src="./js/jquery-3.4.1.min.js" ></script>

	<!-- popper -->
	<script src="./js/popper.min.js" ></script>

	<!-- Bootstrap V4.3 -->
	<script src="./js/bootstrap.min.js" ></script>

	<!-- jQuery Custom Content Scroller V3.1.5 -->
	<script src="./js/jquery.mCustomScrollbar.concat.min.js" ></script>

	<!-- Bootstrap Material Design V4.0 -->
	<script src="./js/bootstrap-material-design.min.js" ></script>
	<script>$(document).ready(function() { $('body').bootstrapMaterialDesign(); });</script>

	<script src="./js/main.js" ></script>
</body>
</html>
