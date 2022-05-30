package com.example.funolympic_0_1.model.bean;

public class Broadcast {
    String id,broadcastName,sport;

    String url,event,date,startTime,endTime,venue;

    public Broadcast(String id, String broadcastName, String sport) {
        this.id = id;
        this.broadcastName = broadcastName;
        this.sport = sport;
    }

    public Broadcast(String id, String broadcastName, String sport, String url, String event, String date, String startTime, String endTime, String venue) {
        this.id = id;
        this.broadcastName = broadcastName;
        this.sport = sport;
        this.url = url;
        this.event = event;
        this.date = date;
        this.startTime = startTime;
        this.endTime = endTime;
        this.venue = venue;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getEvent() {
        return event;
    }

    public void setEvent(String event) {
        this.event = event;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public String getVenue() {
        return venue;
    }

    public void setVenue(String venue) {
        this.venue = venue;
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
