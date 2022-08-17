package com.sdm.Contract.controller;

import com.sdm.Contract.service.ContractService;
import com.sdm.domain.ContractVO;
import com.sdm.domain.InsuranceVO;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
@Log4j
@Controller
@RequestMapping("/Contract/*")
public class ContractControllerImpl {
	
	@Autowired
	ContractService contractService;
	
	@GetMapping("/clientaddcontract")
	public String AddClient(HttpSession session , Model model) {
		
		List list = contractService.InsuranceList();
		model.addAttribute("list" ,list);
		return "clientaddcontract";
	}
	
	@GetMapping("/back")
	public String back(HttpServletResponse resp) throws IOException {
		
		resp.setCharacterEncoding("UTF-8");
		PrintWriter out = resp.getWriter();
		 resp.setContentType("text/html;charset=utf-8");
		 out.println("<script>");
		 out.println("location.href='/employee/myinfo'");
		 out.println("</script>");
		
		return null;
	}
	
	@GetMapping("/clientback")
	public String clientback(HttpServletResponse resp) throws IOException {
		
		resp.setCharacterEncoding("UTF-8");
		PrintWriter out = resp.getWriter();
		 resp.setContentType("text/html;charset=utf-8");
		 out.println("<script>");
		 out.println("location.href='/client/myinfo'");
		 out.println("</script>");
		
		return null;
	}
	
	@GetMapping("/AddContractOK")
	public void AddContractOK(@RequestParam (value="InsuranceCheck") String insuranceId , HttpServletResponse resp, HttpSession session) throws Exception {
		System.out.println("------------------");
		System.out.println(insuranceId);
		System.out.println(session.getAttribute("session_id"));
		
		String clientId = (String) session.getAttribute("session_id");
		
		InsuranceVO list = (InsuranceVO)contractService.cInsuranceList(insuranceId);
		
		contractService.addContract(clientId , insuranceId ,list.getInsurancePee());
		
		resp.setCharacterEncoding("UTF-8");
		PrintWriter out = resp.getWriter();
		 resp.setContentType("text/html;charset=utf-8");
		 out.println("<script>");
		 out.println("location.href='/client/myinfo'");
		 out.println("</script>");
		 
	}
	
	@GetMapping("/clientdeletecontract")
	public String clientdeletecontract(HttpSession session , Model  model) {
		
		String id = (String) session.getAttribute("session_id");
		
		ArrayList<InsuranceVO> llstt = new ArrayList<InsuranceVO>();
		
		ArrayList<ContractVO> list = (ArrayList<ContractVO>) contractService.contractList(id);
		
		for(ContractVO vo : list) {
			
			InsuranceVO InsuranceList = contractService.cInsuranceList(vo.getInsuranceID());
			
			llstt.add(InsuranceList);
		
		}
		
		model.addAttribute("list" ,llstt);
		
		return "clientdeletecontract";
		
	}
	
	
	@GetMapping("/clientdeletecontractOK") 
	public String clientdeletecontractOK(String insuranceId ,HttpSession session) {
		
		String clinetId = (String) session.getAttribute("session_id");
		
		System.out.println(clinetId);
		System.out.println(insuranceId);
		
		contractService.deleteContract(insuranceId , clinetId);
		
		
		return "redirect:/client/myinfo";
		
	}
		
	
	
	

}
