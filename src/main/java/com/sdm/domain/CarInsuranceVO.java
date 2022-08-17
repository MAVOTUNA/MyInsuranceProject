package com.sdm.domain;

import lombok.Data;
import org.springframework.stereotype.Repository;

@Data
@Repository
public class CarInsuranceVO {
	
	String InsuranceID;
	String InsurancePee;
	String InsuranceName;
	String InsuranceExplanation;
	Double AgeCase1;
	Double AgeCase2;
	Double CarPriceCase1;
	Double CarPriceCase2;
	Double CarPriceCase3; 
	Double DriveYearCase1; 
	Double DriveYearCase2;
	Double DriveYearCase3;
	Double EngineDisplacement1;
	Double EngineDisplacement2;
	Double EngineDisplacement3; 
	Double EngineDisplacement4;
	Double EngineDisplacement5;
	Double EngineDisplacement6;
	

}
