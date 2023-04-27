package com.loldata.www.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.loldata.www.service.Ex_service;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class HomeController {
	@Autowired
	private Ex_service es;
	
	@GetMapping("/")
	public String home(Model model) {
		return "home";
	}
	@GetMapping("/position")
	public String position_select_page(Model model) {
		return "position_select_page";
	}
	@GetMapping("/champ-select")
	public String champion_select_page(Model model) {
		return "champion_select_page";
	}
	@GetMapping("/champ-counter")
	public String champion_counter_page(Model model) {
		return "champion_counter_page";
	}
	
}
