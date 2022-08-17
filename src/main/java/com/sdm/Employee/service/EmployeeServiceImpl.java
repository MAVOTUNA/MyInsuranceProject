package com.sdm.Employee.service;

import com.sdm.Employee.mapper.EmployeeMapper;
import com.sdm.common.Contants.*;
import com.sdm.domain.*;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
@SuppressWarnings("unchecked")
@Service
@RequiredArgsConstructor
public class EmployeeServiceImpl implements EmployeeService {
	
	Double initPee;
	Double middlePee1;
	Double middlePee2;
	Double middlePee3;
	Double middlePee4;
	Double finalPee;
	
	private final EmployeeMapper mapper;
	
	@Autowired
//	JavaMailSender mailSender;

	@Override
	public int employeeLogin(String id, String pw) {
		return mapper.employeelogin(id, pw);
	}

	@Override
	public List EmployeeInfo(String id) {
		return mapper.employeeInfo(id);
	}

	@Override
	public void employeeJoin(EmployeeVO employee) {
		
		for(DepartMent department : DepartMent.values()) {
			if(department.ordinal()+1 == Integer.parseInt(employee.getDepartment())) {
				employee.setDepartment(department.getDepartMent());
				break;
			}
		}
		
		mapper.employeeJoin(employee);
		
	}

	@Override
	public List ContractList() {
		return mapper.ContractList();
	}

	@Override
	public int CarCheck(String insuranceId) {
		return mapper.CarCheck(insuranceId);
	}

	@Override
	public int CancerCheck(String insuranceId) {
		return mapper.CancerCheck(insuranceId);
	}

	@Override
	public CarInsuranceVO CarInsuranceList(String insuranceId) {
		return mapper.CarInsuranceList(insuranceId);
	}

	@Override
	public CancerInsuranceVO CancerInsuranceList(String insuranceId) {
		return mapper.CancerInsuranceList(insuranceId);
	}

	
	

	@Override
	public ClientVO getClientInfo(String clientId) {
		
		return mapper.getClientInfo(clientId);
		
	}

	@Override
	public Double InsuranceCarRateCalc(CarInsuranceVO carRate, ClientVO clientVO ,String insurancePee) {
		
		Double InsuPee = Double.parseDouble(insurancePee);
		if(Integer.parseInt(clientVO.getAge()) >= 25 && Integer.parseInt(clientVO.getAge()) <50) {
			initPee = (carRate.getAgeCase1() * InsuPee);
		}
		if(Integer.parseInt(clientVO.getAge()) <25 ||Integer.parseInt(clientVO.getAge()) >50 ) {
			initPee = (carRate.getAgeCase2() * InsuPee);
			
		}
		
		for(CarPrice carprice : CarPrice.values()) {
			if(carprice.getCarPrice().equals(clientVO.getCarprice())) {
				if(carprice.ordinal() == 0) {
					middlePee1 =(carRate.getCarPriceCase1() * initPee);
				}else if(carprice.ordinal() == 1) {
					middlePee1 = (carRate.getCarPriceCase2() * initPee);
				}else if(carprice.ordinal() == 2) {
					middlePee1 =(carRate.getCarPriceCase3() * initPee);
				}
			}
		}
		
		for(DriveYear driveyear : DriveYear.values()) {
			if(driveyear.getDriveYear().equals(clientVO.getDriveyear())) {
				if(driveyear.ordinal() ==0) {
					middlePee2 =(carRate.getDriveYearCase1() * middlePee1);
				}else if(driveyear.ordinal() ==1) {
					middlePee2 = (carRate.getDriveYearCase2() * middlePee1);
				}
				else if(driveyear.ordinal() ==2) {
					middlePee2 = (carRate.getDriveYearCase3() * middlePee1);
				}
			}
		}
		
		for(EngineDisplacement engineDisplacement : EngineDisplacement.values() ) {
			if(engineDisplacement.getEngineDisplacement().equals(clientVO.getEnginedisplacement())) {
				
				System.out.println(engineDisplacement.ordinal());
				if(engineDisplacement.ordinal() ==0) {
					middlePee3 =  (carRate.getEngineDisplacement1() * middlePee2);
				}
				else if(engineDisplacement.ordinal() ==1) {
					middlePee3 =(carRate.getEngineDisplacement3() * middlePee2);
				}
				else if(engineDisplacement.ordinal() ==2) {
					middlePee3 =  (carRate.getEngineDisplacement4() * middlePee2);
				}
				else if(engineDisplacement.ordinal() ==3) {
					middlePee3 =  (carRate.getEngineDisplacement6() * middlePee2);
				}
				else if(engineDisplacement.ordinal() ==4) {
					middlePee3 =  (carRate.getEngineDisplacement5() * middlePee2);
				}
				else if(engineDisplacement.ordinal() ==5) {
					middlePee3 = (carRate.getEngineDisplacement6() * middlePee2);
				}
			}
		}
		
		middlePee3 = (double)Math.round(middlePee3*100)/100;
		return middlePee3;
		
	}


	@Override
	public Double InsuranceCancerRateCalc(CancerInsuranceVO cancerRate, ClientVO clientVO, String insurancePee) {
		
		Double InsuPee = Double.parseDouble(insurancePee);
		if(Integer.parseInt(clientVO.getAge()) >50) {
			initPee = (cancerRate.getAgeCase1() * InsuPee);
		}
		if(Integer.parseInt(clientVO.getAge()) <50) {
			initPee = (cancerRate.getAgeCase2() * InsuPee);
			
		}
		
		for(CancerHistory cancerHistory : CancerHistory.values()) {
			if(cancerHistory.getCancerHistory().equals(clientVO.getCancerhistory())) {
			
				if(cancerHistory.ordinal() ==0) {
					middlePee1 =  (cancerRate.getMyCancerCase1() * initPee);
				}
				else if(cancerHistory.ordinal() ==1) {
					middlePee1 =  (cancerRate.getMyCancerCase2() * initPee);
				}
				else if(cancerHistory.ordinal() ==2) {
					middlePee1 =  (cancerRate.getMyCancerCase3() * initPee);
				}
				else if(cancerHistory.ordinal() ==3) {
					middlePee1 = (cancerRate.getMyCancerCase4() * initPee);
				}
				
			}
		}
		
		for(AdmissionHistory admissionHistory : AdmissionHistory.values()) {
			if(admissionHistory.getAdmissionHistory().equals(clientVO.getAdmissionhistory())) {
				if (admissionHistory.ordinal() == 0) {
					middlePee2 = (cancerRate.getAdmissionHistory1() * middlePee1);
				} 
				else if (admissionHistory.ordinal() == 1) {
					middlePee2 =  (cancerRate.getAdmissionHistory2() * middlePee1);
				}

				else if (admissionHistory.ordinal() == 2) {
					middlePee2 =  (cancerRate.getAdmissionHistory3() * middlePee1);
				}

				else if (admissionHistory.ordinal() == 3) {
					middlePee2 =  (cancerRate.getAdmissionHistory4() * middlePee1);
				}

			}
		}
		
		for(FamilyCancerCheck familyCancerCheck : FamilyCancerCheck.values()) {
			if(familyCancerCheck.getFamilyCancerCheck().equals(clientVO.getFamilycancercheck())) {
				if(familyCancerCheck.ordinal()==0) {
					middlePee3 = (cancerRate.getFamillyCancerCase1() * middlePee2);
				}
				else if(familyCancerCheck.ordinal()==1) {
					middlePee3 =  (cancerRate.getFamillyCancerCase2() * middlePee2);
				}
				else if (familyCancerCheck.ordinal() == 2) {
					middlePee3 = (cancerRate.getFamillyCancerCase3() * middlePee2);
				} 
				else if (familyCancerCheck.ordinal() == 3) {
					middlePee3 =  (cancerRate.getFamillyCancerCase4() * middlePee2);
				} 
				else if (familyCancerCheck.ordinal() == 4) {
					middlePee3 = (cancerRate.getFamillyCancerCase5() * middlePee2);
				} 
				else if (familyCancerCheck.ordinal() == 5) {
					middlePee3 = (cancerRate.getFamillyCancerCase6() * middlePee2);
				}
			}
		}
		middlePee3 = (double)Math.round(middlePee3*100)/100;
		return middlePee3;
	}

	@Override
	public void updateContract(Double finalClientInsurancePee ,String clientId, String insuranceId) {
		
		System.out.println("=================");
		
		System.out.println(clientId+"   "+insuranceId+"   "+finalClientInsurancePee);
		
		String finalPee = Double.toString(finalClientInsurancePee);
		
		mapper.updateContract(finalPee ,clientId,insuranceId);
		
		
	}

	@Override
	public List getClientInfoList(String id) {
		
		return mapper.getClientInfoList(id);
	}

	@Override
	public void deleteClientContract(String insuranceId, String clientId) {
		
		mapper.deleteClientContract(insuranceId,clientId);
		
	}

	@Override
	public AccidentVO accidentList(String id) {
		
		return mapper.accidentList(id);
		
	}

	@Override
	public void addCompensation(int compensation, String clientId) {
		mapper.addCompensation(compensation , clientId);
	}

	@Override
	public void sendmail(Double finalClientInsurancePee, ClientVO eclientVO, InsuranceVO eInsuranceVO) {

//		MimeMessage msg  = mailSender.createMimeMessage();
//
//		try {
//			msg.addRecipient(RecipientType.TO, new InternetAddress(eclientVO.getEmail()));
//
//
//			msg.addFrom(new InternetAddress[] {new InternetAddress("sdm03131229@gmail.com" , "신동민 보험회사")});
//
//			msg.setSubject("고객님의 계약 보험료 입니다", "utf-8");
//
//			msg.setText("안녕하세요."+eclientVO.getName()+"고객님 해당 보험"+eInsuranceVO.getInsuranceName()+
//					"의 보험료는"+finalClientInsurancePee+"(만원) 입니다."
//					, "utf-8");
//
//			mailSender.send(msg);
//
//		} catch (MessagingException e) {
//			e.printStackTrace();
//		} catch (UnsupportedEncodingException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		
		
	}

	@Override
	public InsuranceVO getInsuranceInfo(String insuranceId) {
		return mapper.getInsuranceInfo(insuranceId);
	}

	@Override
	public int employeeFindPassWord(String id, String email) {
		
		
		return mapper.employeefindpassword(id,email);
	}

	@Override
	public void sendMailforFind(ArrayList<EmployeeVO> employeelist) {
//		MimeMessage msg  = mailSender.createMimeMessage();
//
//		try {
//			msg.addRecipient(RecipientType.TO, new InternetAddress(employeelist.get(0).getEmail()));
//
//
//			msg.addFrom(new InternetAddress[] {new InternetAddress("sdm03131229@gmail.com" , "신동민 보험회사")});
//
//			msg.setSubject("고객님의 비밀번호 입니다", "utf-8");
//
//			msg.setText("안녕하세요."+employeelist.get(0).getName()+"고객님 비밀번호는"+employeelist.get(0).getPw()+"입니다."
//					, "utf-8");
//
//			mailSender.send(msg);
//
//		} catch (MessagingException e) {
//			e.printStackTrace();
//		} catch (UnsupportedEncodingException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		
	}



	
	

}
