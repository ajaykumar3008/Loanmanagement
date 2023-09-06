package com.ORM;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class EmpController {
	Service s;

	@Autowired
	public EmpController(Service s) {
		this.s = s;
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model mod, @RequestParam("click") String click) {
		mod.addAttribute("Emp", s.getEmp(click));
		return "login";
	}

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String login(Model mod) {
		mod.addAttribute("Emp", s.getEmp());
		return "login";
	}

	@RequestMapping(value = "/crud", method = RequestMethod.GET)
	public String Crud(Model mod, @RequestParam("click") String click) {
		mod.addAttribute("Emp", s.getEmp(click));
		return "login";
	}
}
