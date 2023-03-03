package com.vet.clinic.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.vet.clinic.dto.ReservDTO;
import com.vet.clinic.service.ReservService;

@Controller
public class ReservController {

	@Autowired
	private ReservService reservService;
	
//	@GetMapping("/reserv")
//	public ModelAndView reserv() {
//		
//		ModelAndView mv = new ModelAndView("reserv");
//		List<ReservDTO> board = reservService.list();
//		mv.addObject("board", board);//사용할 이름, 값
//		return mv;
//	}
	@GetMapping("/reserv")
	public String reserv() {
		
		return "reservation/reserv";
	}

}