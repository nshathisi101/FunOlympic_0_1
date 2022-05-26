package com.example.funolympic_0_1.model.bean;

public class Medal {
    String country,gold,silver,bronze,total;

    public Medal(String country, String gold, String silver, String bronze, String total) {
        this.country = country;
        this.gold = gold;
        this.silver = silver;
        this.bronze = bronze;
        this.total = total;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getGold() {
        return gold;
    }

    public void setGold(String gold) {
        this.gold = gold;
    }

    public String getSilver() {
        return silver;
    }

    public void setSilver(String silver) {
        this.silver = silver;
    }

    public String getBronze() {
        return bronze;
    }

    public void setBronze(String bronze) {
        this.bronze = bronze;
    }

    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total;
    }
}
