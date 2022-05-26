package com.example.funolympic_0_1.model.bean;

public class Results {
    String id,fullName,sport,event,medal,position,country,iduser,idevent,dp;


    public Results(String id, String fullName, String sport, String event, String medal, String position, String country, String iduser, String idevent, String dp) {
        this.id = id;
        this.fullName = fullName;
        this.sport = sport;
        this.event = event;
        this.medal = medal;
        this.position = position;
        this.country = country;
        this.iduser = iduser;
        this.idevent = idevent;
        this.dp = dp;
    }

    public String getDp() {
        return dp;
    }

    public void setDp(String dp) {
        this.dp = dp;
    }

    public String getIduser() {
        return iduser;
    }

    public void setIduser(String iduser) {
        this.iduser = iduser;
    }

    public String getIdevent() {
        return idevent;
    }

    public void setIdevent(String idevent) {
        this.idevent = idevent;
    }

    public Results(String id) {
        this.id = id;
    }

    public Results() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getSport() {
        return sport;
    }

    public void setSport(String sport) {
        this.sport = sport;
    }

    public String getEvent() {
        return event;
    }

    public void setEvent(String event) {
        this.event = event;
    }

    public String getMedal() {
        return medal;
    }

    public void setMedal(String medal) {
        this.medal = medal;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }
}
