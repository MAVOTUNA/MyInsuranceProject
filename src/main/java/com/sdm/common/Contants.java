package com.sdm.common;

@SuppressWarnings("unchecked")
public class Contants {

    public enum CarPrice{
        case1("2000만원 미만"),
        case2("2000만원 이상 4000만원 미만"),
        case3("4000만원 이상");

        private String text;
        CarPrice(String text) {
            this.text =text;
        }
        public String getCarPrice(){
            return this.text;
        }

    }

    public enum DriveYear {
        case1("1년 이하"),
        case2("3년이상 7년미만"),
        case3("7년 이상");

        private String text;
        DriveYear(String text) {
            this.text = text;
        }

        public String getDriveYear(){
            return this.text;
        }
    }

    public enum EngineDisplacement {
        case1("1000cc미만"),
        case2("1000cc이상 1600cc미만"),
        case3("1600cc이상 2000cc미만"),
        case4("2000cc이상 2500cc미만"),
        case5("2500cc이상 4000cc미만"),
        case6("4000cc이상");
        private String text;
        EngineDisplacement(String text) {
            this.text = text;
        }
        public String getEngineDisplacement(){
            return this.text;
        }

    }

    public enum CancerHistory {
        case1("없음"),
        case2("5년 이내에 2기 이상"),
        case3("3년 이내에 2기 이상"),
        case4("1년 이내에 2기 이상");

        private String text;
        CancerHistory(String text) {
            this.text = text;
        }
        public String getCancerHistory(){
            return this.text;
        }
    }

    public enum AdmissionHistory {
        case1("없음"),
        case2("5년 이내에 한번이라도 입원"),
        case3("3년 이내에 두세번 이상 입원"),
        case4("최근까지도 입원하였음");

        private String text;
        AdmissionHistory(String text) {
            this.text = text;
        }
        public String getAdmissionHistory(){
            return this.text;
        }

    }

    public enum FamilyCancerCheck{
        case1("아무도 암에 걸린적이 없음"),
        case2("부모님중 한분이라도 10년이내에 암2기이상"),
        case3("부모님중 한분이라도 5년이내에 암2기이상"),
        case4("부모님중 한분이라도 3년이내에 암2기이상"),
        case5("부모님중 한분이라도 2년이내에 암에 걸린적이있거나 현재 투병중"),
        case6("조부모님중 한분이라도 5년이내에 암에 걸린적이있다.");

        private String text;
        FamilyCancerCheck(String text) {
            this.text = text;
        }
        public String getFamilyCancerCheck(){
            return this.text;
        }

    }

    public enum DepartMent{
        UW("인수심사"),
        Developer("보험개발"),
        AccidentHandler("사고처리담당");

        private String text;
        DepartMent(String text){
            this.text = text;

        }

        public String getDepartMent() {
            return this.text;
        }

    }





}
