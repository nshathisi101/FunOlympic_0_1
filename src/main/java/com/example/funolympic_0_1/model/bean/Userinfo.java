package com.example.funolympic_0_1.model.bean;

public class Userinfo {
    String Id;
    String fullName,email,password, userType,country,sport,dp;


    public Userinfo(String id, String fullName, String email, String password, String userType, String country, String sport, String dp) {
        Id = id;
        this.fullName = fullName;
        this.email = email;
        this.password = password;
        this.userType = userType;
        this.country = country;
        this.sport = sport;
        this.dp = dp;
    }

    public Userinfo(String id) {
        Id = id;
    }

    public Userinfo(String id, String country) {
        Id = id;
        this.country = country;
    }

    public String getSport() {
        return sport;
    }

    public void setSport(String sport) {
        this.sport = sport;
    }

    public String getDp() {
        return dp;
    }

    public void setDp(String dp) {
        this.dp = dp;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getId() {
        return Id;
    }

    public void setId(String id) {
        Id = id;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
