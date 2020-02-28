package services;

import java.util.List;

public interface ProfilJardinDAO<T,U> {

		boolean create(T o, U m);
		 
	    boolean update(T o, U m);
	 
	    boolean delete(T o, U m);
	 
	    U findById(int idP, int idJ);
	 
	    List<U> findAll(T o);

	}
