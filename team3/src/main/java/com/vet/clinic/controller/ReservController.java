package com.vet.clinic.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.vet.clinic.dto.ReservDTO;
import com.vet.clinic.service.ReservService;


@Controller
public class ReservController {

	@Autowired
	private ReservService reservService;
	
	@GetMapping("/reserv")
	public ModelAndView reserv() {
		
		ModelAndView mv = new ModelAndView("reservation/reserv");
		List<ReservDTO> boardlist = reservService.boardlist();
		mv.addObject("boardlist", boardlist);//사용할 이름, 값
		return mv;
	}
	
	@GetMapping("/calender")
	public String calender() {

		return "/reservation/calender";
	}
	
	@PostMapping("/calender")
	public String calender(HttpServletRequest request) {
		ReservDTO reservDTO = new ReservDTO();
//		reservDTO.setOwner_name()
		
		return"";
	}

}