<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "pf.integrador.java.MysqlConexion" %>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Comprar Tickets</title>
</head>
<body>

<%
	String nombre = request.getParameter("nombre");
	String apellido = request.getParameter("apellido");
	String mail = request.getParameter("mail");
	String cantidad = request.getParameter("cantidad");
	String categoria = request.getParameter("categoria");	
	//out.print(nombre + apellido + mail + cantidad + categoria);
	
	//MysqlConexion conexion = new MysqlConexion();
	
	Connection cn = MysqlConexion.conectar();
	
	try {
	
		Statement stm = cn.createStatement();
	
		ResultSet rsId = stm.executeQuery("SELECT MAX(id) FROM ticket");
	
		while(rsId.next()) {
			int idMax = rsId.getInt(1);
			
			String query = "UPDATE ticket SET nombre = '"+nombre+"', apellido = '"+apellido+"', mail = '"+mail+"', cantidad = '"+cantidad+"', categoria = '"+categoria+"' WHERE id = "+idMax+"";
			
			stm.executeUpdate(query);
			
		}
		
	} catch(Exception e) {
		//out.println("No se enviaron los datos");
		e.printStackTrace();
	}
	
%>

<jsp:include page = "tickets.jsp"></jsp:include>

</body>
</html>