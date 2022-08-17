package com.sdm.Insurance.mapper;

import com.sdm.domain.CancerInsuranceVO;
import com.sdm.domain.CarInsuranceVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface InsuranceMapper {

	public void AddCarInsurance(CarInsuranceVO carInsuranceVO);

	public void AddCancerInsurance(CancerInsuranceVO canerInsuranceVO);
	
	public void AddInsurance1(CarInsuranceVO carInsuranceVO);
	
	public void AddInsurance2(CancerInsuranceVO canerInsuranceVO);

	public List InsuranceList();

	public int CarCheck(@Param("insuranceID")String insuranceID);

	public int CancerCheck(@Param("insuranceID")String insuranceID);

	public List CarInsuranceList(@Param("insuranceID")String id);

	public List CancerInsuranceList(@Param("insuranceID")String id);


	public void deleteInsurance1(@Param("insuranceID")String id);

	public void deleteInsurance2(@Param("insuranceID")String id);
	
	
	public void deleteCarInsurance(@Param("insuranceID")String id);

	public void deleteCancerInsurance(@Param("insuranceID")String id);


}
