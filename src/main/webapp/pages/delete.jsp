<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "pf.integrador.java.MysqlConexion" %>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trabajo Integrador</title>
</head>
<body>

<%
	
	//MysqlConexion conexion = new MysqlConexion();
	
	Connection cn = MysqlConexion.conectar();
	
	try {
	
		Statement stm = cn.createStatement();
	
		ResultSet rsId = stm.executeQuery("SELECT MAX(id) FROM ticket");
	
		while(rsId.next()) {
			int idMax = rsId.getInt(1);
			
			String query = "UPDATE ticket SET activo = '0' WHERE id = "+idMax+"";
			
			stm.executeUpdate(query);
			
		}
		
	} catch(Exception e) {
		//out.println("No se enviaron los datos");
		e.printStackTrace();
	}
	
%>

<jsp:include page = "./index.html"></jsp:include>

</body>
</html>