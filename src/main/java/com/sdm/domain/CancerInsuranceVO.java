package com.sdm.domain;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import org.springframework.stereotype.Repository;

@Getter
@Setter
@Repository
@SuppressWarnings("unchecked")
public class CancerInsuranceVO {
	
	String InsuranceID;
	String InsurancePee;
	String InsuranceName;
	String InsuranceExplanation;
	Double AgeCase1;
	Double AgeCase2;
	Double MyCancerCase1; 
	Double MyCancerCase2; 
	Double MyCancerCase3; 
	Double MyCancerCase4; 
	Double AdmissionHistory1; 
	Double AdmissionHistory2; 
	Double AdmissionHistory3; 
	Double AdmissionHistory4; 
	Double FamillyCancerCase1;
	Double FamillyCancerCase2;
	Double FamillyCancerCase3; 
	Double FamillyCancerCase4; 
	Double FamillyCancerCase5;
	Double FamillyCancerCase6;

}
