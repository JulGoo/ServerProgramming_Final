package kr.co.inhatcspring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CourseController {
	@GetMapping("/grade1")
	public String grade1() {
		System.out.println("grade1");
		
		return "grade1";
	}
	
	@GetMapping("/grade2")
	public String grade2() {
		System.out.println("grade2");
		
		return "grade2";
	}
	
	@GetMapping("/grade3")
	public String grade3() {
		System.out.println("grade3");
		
		return "grade3";
	}
	
	@GetMapping("/grade4")
	public String grade4() {
		System.out.println("grade4");
		
		return "grade4";
	}
}
