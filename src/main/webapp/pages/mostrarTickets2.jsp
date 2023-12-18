<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "pf.integrador.java.MysqlConexion" %>
<%@ page import = "java.sql.*" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

	
	Connection cn = MysqlConexion.conectar();
	
	ResultSet rs;
	
	String query = "SELECT * FROM ticket WHERE activo = '1'";
	
	Statement stm;
	
	stm = cn.createStatement();
	
	rs = stm.executeQuery(query);
	
	
%>

<h1>Mostrar Tickets Total</h1>

	<% while(rs.next()) { %>
	<div style="text-align:center">
		<h2>Ticket de compra <%= rs.getInt(1) %> </h2>
		<p><%= rs.getString(2) %></p>
		<p><%= rs.getString(3) %></p>
		<p><%= rs.getString(4) %></p>
		<p><%= rs.getString(5) %></p>
		<p><%= rs.getString(6) %></p>
		<p><%= rs.getInt(7) %></p>
		<p>Editar</p>
		<p>Eliminar</p>
	</div>
	<% } %>



</body>
</html>