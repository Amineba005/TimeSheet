package tn.esprit.repository;

import org.springframework.data.repository.CrudRepository;

import tn.esprit.entities.Employe;
import tn.esprit.entities.Entreprise;

public interface EntrepriseRepository extends CrudRepository<Entreprise, Integer>  {
	
	
}
