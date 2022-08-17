package com.sdm.Employee.controller;

import com.sdm.Employee.service.EmployeeService;
import com.sdm.domain.*;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
@Log4j
@Controller
@RequestMapping("/employee/*")
public class EmployeeControllerImpl implements EmployeeController{
	

	@Autowired
	EmployeeService employeeService;
	
	@Override
	@PostMapping("login")
	public String log(HttpSession session, String id, String pw) {
		if(employeeService.employeeLogin(id, pw)== 1) {
			 session.setAttribute("session_id", id);
			 return "redirect:/employee/myinfo";
		 }
	 return "main";
	}
	
	@GetMapping("/myinfo") 
	public String myinfo(HttpSession session ,Model model) {
		String id = (String)session.getAttribute("session_id");
		List list = employeeService.EmployeeInfo(id);
		model.addAttribute("list", list);
		return "employeemain";
	}

	@Override
	public void sendMail(HttpSession session, String id, String email) {
		if(employeeService.employeeFindPassWord(id,email) == 1) {
 			ArrayList<EmployeeVO> clientList=   (ArrayList<EmployeeVO>) employeeService.EmployeeInfo(id);
 			employeeService.sendMailforFind(clientList);
		}
		
		
	}
	
	@GetMapping("/join")
	public String join() {
		return "employeejoin";
	}
	
	@PostMapping("/addEmployee")
	public String joinOk(EmployeeVO employee) {
		employeeService.employeeJoin(employee);
		
		return "main";
	}
	
	@GetMapping("/developeCarInsurance")
	public String DelvelopCarInsurance(String id ,Model model) {
		List list = employeeService.EmployeeInfo(id);
		
		model.addAttribute("list", list);
		return "CarInsuranceDevelope";
	}
	
	@GetMapping("/developeCancerInsurance")
	public String DelvelopCancerInsurance(String id ,Model model) {
		List list = employeeService.EmployeeInfo(id);
		model.addAttribute("list", list);
		return "CancerInsuranceDevelope";
	}
	
	@GetMapping("/ApproveContract")
	public String ApproveContract(Model model) {
		
		ArrayList<ContractVO> list = (ArrayList<ContractVO>) employeeService.ContractList();
		
		model.addAttribute("list" , list);
		
		return "employeeapprovecontract";
	}
	
	@GetMapping("/finalApprove")
	public String finalApprove(String clientId , String insuranceId , String insurancePee) {
		
		ClientVO clientVO = employeeService.getClientInfo(clientId);
		
	
		if(employeeService.CarCheck(insuranceId) ==1) {
			CarInsuranceVO carRate = employeeService.CarInsuranceList(insuranceId);
			Double finalClientInsurancePee = employeeService.InsuranceCarRateCalc(carRate , clientVO ,insurancePee);
			employeeService.updateContract(finalClientInsurancePee ,clientId , insuranceId);
			
			ClientVO EclientVO = employeeService.getClientInfo(clientId);
			InsuranceVO EinsuranceVO = employeeService.getInsuranceInfo(insuranceId);
			
			employeeService.sendmail(finalClientInsurancePee,EclientVO,EinsuranceVO);
			return "redirect:/employee/ApproveContract";
		}
		
		if(employeeService.CancerCheck(insuranceId) ==1) {
			CancerInsuranceVO cancerRate = employeeService.CancerInsuranceList(insuranceId);
			Double finalClientInsurancePee = employeeService.InsuranceCancerRateCalc(cancerRate , clientVO ,insurancePee);
			employeeService.updateContract(finalClientInsurancePee ,clientId , insuranceId);
			ClientVO EclientVO = employeeService.getClientInfo(clientId);
			InsuranceVO EinsuranceVO = employeeService.getInsuranceInfo(insuranceId);
			
			employeeService.sendmail(finalClientInsurancePee,EclientVO,EinsuranceVO);
				
			return "redirect:/employee/ApproveContract";
		}
		
		
		return null;
	}
	
	@GetMapping("/clientview")
	public String clientview(String id, Model model) {
		
		List list = employeeService.getClientInfoList(id);
		
		model.addAttribute("list" , list);
		
		return "employeeclientview";
		
	}
	
	@GetMapping("/clientdeletecontractOK")
	public String clientdeletecontractOK(String insuranceId , String clientId ,Model model) {
		
		employeeService.deleteClientContract(insuranceId , clientId);
		
		ArrayList<ContractVO> list = (ArrayList<ContractVO>) employeeService.ContractList();
		
		model.addAttribute("list" , list);

		return "employeeapprovecontract";
	}	
	
	@GetMapping("accidentApply")
	public String accidentApply(Model model , HttpSession session) {
		
//		List list = employeeService.accidentList();
		
		List list = new ArrayList<AccidentVO>();
		
		ArrayList<ContractVO> contractlist  = (ArrayList<ContractVO>) employeeService.ContractList();
		
		for(ContractVO vo : contractlist) {
			list.add(employeeService.accidentList(vo.getClientID()));
		}
		
//		ArrayList<AccidentVO> accident = (ArrayList<AccidentVO>)list;
		
		model.addAttribute("list", list);
		
		return "employeeaccidenthandling";
		
	}
	
	@GetMapping("addCompensation")
	public String addCompensation(AccidentVO vo ,HttpSession session) {
		
		
		System.out.println(vo);
		
		
		employeeService.addCompensation(vo.getCompensation() ,vo.getClientID());
			
		return "redirect:/employee/myinfo";
		
		
	}
	
	
	
	
	

}
