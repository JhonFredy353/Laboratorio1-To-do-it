

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String nombreUsuario = request.getParameter("nombreUsuario"); %>
<!DOCTYPE html>
<html lang="en" class=""><head>

  <meta charset="UTF-8">
  <title>CodePen Demo</title>

  <meta name="robots" content="noindex">

  <link rel="shortcut icon" type="image/x-icon" href="https://cpwebassets.codepen.io/assets/favicon/favicon-aec34940fbc1a6e787974dcd360f2c6b63348d4b1f4e06c77743096d55480f33.ico">
  <link rel="mask-icon" href="https://cpwebassets.codepen.io/assets/favicon/logo-pin-b4b4269c16397ad2f0f7a01bcdf513a1994f4c94b8af2f191c09eb0d601762b1.svg" color="#111">
  <link rel="canonical" href="https://codepen.io/andytran/pen/GpyKLM">

   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900|Material+Icons">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

     <style>
        body {
  font-family: sans-serif;
  
}

header {
  background-color: #090333;
  color: #fff;
  padding: 20px;
  background: linear-gradient(45deg, rgba(66, 183, 245, 0.8) 0%, rgba(66, 245, 189, 0.4) 100%);
}

h1 {
  font-size: 2rem;
}

nav {
  margin-top: 20px;
  
}

nav a {
  display: inline-block;
  padding: 10px;
  color: #fff;
  text-decoration: none;
}

nav a:hover {
  background-color: #000;
}

main {
  padding: 20px;
}

section {
  margin-top: 20px;
}

h2 {
  font-size: 1.5rem;
}

table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 10px;
  text-align: center;
}

th {
  background-color: #ccc;
}

footer {
  background: linear-gradient(45deg, rgba(66, 183, 245, 0.8) 0%, rgba(66, 245, 189, 0.4) 100%);
  color: #fff;
  padding: 20px;
  position: fixed;
  bottom: 0;
  left: 0;
  right: 0;
}

    </style> 


    <head>
  <meta charset="UTF-8">
  <title>Tareas</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <header>
     <h1 class="display-3 fw-bold">Bienvenido <%= nombreUsuario %> </h1>
    <nav>
      <a href="index.jsp">Inicio</a>
      <a href="#">Tareas</a>
      
    </nav>
  </header>
  <main>
    <section id="dashboard ">
        <div class="row">
            <div class="col-md-5">
             <div class=" d-flex justify-content-center align-items-center"> <!-- Agrega las clases d-flex, justify-content-center y align-items-center -->
                <div class="card card-body text-center" style="background-color: white; box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1);">
                    <h4 class="text-center" style="color: black;">Agrega tareas</h4>
                    <form action="SvTarea" method="POST">
                        <div class="input-group mb-3">
                            <label class="input-group-text" for="nombre">Id</label>
                            <input type="text" name="id" class="form-control">
                        </div>

                        <div class="input-group mb-3">
                            <label class="input-group-text" for="raza">Titulo</label>
                            <input type="text" name="titulo" class="form-control">
                        </div>
                        <div class="input-group mb-3">
                            <label class="input-group-text" for="nombre">Descripcion</label>
                            <input type="text" name="descripcion" class="form-control">
                        </div>

                        <div class "input-group mb-3">
                            <label class="input-group-text" for="raza">Fecha de vencimiento</label>
                            <input type="date" name="fechav" class="form-control">
                        </div>
                        <button type="submit" class="btn btn-primary" style="background-color: lightblue; border-color: lightblue;">Agregar tarea</button>
                    </form>
                </div>
            </div>
            
        </div>
        
        <div class="col-md-7">
            <table>
            <thead>
              <tr>
                <th>Tarea</th>
                <th>Responsable</th>
                <th>Fecha</th>
                <th>Estado</th>
              </tr>
            </thead>
            <tbody>

            </tbody>
          </table>
        </div>
            
        </div>
        
    </section>
  </main>
  <footer>
    
  </footer>
    

</body>
</html>