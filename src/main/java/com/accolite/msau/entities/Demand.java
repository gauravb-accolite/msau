package com.accolite.msau.entities;

public class Demand {
    private String id;
    private String msHiringManager;

    public Demand() {
    }

    public Demand(String id, String msHiringManager) {
        this.id = id;
        this.msHiringManager = msHiringManager;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getMsHiringManager() {
        return msHiringManager;
    }

    public void setMsHiringManager(String msHiringManager) {
        this.msHiringManager = msHiringManager;
    }
}
