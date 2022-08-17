package com.sdm.Client.controller;

import com.sdm.domain.ClientVO;
import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;

public interface ClientController {
	
	public String joinOk(ClientVO client);
	public String main();
	public String log(HttpSession session,String id, String pw);
	public String myinfo(HttpSession session ,Model model);
	public String privary(String id, Model model);
	
	public void sendMail(HttpSession session, String id, String email );

}
