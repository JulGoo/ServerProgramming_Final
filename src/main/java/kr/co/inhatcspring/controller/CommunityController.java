package kr.co.inhatcspring.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.inhatcspring.beans.DataBean;
import kr.co.inhatcspring.database.MapperInterface;

@Controller
public class CommunityController {
	@Autowired
	MapperInterface mapper;

	@GetMapping("/community")
	public String community(Model model, int category) {
		ArrayList<DataBean> community = (ArrayList<DataBean>) mapper.selectAll(category);
		model.addAttribute("community", community);
		model.addAttribute("category", category);
		return "community";
	}
	
	@GetMapping("/write")
	public String write(Model model, int category) {
		model.addAttribute("category", category);
		return "write";
	}
	
	@PostMapping("/write.do")
	public String write(Model model, int category, DataBean databean) {
		//로그인 구현 후 setUserID 지움
		databean.setUserID("tester");
		
		mapper.insertData(databean);
		model.addAttribute(category);
		return "community";
	}
}
