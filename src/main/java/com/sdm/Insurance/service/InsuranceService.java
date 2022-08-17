package com.sdm.Insurance.service;

import com.sdm.domain.CancerInsuranceVO;
import com.sdm.domain.CarInsuranceVO;

import java.util.List;

public interface InsuranceService {

	public void addCarInsurance(CarInsuranceVO carInsuranceVO);

	public void addCancerInsurance(CancerInsuranceVO canerInsuranceVO);

	public void addInsurance1(CarInsuranceVO carInsuranceVO);

	public void addInsurance2(CancerInsuranceVO canerInsuranceVO);

	public List InsuranceList();

	public int CarCheck(String insuranceID);

	public int CancerCheck(String insuranceID);

	public List CarInsuranceList(String id);

	public List CancerInsuranceList(String id);
	
	public void deleteCarInsurance(String id);
	
	public void deleteCancerInsurance(String id);

	public void deleteInsurance1(String id);
	
	public void deleteInsurance2(String id);


}
