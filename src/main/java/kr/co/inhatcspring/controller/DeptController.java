package kr.co.inhatcspring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DeptController {
	@GetMapping("/deptInfo")
	public String deptInfo() {
		System.out.println("deptInfo");
		
		return "deptInfo";
	}
	
	@GetMapping("/deptHistory")
	public String deptHistory() {
		System.out.println("deptHistory");
		
		return "deptHistory";
	}
}
