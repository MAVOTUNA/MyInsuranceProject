package com.sdm.domain;

import lombok.Data;
import org.springframework.stereotype.Repository;


@Data
@Repository
public class ClientVO {
	
	String id;
	String approvecheck;
	String pw;
	String age;
	String name;
	String email;
	String phone;
	String gender;
	String salary;
	String expert;
	String carprice;
	String driveyear;
	String enginedisplacement;
	String cancerhistory;
	String admissionhistory;
	String familycancercheck;

}
