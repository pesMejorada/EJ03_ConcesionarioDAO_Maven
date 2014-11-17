package es.concesionario.controlador;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.concesionario.modelo.Negocio;



/**
 * Servlet implementation class BorrarServlet
 */
@WebServlet("/Borrar")
public class BorrarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BorrarServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	         int id = Integer.parseInt(request.getParameter("consulta"));
	     
	         Negocio negocio = new Negocio();
	         negocio.borrar(id);
	         request.setAttribute("coche",id);
	         RequestDispatcher rd;
	         rd= request.getRequestDispatcher("vistaMensaje.jsp");
	         rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
