package com.sdm.domain;

import lombok.Data;
import org.springframework.stereotype.Repository;

@Data
@Repository
public class ContractVO {
	
	private String contractID;
	private String clientID;
	private String insuranceID;
	private String insurancePEE;
	private String ApproveCheck;

}
