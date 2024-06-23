<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@page import="java.util.*" %>
    <%@page import="model.TblProductocl2" %>
    
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>
 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listado Productos</title>
</head>
<body>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }
    .container {
        width: 80%;
        margin: 20px auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    h2 {
        text-align: center;
        color: #333;
        margin-bottom: 20px;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        border: 1px solid #ddd;
    }
    th, td {
        padding: 10px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }
    tr:nth-child(even) {
        background-color: #f2f2f2;
    }
    tr:hover {
        background-color: #ddd;
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

<h2 align="center">Listado de Productos</h2>

<h2 align="center">
<a href="RegistrarProducto.jsp" style="text-decoration: none;color:blue;">Registrar Producto</a>
</h2>

<table border="2" align="center">

<tr>
<td>Codigo Prod</td>
<td>Nombre</td>
<td>Precio Venta</td>
<td>Precio Compra</td>
<td>Estado</td>
<td>Descripcion</td>
</tr>


<%
List <TblProductocl2> listadoproducto=(List<TblProductocl2>)request.getAttribute("listadodeproductos");

//Aplicamos la condicion

if(listadoproducto!=null){
	//Aplicamos bucle for
	
	for(TblProductocl2 lis:listadoproducto){
		%>
		<tr>
		<td><%=lis.getIdproductocl2() %></td>
		<td><%=lis.getNombrecl2() %></td>
		<td><%=lis.getPrecioventacl2() %></td>
		<td><%=lis.getPreciocompcl2() %></td>
		<td><%=lis.getEstadocl2() %></td>
		<td><%=lis.getDescripcl2() %></td>
		</tr>
		<% 
	}
	%>
	<%
}
 %>










</body>
</html>