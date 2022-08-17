package com.sdm.Contract.mapper;

import com.sdm.domain.InsuranceVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ContractMapper {

	public List InsuranceList();

	public void addContract(@Param("clientId")String clientId, @Param("insuranceId")String insuranceId, @Param("insurancePee")String pee);

	public List contractList(@Param("clientId")String id);

	public InsuranceVO cInsuranceList(@Param("insuranceId")String insuranceID);

	public void deleteContract(@Param("insuranceId")String id, @Param("clientId")String clientId);

}
