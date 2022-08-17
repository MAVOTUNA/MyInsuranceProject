package com.sdm.common;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sdm.Client.controller.ClientController;
import com.sdm.Client.controller.ClientControllerImpl;
import com.sdm.Employee.controller.EmployeeController;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/main/*")
public class MainController {

    @Autowired
    ClientController clientController;

    @Autowired
    EmployeeController employeeController;

    @GetMapping("/")
    public String mainHome(){
        return "main";

    }

    @PostMapping("/login")
    public String log(HttpSession session, @Param("check")String check, String id, String pw) {

        if(check == null) {
            return "error500";
        }

        if(check.equals("2")) {
            String clientmain = clientController.log(session ,id,pw);

            System.out.println("ddd");

            return clientmain;
        }

        if(check.equals("1")) {
            String employeemain =  employeeController.log(session ,id,pw);
            return employeemain;
        }



        return "null";

    }

    @GetMapping("/findPassword")
    public String findPassword() {
        return "findpassword";

    }

    @GetMapping("/findpasswordOK")
    public String findPasswordOK(HttpSession session, @Param("check")String check,  String id,  String email) {

        if(check.equals("1")) {
            employeeController.sendMail(session ,id,email);
        }

        if(check.equals("2")) {
            clientController.sendMail(session ,id,email);
        }

        return "main";

    }

}
