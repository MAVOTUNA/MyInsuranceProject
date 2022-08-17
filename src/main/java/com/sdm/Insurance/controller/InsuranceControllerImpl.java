package com.sdm.Insurance.controller;

import com.sdm.Insurance.service.InsuranceService;
import com.sdm.domain.CancerInsuranceVO;
import com.sdm.domain.CarInsuranceVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.util.List;

@Controller
@RequestMapping("/insurance/*")
public class InsuranceControllerImpl implements InsuranceController{
	
	@Autowired
	InsuranceService insuranceService;
	
	@GetMapping("/addCarInsurance")
	public String addInsurance(CarInsuranceVO carInsuranceVO , HttpServletResponse resp) throws Exception {
		
		insuranceService.addInsurance1(carInsuranceVO);
		insuranceService.addCarInsurance(carInsuranceVO);
		resp.setCharacterEncoding("UTF-8");
		PrintWriter out = resp.getWriter();
		 resp.setContentType("text/html;charset=utf-8");
		 out.println("<script>");
		 out.println("location.href='/employee/myinfo'");
		 out.println("</script>");
		
		return null; 
		
		
	}
	
	@GetMapping("/addCancerInsurance")
	public String addInsurance(CancerInsuranceVO canerInsuranceVO) {
		
		insuranceService.addInsurance2(canerInsuranceVO);
		insuranceService.addCancerInsurance(canerInsuranceVO);
		
		return"redirect:/employee/myinfo";
	}
	
	@GetMapping("/InsuranceList")
	public String InsurancList(Model model) {
		
		List list = insuranceService.InsuranceList();
		model.addAttribute("insuranceList" , list);
		return "DeleteInsurance";
		
	}
	
	@GetMapping("/InsuranceRate")
	public String InsuranceRate(String id , Model model) {
		
		
		
		if(insuranceService.CarCheck(id) == 1) {
			List list = insuranceService.CarInsuranceList(id);
			model.addAttribute("CarInsuranceList" , list);
			System.out.println(list);
			return "CarInsuranceRate";
			
		}
		
		if(insuranceService.CancerCheck(id) == 1) {
			List list = insuranceService.CancerInsuranceList(id);
			model.addAttribute("CancerInsuranceList" , list);
			return "CancerInsuranceRate";
		}
		
		
		return null;
		
	}
	
	@GetMapping("/deleteinsurance")
	public String DeleteInsurance(String id) {
		
		if (insuranceService.CarCheck(id) == 1) {
			insuranceService.deleteCarInsurance(id);
			insuranceService.deleteInsurance1(id);

		}

		if (insuranceService.CancerCheck(id) == 1) {

			insuranceService.deleteCancerInsurance(id);
			insuranceService.deleteInsurance2(id);

		}

		return "redirect:/insurance/InsuranceList";
		
	}
	
	@GetMapping("back")
	public String back(HttpServletResponse resp) throws Exception {
		resp.setCharacterEncoding("UTF-8");
		PrintWriter out = resp.getWriter();
		 resp.setContentType("text/html;charset=utf-8");
		 out.println("<script>");
		 out.println("location.href='/employee/myinfo'");
		 out.println("</script>");
		 
		return null;
	}
	
	

}
