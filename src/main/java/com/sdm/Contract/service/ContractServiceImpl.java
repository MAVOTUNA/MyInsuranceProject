package com.sdm.Contract.service;

import com.sdm.Contract.mapper.ContractMapper;
import com.sdm.domain.InsuranceVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ContractServiceImpl implements ContractService{
	
	@Autowired
	ContractMapper mapper;

	@Override
	public List InsuranceList() {
		
		return mapper.InsuranceList();
		
	}

	@Override
	public void addContract(String clientId, String insuranceId ,String pee) {
		
		mapper.addContract(clientId,insuranceId,pee);
		
	}

	@Override
	public List contractList(String id) {
		
		return mapper.contractList(id);
	}

	@Override
	public InsuranceVO cInsuranceList(String insuranceID) {
		
		return mapper.cInsuranceList(insuranceID);
		
	}

	@Override
	public void deleteContract(String insuranceId ,String clientId) {

		mapper.deleteContract(insuranceId , clientId);
	}

}
