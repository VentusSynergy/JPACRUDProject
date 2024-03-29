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

	@Override
	public Pet newPet(Pet pet) {
		em.persist(pet);
        em.flush();
		return pet;
	}

	@Override
	public boolean deletePet(int id) {
		boolean delete = false;
		Pet pet = em.find(Pet.class, id);
		if (pet != null) {
            em.remove(pet);
        }        delete = ! em.contains(pet);
        
		
		return delete;
		
		
	}

	@Override
	public Pet modifyPet(Pet pet) {
		Pet mod = em.find(Pet.class, pet.getId());
		System.out.println(mod.toString());
		mod.setHealth(pet.getHealth());
		
		
		return mod;
	}

	@Override
	public List<Pet> search(String input) {
		System.out.println("input: " +input);
		String sqlText = "SELECT pet from Pet pet where species = :bind";
		List<Pet> result = em.createQuery(sqlText, Pet.class).setParameter("bind", input).getResultList();
		for (Pet pet : result) {
			System.out.println(pet);
		}
		return result;
	}

}
