package com.sdm.Employee.mapper;

import com.sdm.domain.*;
import org.apache.ibatis.annotations.Param;
import org.springframework.context.annotation.ComponentScan;

import java.util.List;

public interface EmployeeMapper {
	
	public int employeelogin(@Param("id")String id,  @Param("pw")String pw);

	public List employeeInfo(@Param("id")String id);

	public void employeeJoin(EmployeeVO employee);

	public List ContractList();

	public int CarCheck(@Param("insuranceID")String insuranceId);

	public int CancerCheck(@Param("insuranceID")String insuranceId);

	public CarInsuranceVO CarInsuranceList(@Param("insuranceID")String insuranceId);

	public CancerInsuranceVO CancerInsuranceList(@Param("insuranceID")String insuranceId);

	public ClientVO getClientInfo(@Param("clientId")String clientId);
	
	public void updateContract(@Param("finalpee")String finalpee ,@Param("clientid")String clientid,@Param("insuranceid") String insuranceid);

	public List getClientInfoList(@Param("clientId")String id);

	public void deleteClientContract(@Param("insuranceId")String insuranceId, @Param("clientId")String clientId);

	public AccidentVO accidentList(@Param("clientId")String id);

	public void addCompensation(@Param("compensation")int compensation,@Param("clientId")String clientId);
	
	public InsuranceVO getInsuranceInfo(@Param("insuranceId")String insuranceId);

	public int employeefindpassword(@Param("employeeId")String id, @Param("email")String email);
	
}
