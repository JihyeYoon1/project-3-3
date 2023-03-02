package com.vet.clinic.dto;

import lombok.Data;

@Data
public class StaffDTO {

	private int staff_no;
	private String staff_id, staff_pw, staff_name, staff_tel, staff_email, staff_birth, staff_addr, staff_grade;
}
