function EliminarTicket () {
	window.location = "delete.jsp";
	
}

const btnDell = document.getElementById("btnDelete");

btnDell.addEventListener("click", EliminarTicket);