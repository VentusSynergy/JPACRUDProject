package com.skilldistillery.JPAPet.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.JPAPet.data.PetDAO;

@Controller
public class PetController {

	@Autowired
	PetDAO dao;
	
	@RequestMapping(path = "/", method = RequestMethod.GET)
	public String index() {

		return "/WEB-INF/index.jsp";
	}

}
