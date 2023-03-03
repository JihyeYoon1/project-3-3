package com.vet.clinic.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vet.clinic.dao.ReservDAO;
import com.vet.clinic.dto.ReservDTO;

@Service
public class ReservService {//

	@Autowired
	private ReservDAO reservDAO;
	
	
	public List<ReservDTO> list(){
		return reservDAO.list();
	}
	
}
