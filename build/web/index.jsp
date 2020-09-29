<%-- 
    Document   : index
    Created on : 11/08/2020, 15:53:07
    Author     : paiz2
--%>
<%@page  import="modelo.Puesto" %>
<%@page import="java.util.HashMap" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Empleados</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    </head>
    <body>
        <h1>Formulario Empleados</h1>
        <div class="container">
            <form action="sr_empleado" method="post" class="form-group">
                <label for="lbl_codigo" ><b>Codigo</b></label>
                <input type="text" name="txt_codigo" id="txt_codigo" class="form-control" placeholder="Ejemplo: E001" required>
                <label for="lbl_nombres" ><b>Nombres</b></label>
                <input type="text" name="txt_nombres" id="txt_nombres" class="form-control" placeholder="Ejemplo: Nombre1 Nombre2" required>
                <label for="lbl_apellidos" ><b>Apellidos</b></label>
                <input type="text" name="txt_apellidos" id="txt_apellidos" class="form-control" placeholder="Ejemplo: Apellido1 Apellido2" required>
                <label for="lbl_direccion" ><b>Direccion</b></label>
                <input type="text"  name="txt_direccion" id="txt_direccion" class="form-control" placeholder="Ejemplo: #Casa calle zona ciudad" required>
                <label for="lbl_telefono" ><b>Telefono</b></label>
                <input type="number" name="txt_telefono" id="txt_telefono" class="form-control" placeholder="Ejemplo: 5555555" required>
                <label for="lbl_fn" ><b>Nacimiento</b></label>
                <input type="date"  name="txt_fn" id="txt_fn" class="form-control" required>
                <label for="lbl_puesto" ><b>Puesto</b></label>
                <select name="drop_puesto" id="drop_puesto" class="form-control">
                    <%
                       Puesto puesto = new Puesto();
                       HashMap<String,String> drop = puesto.drop_sangre();
                       for (String i: drop.keySet()){
                          out.println("<option value='" + i + "' >" + drop.get(i) +"</option>");
                       }
                    %>
                </select>
                <br>
                <button name="btn_agregar" id="btn_agregar"  value="agregar" class="btn btn-primary btn-lg">Agregar</button>
                <button name="btn_modificar" id="btn_modificar"  value="modificar" class="btn btn-primary btn-lg">Modificar</button>
            </form>
                </div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html>
