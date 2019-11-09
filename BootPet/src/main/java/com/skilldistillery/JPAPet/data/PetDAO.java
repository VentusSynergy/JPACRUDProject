package com.skilldistillery.JPAPet.data;

import java.util.List;

import com.skilldistillery.JPAPet.entities.Pet;

public interface PetDAO {

	Pet findById(int id);

	List<Pet> findAll();
	
	

}
