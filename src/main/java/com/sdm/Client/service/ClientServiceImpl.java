package com.sdm.Client.service;

import com.sdm.Client.mapper.ClientMapper;
import com.sdm.common.Contants.*;
import com.sdm.domain.AccidentVO;
import com.sdm.domain.ClientVO;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

@Log4j
@Service
public class ClientServiceImpl implements ClientService{
	
	@Autowired
	ClientMapper mapper;
	
	@Autowired
	JavaMailSender mailSender;

	@Override
	public void clientJoin(ClientVO client) {
		
		//차가격 
		for(CarPrice carprice : CarPrice.values()) {
			if(carprice.ordinal()+1 == (Integer.parseInt(client.getCarprice()))) {
				client.setCarprice(carprice.getCarPrice());
				break;
			}
		}
		//운전경력 
		for(DriveYear driveYear : DriveYear.values()) {
			if(driveYear.ordinal()+1 == Integer.parseInt(client.getDriveyear())) {
				client.setDriveyear(driveYear.getDriveYear());
				break;
			}
		}
		
		//배기량
		for(EngineDisplacement eDisplmt : EngineDisplacement.values()) {
			if(eDisplmt.ordinal()+1 == Integer.parseInt(client.getEnginedisplacement())) {
				client.setEnginedisplacement(eDisplmt.getEngineDisplacement());
				break;
			}
		}
		
		//암경력
		for(CancerHistory cancerHistory : CancerHistory.values()) {
			if(cancerHistory.ordinal()+1 == Integer.parseInt(client.getCancerhistory())) {
				client.setCancerhistory(cancerHistory.getCancerHistory());
				break;
			}
		}
		
		//입원병력
		for(AdmissionHistory admissionHistory : AdmissionHistory.values()) {
			if(admissionHistory.ordinal()+1 == Integer.parseInt(client.getAdmissionhistory())) {
				client.setAdmissionhistory(admissionHistory.getAdmissionHistory());
				break;
			}
		}
		
		for(FamilyCancerCheck familyCancerCheck : FamilyCancerCheck.values()) {
			if(familyCancerCheck.ordinal()+1 == Integer.parseInt(client.getFamilycancercheck())) {
				client.setFamilycancercheck(familyCancerCheck.getFamilyCancerCheck());
				break;
			}
		}
		
		
		mapper.clientJoin(client);
		
		
	}

	@Override
	public int clientlogin(String id, String pw) {
		return mapper.clientlogin(id, pw);
	}

	@Override
	public List clientInfo(String id) {
		return mapper.clientInfo(id);
	}

	@Override
	public int clientFindPassWord(String id, String email) {
		
		return mapper.clientfindpassword(id, email);
	}

	@Override
	public void sendMail(ArrayList<ClientVO> clientList) {
		
		MimeMessage msg  = mailSender.createMimeMessage();
		
		try {
			msg.addRecipient(RecipientType.TO, new InternetAddress(clientList.get(0).getEmail()));
			
			
			msg.addFrom(new InternetAddress[] {new InternetAddress("sdm03131229@gmail.com" , "신동민 보험회사")});
			
			msg.setSubject("고객님의 비밀번호 입니다", "utf-8");
			
			msg.setText("안녕하세요."+clientList.get(0).getName()+"고객님 비밀번호는"+clientList.get(0).getPw()+"입니다."
					, "utf-8");
			
			mailSender.send(msg);
			
		} catch (MessagingException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public void clientDelete(String id) {
		
		mapper.clientDelete(id);
		
	}

	@Override
	public void applyAccident(AccidentVO vo) {
		
		mapper.applyAccident(vo);
		
	}

	@Override
	public List accidentlist(String id) {
		return mapper.accidentlist(id);
	}

}
