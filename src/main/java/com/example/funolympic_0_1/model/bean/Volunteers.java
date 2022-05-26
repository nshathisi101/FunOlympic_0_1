package com.example.funolympic_0_1.model.bean;

public class Volunteers {
    String fullName, country, age, gender, interest1,interest2,Interest3,status;

    public Volunteers(String fullName, String country, String age, String gender, String interest1, String interest2, String interest3, String status) {
        this.fullName = fullName;
        this.country = country;
        this.age = age;
        this.gender = gender;
        this.interest1 = interest1;
        this.interest2 = interest2;
        Interest3 = interest3;
        this.status = status;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getInterest1() {
        return interest1;
    }

    public void setInterest1(String interest1) {
        this.interest1 = interest1;
    }

    public String getInterest2() {
        return interest2;
    }

    public void setInterest2(String interest2) {
        this.interest2 = interest2;
    }

    public String getInterest3() {
        return Interest3;
    }

    public void setInterest3(String interest3) {
        Interest3 = interest3;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
