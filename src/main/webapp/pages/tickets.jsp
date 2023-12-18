<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Comprar tickets</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/styles.css">
</head>
<body>
    <header>
        <div class="logo">
            <img src="/bootstrap-5.3.2-dist/assets/img/codoacodo.jpg" alt="Logo codo a codo">
            <h2>Conf Bs As</h2>
        </div>
        <nav>
            <a href="../index.html">La conferencia</a>
            <a href="#oradores">Los oradores</a>
            <a href="#lugar">Lugar y fecha</a>
            <a href="#convert">Convirértete en orador</a>
            <a class="ticket" href="./pages/ticket.html" target="_blank">Comprar tickets</a>
        </nav>
    </header>

    <div class="bodyProject">
        <div class="container general pt-3">
            <div class="row justify-content-center">
                <div class="col-lg-8 col-xl-7">
                    <div class="row row-cols-1 row-cols-md-3 text-center">
                        <div class="col">
                            <div class="card mb-4 rounded-3 shadow-sm border-primary">
                                <div class="card-header py-3 text-black border-primary">
                                    <h4 class="my-0 fw-normal">Estudiante</h4>
                                </div>
                                <div class="card-body">
                                    <p>Tienen un descuento</p>
                                    <h3 class="card-title pricing-card-title">80%</h3>
                                    <small class="fw-light text-muted mt-3">* presentar documentación</small>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card mb-4 rounded-3 shadow-sm border-info">
                                <div class="card-header py-3 text-black border-info">
                                    <h4 class="my-0 fw-normal">Trainee</h4>
                                </div>
                                <div class="card-body">
                                    <p>Tienen un descuento</p>
                                    <h3 class="card-title pricing-card-title">50%</h3>
                                    <small class="fw-light text-muted mt-3">* presentar documentación</small>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card mb-4 rounded-3 shadow-sm border-warning">
                                <div class="card-header py-3 text-black border-warning">
                                    <h4 class="my-0 fw-normal">Junior</h4>
                                </div>
                                <div class="card-body">
                                    <p>Tienen un descuento</p>
                                    <h3 class="card-title pricing-card-title">15%</h3>
                                    <small class="fw-light text-muted mt-3">* presentar documentación</small>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="saleText">
                        <h2 class="title">Venta</h2>
                        <p>VALOR DEL TICKET $200</p>
                    </div>
                    <form action="Update.jsp">
                        <div class="row gx-2">
                            <div class="col-md mb-3">
                                <input id="nombre" type="text" name="nombre" value="<%= request.getParameter("nombre") %>" class="form-control" placeholder="Nombre" aria-label="Nombre"
                                    required>
                            </div>
                            <div class="col-md mb-3">
                                <input id="apellido" type="text" name="apellido" value="<%= request.getParameter("apellido") %>" class="form-control" placeholder="Apellido"
                                    aria-label="Apellido" id="apellido" required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col mb-3">
                                <input id="mail" type="email" name="mail" value="<%= request.getParameter("mail") %>" class="form-control" placeholder="Correo" aria-label="Email"
                                    id="mail" required>
                            </div>
                        </div>
                        <div class="row gx-2">
                            <div class="col-md mb-3">
                                <label for="numberTickets" class="form-label">Cantidad</label>
                                <input id="cantidad" type="number" name="cantidad" value="<%= request.getParameter("cantidad") %>" class="form-control" placeholder="Cantidad"
                                    aria-label="Cantidad" id="numberTickets" min="1" required>
                            </div>
                            <div class="col-md mb-3">
                                <label for="categorySelector" class="form-label">Categoría</label>
                                <select id="categoria" name="categoria" class="form-select" aria-label="Categoría" id="categorySelector">
                                    <option selected> <%= request.getParameter("categoria") %>" </option>
                                    <option value="Sin categoría">Sin Categoria</option>
                                    <option value="Estudiante">Estudiante</option>
                                    <option value="Trainee">Trainee</option>
                                    <option value="Junior">Junior</option>
                                </select>
                            </div>
                        </div>
                        <div class="alert mt-2 mb-4" id="totalPag" role="alert">Total a pagar: $ <span id="total"></span></div>
                        <div class="row gx-2 mb-2">
                            <div class="col-md mb-3">
                                <button type="button" class="w-100 btn btn-lg btn-form " id="btnDelete">Eliminar</button>
                            </div>
                            <div class="col-md mb-3">
                                <button type="submit" class="w-100 btn btn-lg btn-form buttonColor" id="btnResumen">Modificar</button>
                            </div>
                            <div class="col-md mb-3">
                                <button type="button" class="w-100 btn btn-lg btn-form " onclick ="location.href='../index.html'" id="btnBorrar">Confirmar</button>
                            </div>
                            <div class="col-md mb-3">
                                <button type="button" class="w-100 btn btn-lg btn-form " onclick ="location.href='mostrarTickets.jsp'" id="btnBorrar">Mostrar Tickets</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <footer>
        <nav>
            <a href="">Preguntas frecuentes</a>
            <a href="">Contáctanos</a>
            <a href="">Prensa</a>
            <a href="">Conferencias</a>
            <a href="">Términos y condiciones</a>
            <a href="">Privacidad</a>
            <a href="">Estudiantes</a>
        </nav>
    </footer>
    <script src="/ProyectoIntegrador/bootstrap-5.3.2-dist/js/script.js"></script>
    <script src="/ProyectoIntegrador/bootstrap-5.3.2-dist/js/main.js"></script>
    <script src="/ProyectoIntegrador/bootstrap-5.3.2-dist/js/main.js"></script>
</body>
</html>