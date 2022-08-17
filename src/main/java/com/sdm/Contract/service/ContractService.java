package com.sdm.Contract.service;

import com.sdm.domain.InsuranceVO;

import java.util.List;

public interface ContractService {

	public List InsuranceList();

	public void addContract(String clientId, String insuranceId, String string);

	public List contractList(String id);

	public InsuranceVO cInsuranceList(String insuranceID);

	public void deleteContract(String insuranceId, String clinetId);

}
