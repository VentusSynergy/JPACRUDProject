package com.skilldistillery.JPAPet.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Pet {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String species;
	private int age;

	@Column(name = "location_state")
	private String state;
	private String description;
	private String gender;
	private String color;
	private String health;

	public Pet() {
		super();
	}
	

	public Pet(String name, String species, int age, String state, String description, String gender, String color,
			String health) {
		super();
		this.name = name;
		this.species = species;
		this.age = age;
		this.state = state;
		this.description = description;
		this.gender = gender;
		this.color = color;
		this.health = health;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSpecies() {
		return species;
	}

	public void setSpecies(String species) {
		this.species = species;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getHealth() {
		return health;
	}

	public void setHealth(String health) {
		this.health = health;
	}

	@Override
	public String toString() {
		return "Pet [id=" + id + ", name=" + name + ", species=" + species + ", age=" + age + ", state=" + state
				+ ", description=" + description + ", gender=" + gender + ", color=" + color + ", health=" + health
				+ "]";
	}

}
