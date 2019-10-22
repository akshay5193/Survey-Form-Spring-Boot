package com.akshay.survey;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@SpringBootApplication
@Controller
public class SurveyApplication {

	public static void main(String[] args) {
		SpringApplication.run(SurveyApplication.class, args);
	}
	
	@RequestMapping("/")
	public String index() {
		return "home.jsp";
	}
	
	@RequestMapping("/result")
	public String surveyResult(@RequestParam("name") String name, @RequestParam("dojo") String dojo, @RequestParam("language")String language, @RequestParam ("comment") String comment, Model model) {
		
		model.addAttribute("name", name);
		model.addAttribute("dojo", dojo);
		model.addAttribute("language", language);
		model.addAttribute("comment", comment);
		
		if(language.contentEquals("Java")) {
			System.out.print("reached here");
			return "java.jsp";
		}
		
//		model.addAttribute("name", name);
//		model.addAttribute("dojo", dojo);
//		model.addAttribute("language", language);
//		model.addAttribute("comment", comment);
		
		return "result.jsp";
	}

}
