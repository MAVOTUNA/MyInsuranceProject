package com.sdm.Client.mapper;

import com.sdm.domain.AccidentVO;
import com.sdm.domain.ClientVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ClientMapper {
	
	public void clientJoin(ClientVO VO);

	public int clientlogin(@Param("id")String id, @Param("pw")String pw);
	
	public List clientInfo(@Param("id")String id);
	
	public int clientfindpassword(@Param("id")String id, @Param("email")String email);

	public void clientDelete(@Param("id")String id);

	public void applyAccident(AccidentVO vo);

	public List accidentlist(@Param("id")String id);

}
