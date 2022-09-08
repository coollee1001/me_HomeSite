package com.mayeye.module.kor.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/kor")
public class KorsiteController {

	@GetMapping("/{title}")
	public String compnay(@PathVariable String title, Model model) {
		model.addAttribute("tab", "intro");
		return "kor/"+title+"/intro";
	}
	
	
	@RequestMapping(value = "/{title}/{form}", method = {RequestMethod.GET, RequestMethod.POST})
	public String moveCompanyForm(@PathVariable String title, @PathVariable String form, Model model,
				@RequestParam(name = "type", defaultValue = "-1") String type) {
		model.addAttribute("tab", form);
		
		return "kor/"+title+"/"+form;
	}
}
