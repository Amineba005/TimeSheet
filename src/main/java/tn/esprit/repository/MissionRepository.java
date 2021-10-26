package tn.esprit.repository;

import org.springframework.data.repository.CrudRepository;

import tn.esprit.entities.Mission;


public interface MissionRepository extends CrudRepository<Mission, Integer> {

}
