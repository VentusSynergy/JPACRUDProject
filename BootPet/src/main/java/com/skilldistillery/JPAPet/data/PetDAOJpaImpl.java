package com.skilldistillery.JPAPet.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.JPAPet.entities.Pet;

@Transactional
@Service
public class PetDAOJpaImpl implements PetDAO {
	@PersistenceContext
	private EntityManager em;

	@Override
	public Pet findById(int id) {
		return em.find(Pet.class, id);
	}

	@Override
	public List<Pet> findAll() {
		String sqlText = "SELECT pet from Pet pet";
		List<Pet> result = em.createQuery(sqlText, Pet.class).getResultList();
		return result;
	}
	

}
