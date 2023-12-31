<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Registro</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>

<body >
    <div class="bg-ligth border rounded m-3 p-2 d-flex flex-column align-items-center ">
        <div class="fs-4 my-3">Registro de Usuario</div>
        <!-- <div class="fs-4 my-3" onmouseover="alert('hola')">Registro de Usuario</div> -->

        <!-- formualrio con usuario pass -->
        <div>
            <form action="../controller/addUser.jsp" method="post">
                <input type="text" onkeyup="validarUser()" name="user" id="user" class="form-control mb-3" placeholder="usuario" required>
                <!-- <input type="password" onkeyup="mostrarFortCant()" name="pass" id="pass" class="form-control mb-3" placeholder="contrasenia" required> -->
                <div class="input-group mb-3">
                    <input type="password" id="pass" name="pass"  onkeyup="validarPassDiscriminada()" class="form-control" placeholder="constraseņa" aria-label="Username" aria-describedby="basic-addon1">
                    <span class="input-group-text" id="basic-addon1">
                        <a href="#">
                            <i class="bi bi-eye-slash-fill" id="icono" onclick="mostrarPass()"></i>
                        </a>
                    </span>
                </div>
                  
                <input type="text" name="repPass" id="repPass" class="form-control mb-3" placeholder="reingrese contraseņa" required>
                <input type="submit" value="Registrar" class="btn btn-outline-success mb-3">
                <input type="reset" value="Limpiar" class="btn btn-outline-success mb-3">
                <div id="mensaje"></div>
            </form>

        </div>
        <% 
			String mensaje=request.getParameter("mensaje");
			if(mensaje!=null) {
				out.println("<div class='bg-warning text-center p-1 rounded'>");
				out.println(mensaje);
				out.println("</div>");
			}	
		%>		
    </div>
    

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>

    <script src="js/registro.js"></script>    
</body>

</html>