package grupo5.dao;


import java.util.List;
import java.util.Set;

import grupo5.entidad.Autores;

public interface IAutoresDao {
	
	public boolean hayRegistros(); 
	
	public boolean cargarTablaDefault(List<Autores> autores);
	
	public Autores obtenerPorId(int id);
}
