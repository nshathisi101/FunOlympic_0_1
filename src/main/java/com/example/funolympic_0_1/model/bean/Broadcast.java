package com.example.funolympic_0_1.model.bean;

public class Broadcast {
    String id,broadcastName,sport;

    public Broadcast(String id, String broadcastName, String sport) {
        this.id = id;
        this.broadcastName = broadcastName;
        this.sport = sport;
    }

    public Broadcast() {

    }

    public Broadcast(String id) {
        this.id = id;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getBroadcastName() {
        return broadcastName;
    }

    public void setBroadcastName(String broadcastName) {
        this.broadcastName = broadcastName;
    }

    public String getSport() {
        return sport;
    }

    public void setSport(String sport) {
        this.sport = sport;
    }
}
