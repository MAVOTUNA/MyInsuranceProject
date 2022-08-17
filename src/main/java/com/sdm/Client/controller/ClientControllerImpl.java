package com.sdm.Client.controller;

import com.sdm.Client.service.ClientService;
import com.sdm.domain.AccidentVO;
import com.sdm.domain.ClientVO;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@Log4j
@Controller
@RequestMapping("/client/*")
public class ClientControllerImpl implements ClientController{
	
	@Autowired
	ClientService clientService;
	
	
	@GetMapping("/join")
	public String join() {
		return "clientjoin";
	}
	
	@PostMapping("/addClient")
	public String joinOk(ClientVO client) {
		clientService.clientJoin(client);
	return "redirect:/client/main";
	}
	
	@GetMapping("/main")
	public String main() {
		return "main";
	}

	public String log(HttpSession session,String id, String pw) {
		 if(clientService.clientlogin(id, pw)== 1) {
			 session.setAttribute("session_id", id);
			 return "redirect:/client/myinfo";
		 }
	 return "main";
	}
	
	@GetMapping("/myinfo")
	public String myinfo(HttpSession session ,Model model) {
		String id = (String)session.getAttribute("session_id");
		List list = clientService.clientInfo(id);
		System.out.println(list);
		model.addAttribute("list", list);
		return "clientmain";
	}
	
	@GetMapping("/delete")
	public String Delete(String id , Model model) {
		clientService.clientDelete(id);
		return "clientafterdelete";
	}
	
	@GetMapping("/privacy")
	public String privary(String id , Model model) {
		List list = clientService.clientInfo(id);
		model.addAttribute("list", list);
		return "clientprivacy";
	}

	@Override
	public void sendMail(HttpSession session, String id, String email) {
		if(clientService.clientFindPassWord(id,email) == 1) {
 			ArrayList<ClientVO> clientList=   (ArrayList<ClientVO>) clientService.clientInfo(id);
			clientService.sendMail(clientList);
		}
		
		
	}
	
	@GetMapping("/applyAccident")
	public String applyAccident() {
		
		return "clientapplyaccident";
	}
	
	@GetMapping("/applyAccidentOK")
	public String applyAccidentOK(HttpSession session , AccidentVO vo ,HttpServletResponse resp) throws IOException {
		String id = (String)session.getAttribute("session_id");
		vo.setClientID(id);
		
		System.out.println(vo);
		
		clientService.applyAccident(vo);
		
		resp.setCharacterEncoding("UTF-8");
		PrintWriter out = resp.getWriter();
		 resp.setContentType("text/html;charset=utf-8");
		 out.println("<script>");
		 out.println("alert('제출되었습니다')");
		 out.println("</script>");
		
		return "redirect:/client/myinfo";
		
		
	}
	
	@GetMapping("/accidentlist")
	public String accidentlist(Model model , HttpSession session) {
		String id = (String)session.getAttribute("session_id");
		
		List list = clientService.accidentlist(id);
		
		model.addAttribute("list" , list);
		return "clientaccidentlist";
	}
}
