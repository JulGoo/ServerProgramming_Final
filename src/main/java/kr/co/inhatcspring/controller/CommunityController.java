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

	// 게시글 목록
	@GetMapping("/community")
	public String community(Model model, int category) {
		ArrayList<DataBean> community = (ArrayList<DataBean>) mapper.selectAll(category);
		model.addAttribute("community", community);
		model.addAttribute("category", category);
		return "community";
	}

	// 작성 페이지
	@GetMapping("/write")
	public String write(Model model, int category) {
		model.addAttribute("category", category);
		return "write";
	}

	// 작성 동작
	@PostMapping("/write.do")
	public String write(DataBean databean) {
		// 로그인 구현 후 삭제
		String userID = "tester";
		databean.setUserID(userID);

		mapper.insertData(databean);
		return "redirect:/community?category=" + databean.getCategory();
	}

	// 상세 게시글 페이지
	@GetMapping("/board")
	public String board(Model model, int idx) {
		DataBean databean = mapper.selectBoard(idx);
		model.addAttribute("databean", databean);
		mapper.increViewC(idx);
		return "board";
	}

	// 수정 페이지
	@GetMapping("/update")
	public String update(Model model, int idx) {
		DataBean databean = mapper.selectBoard(idx);
		model.addAttribute("databean", databean);
		mapper.updateData(databean);
		return "update";
	}

	// 수정 동작
	@PostMapping("/update.do")
	public String update(DataBean databean) {
		mapper.updateData(databean);
		return "redirect:/board?idx=" + databean.getIdx();
	}

	// 삭제 동작
	@PostMapping("/delete.do")
	public String delete(int idx, int category) {
		mapper.deleteData(idx);
		return "redirect:/community?category=" + category;
	}
}
