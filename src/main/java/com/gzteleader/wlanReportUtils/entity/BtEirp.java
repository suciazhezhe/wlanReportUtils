package com.gzteleader.wlanReportUtils.entity;

import java.io.Serializable;
import java.util.Date;

public class BtEirp implements Serializable {
    private String btEirpId;

    private String infoId;

    private Boolean btEirpClassicLowenergy;

    private Double btEirpRate;

    private Integer btEirpCount;

    private Double btEirpFreq;

    private Double btEirpResult;

    private Boolean btEirpJudgement;

    private Date btEirpTime;

    private Boolean btEirpDelete;

    private static final long serialVersionUID = 1L;

    public String getBtEirpId() {
        return btEirpId;
    }

    public void setBtEirpId(String btEirpId) {
        this.btEirpId = btEirpId == null ? null : btEirpId.trim();
    }

    public String getInfoId() {
        return infoId;
    }

    public void setInfoId(String infoId) {
        this.infoId = infoId == null ? null : infoId.trim();
    }

    public Boolean getBtEirpClassicLowenergy() {
        return btEirpClassicLowenergy;
    }

    public void setBtEirpClassicLowenergy(Boolean btEirpClassicLowenergy) {
        this.btEirpClassicLowenergy = btEirpClassicLowenergy;
    }

    public Double getBtEirpRate() {
        return btEirpRate;
    }

    public void setBtEirpRate(Double btEirpRate) {
        this.btEirpRate = btEirpRate;
    }

    public Integer getBtEirpCount() {
        return btEirpCount;
    }

    public void setBtEirpCount(Integer btEirpCount) {
        this.btEirpCount = btEirpCount;
    }

    public Double getBtEirpFreq() {
        return btEirpFreq;
    }

    public void setBtEirpFreq(Double btEirpFreq) {
        this.btEirpFreq = btEirpFreq;
    }

    public Double getBtEirpResult() {
        return btEirpResult;
    }

    public void setBtEirpResult(Double btEirpResult) {
        this.btEirpResult = btEirpResult;
    }

    public Boolean getBtEirpJudgement() {
        return btEirpJudgement;
    }

    public void setBtEirpJudgement(Boolean btEirpJudgement) {
        this.btEirpJudgement = btEirpJudgement;
    }

    public Date getBtEirpTime() {
        return btEirpTime;
    }

    public void setBtEirpTime(Date btEirpTime) {
        this.btEirpTime = btEirpTime;
    }

    public Boolean getBtEirpDelete() {
        return btEirpDelete;
    }

    public void setBtEirpDelete(Boolean btEirpDelete) {
        this.btEirpDelete = btEirpDelete;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", btEirpId=").append(btEirpId);
        sb.append(", infoId=").append(infoId);
        sb.append(", btEirpClassicLowenergy=").append(btEirpClassicLowenergy);
        sb.append(", btEirpRate=").append(btEirpRate);
        sb.append(", btEirpCount=").append(btEirpCount);
        sb.append(", btEirpFreq=").append(btEirpFreq);
        sb.append(", btEirpResult=").append(btEirpResult);
        sb.append(", btEirpJudgement=").append(btEirpJudgement);
        sb.append(", btEirpTime=").append(btEirpTime);
        sb.append(", btEirpDelete=").append(btEirpDelete);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}