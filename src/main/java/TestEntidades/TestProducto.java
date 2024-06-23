package TestEntidades;

import Dao.ClassProductoImp;
import model.TblProductocl2;

public class TestProducto {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		TblProductocl2 producto=new TblProductocl2();
		ClassProductoImp crud=new ClassProductoImp();
		
		//asignamos valores
		producto.setNombrecl2("Mouse");
		producto.setPrecioventacl2(90);
		producto.setPreciocompcl2(100);
		producto.setEstadocl2("Nuevo");
		producto.setDescripcl2("G502 Logitech");
		//invocamos al metodo registrar...
		crud.RegistrarProducto(producto);
		
	}

}
