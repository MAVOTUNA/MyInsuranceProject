package com.sdm.domain;

import lombok.Data;
import org.springframework.stereotype.Repository;

@Data
@Repository
public class EmailVO {
	
	private String senderName;
	private String senderMail;
	private String receiveMail;
	private String subject;
	private String message;

}
