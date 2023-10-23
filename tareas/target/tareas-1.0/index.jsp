
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">


        <link rel="stylesheet" href="./css/style.css">
       
       
        
        
        
        <title>incio</title>
    </head>
    <body>
        
        <style>
            
            body {
  background: linear-gradient(45deg, rgba(66, 183, 245, 0.8) 0%, rgba(66, 245, 189, 0.4) 100%);
  color: rgba(0, 0, 0, 0.6);
  font-family: "Roboto", sans-serif;
  font-size: 14px;
  line-height: 1.6em;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
            
        </style>
        
        <section class="vh-100 py-5">
            <div class="container-fluid h-custom">
              <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-md-9 col-lg-6 col-xl-5">
                  <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
                    class="img-fluid" alt="Sample image">
                </div>
                <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
                    
                    <form action="SvUsuarios" method="GET">
                    <div class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start">
                      <p class="lead fw-normal mb-0 me-3">inicia sesión con</p>
                      <button type="button" class="btn btn-primary btn-floating mx-1">
                        <i class="fab fa-facebook-f"></i>
                      </button>

                      <button type="button" class="btn btn-primary btn-floating mx-1">
                        <i class="fab fa-twitter"></i>
                      </button>

                      <button type="button" class="btn btn-primary btn-floating mx-1">
                        <i class="fab fa-linkedin-in"></i>
                      </button>
                    </div>

                    <div class="divider d-flex align-items-center my-4">
                      <p class="text-center fw-bold mx-3 mb-0">O</p>
                    </div>

                    <!-- Email input -->
                    <div class="form-outline mb-2">
                      <input type="text" id="form3Example3" class="form-control form-control-lg"
                             placeholder="usuario"  name="nombre_usuario"/>
                      <label class="form-label" for="form3Example3">Nombre Usuario</label>
                    </div>

                    <!-- Password input -->
                    <div class="form-outline mb-2">
                      <input type="password" id="form3Example4" class="form-control form-control-lg"
                        placeholder="Ingresa contraseña" name="contrasenia"/>
                      <label class="form-label" for="form3Example4">Contraseña</label>
                    </div>

                    <div class="d-flex justify-content-between align-items-center">
                      <!-- Checkbox -->
                      <div class="form-check mb-0">
                        <input class="form-check-input me-0" type="checkbox" value="" id="form2Example3" />
                        <label class="form-check-label" for="form2Example3">
                          recordar datos
                        </label>
                      </div>
                      <a href="#!" class="text-body">¿has olvidado tu contraseña?</a>
                    </div>
                     <div class="text-center text-lg-start mt-1 pt-1">
                         <button type="submit" class="btn btn-primary btn-lg opacity-75"
                          style="padding-left: 1.0rem; padding-right: 1.0rem;">Iniciar
                        </button>
                        <a href="#" data-bs-toggle="modal" data-bs-target="#registroModal" style="color: #393f81;">Regístrate aquí</a>

                      </div>
                    

                  </form>
                </div>
              </div>
            </div>
            
           
          </section>

        <!-- Ventana Modal de Registro -->
        <div class="modal fade" id="registroModal" tabindex="-1" aria-labelledby="registroModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="registroModalLabel">Registro de nuevo usuario</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="SvUsuarios" method="POST">
                    <!-- Input para el nombre -->
                    <div class="input-group mb-3">
                        <label class="input-group-text" for="nombre">Nombre:</label>
                        <input type="text" name="nombre" class="form-control" required>
                    </div>
                    <!-- Input para cedula -->
                    <div class="input-group mb-3">
                        <label class="input-group-text" for="cedula">Cedula:</label>
                        <input type="text" name="cedula" class="form-control" required>
                    </div>
                    <!-- Input para contraseña -->
                    <div class="input-group mb-3">
                        <label class="input-group-text" for="contrasenia">Contraseña:</label>
                        <input type="password" name="contrasenia" class="form-control" required>
                    </div>
                    <!-- Botón para crear usuario -->
                    <input type="submit" value="Crear usuario" class="form-control btn btn-primary">
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
            </div>
        </div>
    </div>
</div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <script>
  var myModal = new bootstrap.Modal(document.getElementById('registroModal'));
</script>

    </body>
</html>
