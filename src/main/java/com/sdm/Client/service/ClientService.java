package com.sdm.Client.service;

import com.sdm.domain.AccidentVO;
import com.sdm.domain.ClientVO;

import java.util.ArrayList;
import java.util.List;

public interface ClientService {

	public void clientJoin(ClientVO client);

	public int clientlogin(String id, String pw);

	public List clientInfo(String id);

	public int clientFindPassWord(String id, String email);

	public void sendMail(ArrayList<ClientVO> clientList);

	public void clientDelete(String id);

	public void applyAccident(AccidentVO vo);

	public List accidentlist(String id);

}
