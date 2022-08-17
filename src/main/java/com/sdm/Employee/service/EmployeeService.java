package com.sdm.Employee.service;

import com.sdm.domain.*;

import java.util.ArrayList;
import java.util.List;

public interface EmployeeService {
	
	public int employeeLogin(String id, String pw);

	public List EmployeeInfo(String id);

	public void employeeJoin(EmployeeVO employee);

	public List ContractList();

	public int CarCheck(String insuranceId);

	public int CancerCheck(String insuranceId);

	public CarInsuranceVO CarInsuranceList(String insuranceId);

	public CancerInsuranceVO CancerInsuranceList(String insuranceId);

	public ClientVO getClientInfo(String clientId);
	
	public Double InsuranceCarRateCalc(CarInsuranceVO carRate, ClientVO clientVO, String insurancePee);

	public Double InsuranceCancerRateCalc(CancerInsuranceVO cancerRate, ClientVO clientVO, String insurancePee);

	public void updateContract(Double finalClientInsurancePee ,String clientId, String insuranceId);

	public List getClientInfoList(String id);

	public void deleteClientContract(String insuranceId, String clientId);

	public AccidentVO accidentList(String id);

	public void addCompensation(int compensation, String clientId);

	public void sendmail(Double finalClientInsurancePee, ClientVO eclientVO, InsuranceVO einsuranceVO);

	public InsuranceVO getInsuranceInfo(String insuranceId);

	public int employeeFindPassWord(String id, String email);

	public void sendMailforFind(ArrayList<EmployeeVO> clientList);
	
}
