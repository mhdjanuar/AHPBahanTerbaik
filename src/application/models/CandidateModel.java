/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package application.models;

/**
 *
 * @author mahasiswa unindra 
 */public class CandidateModel {
    private int id;
    private String name;
    private String description;
    private String gender;
    private String lastEducation;
    private String phoneNumber;
    private String address;
    //    
    private int leadershipScore;    
    private int knowledgeScore;
    private int technicalSkillScore;
    private int advancedSkillScore;
    // Bahan    
    private int appearanceScore;    
    private int comfortScore;
    private int durabilityScore;
    private int maintenanceScore;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getLastEducation() {
        return lastEducation;
    }

    public void setLastEducation(String lastEducation) {
        this.lastEducation = lastEducation;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getLeadershipScore() {
        return leadershipScore;
    }

    public void setLeadershipScore(int leadershipScore) {
        this.leadershipScore = leadershipScore;
    }

    public int getKnowledgeScore() {
        return knowledgeScore;
    }

    public void setKnowledgeScore(int knowledgeScore) {
        this.knowledgeScore = knowledgeScore;
    }

    public int getTechnicalSkillScore() {
        return technicalSkillScore;
    }

    public void setTechnicalSkillScore(int technicalSkillScore) {
        this.technicalSkillScore = technicalSkillScore;
    }

    public int getAdvancedSkillScore() {
        return advancedSkillScore;
    }

    public void setAdvancedSkillScore(int advancedSkillScore) {
        this.advancedSkillScore = advancedSkillScore;
    }
    
    /**
     * @return the appearanceScore
     */
    public int getAppearanceScore() {
        return appearanceScore;
    }

    /**
     * @param appearanceScore the appearanceScore to set
     */
    public void setAppearanceScore(int appearanceScore) {
        this.appearanceScore = appearanceScore;
    }

    /**
     * @return the comfortScore
     */
    public int getComfortScore() {
        return comfortScore;
    }

    /**
     * @param comfortScore the comfortScore to set
     */
    public void setComfortScore(int comfortScore) {
        this.comfortScore = comfortScore;
    }

    /**
     * @return the durabilityScore
     */
    public int getDurabilityScore() {
        return durabilityScore;
    }

    /**
     * @param durabilityScore the durabilityScore to set
     */
    public void setDurabilityScore(int durabilityScore) {
        this.durabilityScore = durabilityScore;
    }

    /**
     * @return the maintenanceScore
     */
    public int getMaintenanceScore() {
        return maintenanceScore;
    }

    /**
     * @param maintenanceScore the maintenanceScore to set
     */
    public void setMaintenanceScore(int maintenanceScore) {
        this.maintenanceScore = maintenanceScore;
    } 
    
    /**
     * @return the description
     */
    public String getDescription() {
        return description;
    }

    /**
     * @param description the description to set
     */
    public void setDescription(String description) {
        this.description = description;
    }

}
