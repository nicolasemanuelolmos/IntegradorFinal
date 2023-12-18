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

<table>
	<tr>
		<th>id</th>
		<th>Nombre</th>
		<th>Apellido</th>
		<th>Email</th>
		<th>Cantidad</th>
		<th>Categoria</th>
		<th>Activo</th>
	</tr>
	<% while(rs.next()) { %>
	<tr>
		<td><%= rs.getInt(1) %></td>
		<td><%= rs.getString(2) %></td>
		<td><%= rs.getString(3) %></td>
		<td><%= rs.getString(4) %></td>
		<td><%= rs.getString(5) %></td>
		<td><%= rs.getString(6) %></td>
		<td><%= rs.getInt(7) %></td>
	</tr>
	<% } %>
</table>


</body>
</html>