package com.vet.clinic.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.vet.clinic.dto.StaffDTO;
import com.vet.clinic.service.StaffService;

@Controller
public class AdminController {

	@Autowired
	private StaffService staffService;
	
	@GetMapping("/staffList")
	public ModelAndView staffList() {
		ModelAndView mv = new ModelAndView("/admin/staffList");
		
		List<StaffDTO> staffList = staffService.staffList();
		
		return mv;
	}
}
