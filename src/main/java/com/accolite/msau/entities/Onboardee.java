package com.accolite.msau.entities;

import java.time.LocalDate;
import java.util.List;

public class Onboardee {
    private String email;
    private String demandId;
    private LocalDate onboardingStart;
    private LocalDate onboardingEnd;
    private Boolean bgCheck;
    private Boolean training;
    private Boolean project;
    private String name;
    private String phone;
    private List<String> skills;

    public Onboardee() {
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDemandId() {
        return demandId;
    }

    public void setDemandId(String demandId) {
        this.demandId = demandId;
    }

    public LocalDate getOnboardingStart() {
        return onboardingStart;
    }

    public void setOnboardingStart(LocalDate onboardingStart) {
        this.onboardingStart = onboardingStart;
    }

    public LocalDate getOnboardingEnd() {
        return onboardingEnd;
    }

    public void setOnboardingEnd(LocalDate onboardingEnd) {
        this.onboardingEnd = onboardingEnd;
    }

    public Boolean getBgCheck() {
        return bgCheck;
    }

    public void setBgCheck(Boolean bgCheck) {
        this.bgCheck = bgCheck;
    }

    public Boolean getTraining() {
        return training;
    }

    public void setTraining(Boolean training) {
        this.training = training;
    }

    public Boolean getProject() {
        return project;
    }

    public void setProject(Boolean project) {
        this.project = project;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public List<String> getSkills() {
        return skills;
    }

    public void setSkills(List<String> skills) {
        this.skills = skills;
    }
}
