package com.sdm.domain;

import lombok.Data;
import org.springframework.stereotype.Repository;

@Data
@Repository
public class EmployeeVO {

	String id;
	String department;
	String email;
	String pw;
	String name;
	String phone;
	String yeartowork;
	String pay;

}
