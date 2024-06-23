<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registrar Producto</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }
    .container {
        width: 50%;
        margin: 0 auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    h2 {
        text-align: center;
        color: #333;
    }
    form {
        margin-top: 20px;
    }
    table {
        width: 100%;
        border-collapse: collapse;
    }
    th, td {
        padding: 10px;
        text-align: left;
    }
    input[type="text"], input[type="number"] {
        width: 100%;
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }
    input[type="submit"] {
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 4px;
        padding: 10px 20px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }
    input[type="submit"]:hover {
        background-color: #0056b3;
    }
    a {
        display: block;
        text-align: center;
        margin-top: 20px;
        text-decoration: none;
        color: #007bff;
        font-weight: bold;
    }
</style>
</head>
<body>

<div class="container">
    <h2>Registrar Producto</h2>

    <form action="ControladorProducto" method="post">
        <table>
            <tr>
                <td>Nombre</td>
                <td><input type="text" name="nombre" required="required"></td>
            </tr>
            <tr>
                <td>Precio Venta</td>
                <td><input type="number" name="precioV" required="required"></td>
            </tr>
            <tr>
                <td>Precio Compra</td>
                <td><input type="number" name="precioC" required="required"></td>
            </tr>
            <tr>
                <td>Estado</td>
                <td><input type="text" name="estado" required="required"></td>
            </tr>
            <tr>
                <td>Descripción</td>
                <td><input type="text" name="descripcion" required="required"></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Registrar Producto">
                </td>
            </tr>
        </table>
    </form>

    <a href="ListadoProducto.jsp">Ver lista de Productos</a>
</div>

</body>
</html>
