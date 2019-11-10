package com.skilldistillery.JPAPet.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.JPAPet.data.PetDAO;
import com.skilldistillery.JPAPet.entities.Pet;

@Controller
public class PetController {

	@Autowired
	PetDAO dao;

	@RequestMapping(path = "/", method = RequestMethod.GET)
	public String index() {
		return "/WEB-INF/index.jsp";
	}

	@RequestMapping(path = "showAll.do", method = RequestMethod.GET)
	public String index(Model model) {
		// TODO : Retrieve film list, add it to the model.
		List<Pet> pet = dao.findAll();
		System.out.println(pet);
		model.addAttribute("pet", pet);
		return "WEB-INF/showAll.jsp";
	}

	@RequestMapping(path = "showPet.do", method = RequestMethod.GET)
	public ModelAndView getPet(@RequestParam("pets") int pet) {
		ModelAndView mv = new ModelAndView();
		Pet search = dao.findById(pet);

		mv.addObject("pet", search);
		mv.setViewName("WEB-INF/description.jsp");
		return mv;
	}

	@RequestMapping(path = "createPetPage.do", method = RequestMethod.GET)
	public String addPage() {

		return "/WEB-INF/create.jsp";
	}

	@RequestMapping(path = "createPet.do", method = RequestMethod.GET)
	public ModelAndView creation(Pet insert) {
		ModelAndView mv = new ModelAndView();
		Pet pet = dao.newPet(insert);

		mv.addObject("pet", pet);
		mv.setViewName("/");

		return mv;
	}

	@RequestMapping(path = "delete.do", method = RequestMethod.GET)
	public ModelAndView deletion(@RequestParam("pets") int id) {
		ModelAndView mv = new ModelAndView();
		boolean result = dao.deletePet(id);
		mv.addObject(result);
		mv.setViewName("/");

		return mv;

	}

	@RequestMapping(path = "change.do", method = RequestMethod.GET)
	public ModelAndView modify(Pet pet) {
		int val = pet.getId();
		ModelAndView mv = new ModelAndView();
		Pet update = dao.modifyPet(val, pet);
		mv.addObject("update", update);
		mv.setViewName("/");

		return mv;
	}

	@RequestMapping(path = "mod.do", method = RequestMethod.GET)
	public ModelAndView modPet(@RequestParam("modify") int pet) {
		ModelAndView mv = new ModelAndView();
		Pet search = dao.findById(pet);

		mv.addObject("pet", search);
		mv.setViewName("WEB-INF/modify.jsp");
		return mv;
	}

}
