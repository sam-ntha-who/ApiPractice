package co.grandcircus.ApiPractice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.grandcircus.ApiPractice.service.ApiService;

// https://grandcircusco.github.io/demo-apis/

@Controller
public class HomeController {
	
	@Autowired
	private ApiService apiService;
	
	@RequestMapping("/")
	private String showIndex() {
		return "index";
	}
	
	@RequestMapping ("planetInfo")
	private String showPlanets(Model model) {
		model.addAttribute("planets", apiService.getPlanetInfo());
		return "planetInfo";
	
	}
	
	@RequestMapping("CSHallofFame")
	private String getHallofFame(Model model) {
		model.addAttribute("scientist", apiService.getCSHallofFame());
		return "CSHallofFame";
	}
	
	@RequestMapping("gcInfo") 
	private String getGCInfor(Model model) {
		model.addAttribute("info", apiService.getGrandCircusInfo());
		return "gcInfo";
	}
	
	@RequestMapping("blog")
	private String getBlog(Model model) {
		model.addAttribute("blog", apiService.getBlogInfo());
		return "blog";
	}
	
}
