package com.sdm.domain;

import lombok.Data;
import org.springframework.stereotype.Repository;

@Data
@Repository
public class InsuranceVO {
	
	String InsuranceId;
	String InsurancePee;
	String InsuranceName;
	String InsuranceExplanation;
	
}
