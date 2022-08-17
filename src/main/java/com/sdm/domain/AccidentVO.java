package com.sdm.domain;

import lombok.Data;
import org.springframework.stereotype.Repository;

@Data
@Repository
public class AccidentVO {
	
	private String ClientID;
	private String Content;
	private int DamageMoney;
	private int Compensation;
	
}
