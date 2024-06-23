package Controlador;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.ClassProductoImp;
import model.TblProductocl2;

/**
 * Servlet implementation class ControladorProducto
 */
public class ControladorProducto extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControladorProducto() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		TblProductocl2 producto= new TblProductocl2();
		ClassProductoImp crud= new ClassProductoImp();
		List<TblProductocl2> listadoProducto=crud.ListadoProducto();
		
		//invocamos el listado  de productos para la vista
		
		request.setAttribute("listadodeproductos", listadoProducto);
		
		//Redireccionamos
		
		request.getRequestDispatcher("/ListadoProducto.jsp").forward(request, response);
	
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		
		
		//recuperamos los valores del formulario...
		
		String nombre= request.getParameter("nombre");
		String precioVenta=request.getParameter("precioV");
		String precioCompra=request.getParameter("precioC");
		String estado=request.getParameter("estado");
		String descripcion = request.getParameter("descripcion");
		
		
		//instanciar las respectivas entidades...
		
		TblProductocl2 productocl2=new TblProductocl2();
		ClassProductoImp crud= new ClassProductoImp();
		
		//asignamos valores
		
		productocl2.setNombrecl2(nombre);
		productocl2.setPrecioventacl2(Double.parseDouble(precioVenta));
		productocl2.setPreciocompcl2(Double.parseDouble(precioCompra));
		productocl2.setEstadocl2(estado);
		productocl2.setDescripcl2(descripcion);
		
		crud.RegistrarProducto(productocl2);
		
		
		//actualizador listado de Productos
				List<TblProductocl2> listadoProducto=crud.ListadoProducto();
				//invocamos el listado  de productos para la vista
				request.setAttribute("listadodeproductos", listadoProducto);
				//redireccionamos
				request.getRequestDispatcher("/ListadoProducto.jsp").forward(request, response);
		
		
	}

}
