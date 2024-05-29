package kr.co.inhatcspring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class RoadController {
	@GetMapping("/road")
	public String road() {
		System.out.println("road");
		
		return "road";
	}
}
