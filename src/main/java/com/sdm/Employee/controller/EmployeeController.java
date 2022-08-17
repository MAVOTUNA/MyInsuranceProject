package com.sdm.Employee.controller;

import com.sdm.domain.EmployeeVO;

import javax.servlet.http.HttpSession;

public interface EmployeeController {
	
	public String log(HttpSession session,String id, String pw);

	public void sendMail(HttpSession session, String id, String email);
	
	public String joinOk(EmployeeVO employee);

}
