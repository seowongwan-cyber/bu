package com.swg.blog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/") // 주소 패턴
public class PortfolioController {

	@RequestMapping("login")
	public String login(Model model) {

		return "login";
	}

	
	@RequestMapping("portfolio")
	public String Portfolio(Model model) {

		return "portfolio";
	}
	
	@RequestMapping("blog")
	public String blog(Model model) {

		return "blog";
	}
	
	@RequestMapping("about")
	public String about(Model model) {

		return "about";
	}

	@RequestMapping("Season/january")
	public String january(Model model) {

		return "Season/january";
	}
	
	@RequestMapping("Season/february")
	public String february(Model model) {

		return "Season/february";
	}
	
	@RequestMapping("Season/march")
	public String march(Model model) {

		return "Season/march";
	}
	
	@RequestMapping("Season/april")
	public String april(Model model) {

		return "Season/april";
	}
	
	@RequestMapping("Season/may")
	public String may(Model model) {

		return "Season/may";
	}
	
	@RequestMapping("Season/june")
	public String june(Model model) {

		return "Season/june";
	}
	
	@RequestMapping("Season/july")
	public String july(Model model) {

		return "Season/july";
	}
	
	@RequestMapping("Season/august")
	public String august(Model model) {

		return "Season/august";
	}
	
	@RequestMapping("Season/september")
	public String september(Model model) {

		return "Season/september";
	}
	
	@RequestMapping("Season/october")
	public String october(Model model) {

		return "Season/october";
	}
	
	@RequestMapping("Season/november")
	public String november(Model model) {

		return "Season/november";
	}
	
	@RequestMapping("Season/december")
	public String december(Model model) {

		return "Season/december";
	}
	@RequestMapping("food")
	public String food(Model model) {

		return "food";
	}
	

}
