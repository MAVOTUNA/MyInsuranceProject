package com.sdm.Insurance.service;

import com.sdm.Insurance.mapper.InsuranceMapper;
import com.sdm.domain.CancerInsuranceVO;
import com.sdm.domain.CarInsuranceVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class InsuranceServiceImpl implements InsuranceService{
	@Autowired
	InsuranceMapper mapper;

	@Override
	public void addCarInsurance(CarInsuranceVO carInsuranceVO) {
		
		mapper.AddCarInsurance(carInsuranceVO);
		
	}

	@Override
	public void addCancerInsurance(CancerInsuranceVO canerInsuranceVO) {
		
		
		mapper.AddCancerInsurance(canerInsuranceVO);
		
	}

	@Override
	public void addInsurance1(CarInsuranceVO carInsuranceVO) {
		
		mapper.AddInsurance1(carInsuranceVO);
		
	}

	@Override
	public void addInsurance2(CancerInsuranceVO canerInsuranceVO) {
		
		mapper.AddInsurance2(canerInsuranceVO);
		
	}

	@Override
	public List InsuranceList() {
		
		List list = mapper.InsuranceList();
		
		return list;
	}

	@Override
	public int CarCheck(String insuranceID) {
		return mapper.CarCheck(insuranceID);
	}

	@Override
	public int CancerCheck(String insuranceID) {
		return mapper.CancerCheck(insuranceID);
	}

	@Override
	public List CarInsuranceList(String id) {
		
		return  mapper.CarInsuranceList(id);
		 
	}

	@Override
	public List CancerInsuranceList(String id) {
		
		return mapper.CancerInsuranceList(id);
		
	}


	@Override
	public void deleteInsurance1(String id) {
		
		
		mapper.deleteInsurance1(id);
	}	

	@Override
	public void deleteInsurance2(String id) {
		
		
	mapper.deleteInsurance2(id);
	}

	@Override
	public void deleteCarInsurance(String id) {
		
		mapper.deleteCarInsurance(id);
	}

	@Override
	public void deleteCancerInsurance(String id) {
		mapper.deleteCancerInsurance(id);
	}


}
