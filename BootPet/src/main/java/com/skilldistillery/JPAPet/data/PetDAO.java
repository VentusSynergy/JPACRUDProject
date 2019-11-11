package com.skilldistillery.JPAPet.data;

import java.util.List;

import com.skilldistillery.JPAPet.entities.Pet;

public interface PetDAO {

	Pet findById(int id);

	List<Pet> findAll();

	Pet newPet(Pet pet);

	boolean deletePet(int id);

	Pet modifyPet(Pet pet);
	
	List<Pet> search(String input);

}
