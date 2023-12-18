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
	String nombre = request.getParameter("nombre");
	String apellido = request.getParameter("apellido");
	String mail = request.getParameter("mail");
	String cantidad = request.getParameter("cantidad");
	String categoria = request.getParameter("categoria");

	String sql = "INSERT INTO ticket(`nombre`, `apellido`, `mail`, `cantidad`, `categoria`) VALUES ('"+nombre+"', '"+apellido+"', '"+mail+"', '"+cantidad+"', '"+categoria+"')";
	
	//out.print(nombre + apellido + mail + cantidad + categoria);
	
	//MysqlConexion conexion = new MysqlConexion();
	
	Connection cn = MysqlConexion.conectar();
	try {
		Statement stm = cn.createStatement();
		stm.executeUpdate(sql);
		
	} catch(Exception e) {
		out.println("No se enviaron los datos");
		e.printStackTrace();
	}
	
%>

<jsp:include page = "tickets.jsp"></jsp:include>



</body>
</html>