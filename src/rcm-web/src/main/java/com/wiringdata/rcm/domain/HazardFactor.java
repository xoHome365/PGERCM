package com.wiringdata.rcm.domain;

/** 危害因素 */
public class HazardFactor {

    /** 危险源 */
    private String hazardSource;

    /** 危害后果 */
    private String hazardConsequence;

    /** 可能性 */
    private String possibility;

    /** 事故等级 */
    private String accidentLevel;

    /** 风险等级 */
    private String riskLevel;

    /** 作业标准 */
    private String workStandards;

    public String getHazardSource() {
        return hazardSource;
    }

    public void setHazardSource(String hazardSource) {
        this.hazardSource = hazardSource;
    }

    public String getHazardConsequence() {
        return hazardConsequence;
    }

    public void setHazardConsequence(String hazardConsequence) {
        this.hazardConsequence = hazardConsequence;
    }

    public String getPossibility() {
        return possibility;
    }

    public void setPossibility(String possibility) {
        this.possibility = possibility;
    }

    public String getAccidentLevel() {
        return accidentLevel;
    }

    public void setAccidentLevel(String accidentLevel) {
        this.accidentLevel = accidentLevel;
    }

    public String getRiskLevel() {
        return riskLevel;
    }

    public void setRiskLevel(String riskLevel) {
        this.riskLevel = riskLevel;
    }

    public String getWorkStandards() {
        return workStandards;
    }

    public void setWorkStandards(String workStandards) {
        this.workStandards = workStandards;
    }

}
