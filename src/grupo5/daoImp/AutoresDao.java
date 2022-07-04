package grupo5.daoImp;


import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import grupo5.dao.IAutoresDao;
import grupo5.entidad.Autores;

@Repository("autorDao")
public class AutoresDao implements IAutoresDao {

	@Autowired
	private Conexion conexion;


	@Override
	public boolean cargarTablaDefault(Set<Autores> autores) {
		Session session = conexion.abrirConexion();
		Transaction t = session.beginTransaction();
		boolean aux = true;
		try {
			for(Autores a : autores) {
				session.save(a);
			}
			session.getTransaction().commit();
		} catch(HibernateException e) {
			aux=false;
			t.rollback();
			e.printStackTrace();
		}
		conexion.cerrarSession();
		return aux;
	}


	@Override
	public Autores obtenerPorId(int id) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public int contarEnTabla() {
		Session session = conexion.abrirConexion();
		List<Autores> autores = new ArrayList<Autores>();
		autores = session.createQuery("from Autores").list();
		return autores.size();
	}
}