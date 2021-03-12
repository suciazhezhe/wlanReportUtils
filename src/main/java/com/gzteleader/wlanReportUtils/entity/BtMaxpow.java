package com.gzteleader.wlanReportUtils.entity;

import java.io.Serializable;
import java.util.Date;

public class BtMaxpow implements Serializable {
    private String btMaxpowId;

    private String infoId;

    private Boolean btMaxpowClassicLowenergy;

    private Double btMaxpowRate;

    private Integer btMaxpowCount;

    private Double btMaxpowFreq;

    private Double btMaxpowResult;

    private Boolean btMaxpowJudgement;

    private Date btMaxpowTime;

    private Boolean btMaxpowDelete;

    private static final long serialVersionUID = 1L;

    public String getBtMaxpowId() {
        return btMaxpowId;
    }

    public void setBtMaxpowId(String btMaxpowId) {
        this.btMaxpowId = btMaxpowId == null ? null : btMaxpowId.trim();
    }

    public String getInfoId() {
        return infoId;
    }

    public void setInfoId(String infoId) {
        this.infoId = infoId == null ? null : infoId.trim();
    }

    public Boolean getBtMaxpowClassicLowenergy() {
        return btMaxpowClassicLowenergy;
    }

    public void setBtMaxpowClassicLowenergy(Boolean btMaxpowClassicLowenergy) {
        this.btMaxpowClassicLowenergy = btMaxpowClassicLowenergy;
    }

    public Double getBtMaxpowRate() {
        return btMaxpowRate;
    }

    public void setBtMaxpowRate(Double btMaxpowRate) {
        this.btMaxpowRate = btMaxpowRate;
    }

    public Integer getBtMaxpowCount() {
        return btMaxpowCount;
    }

    public void setBtMaxpowCount(Integer btMaxpowCount) {
        this.btMaxpowCount = btMaxpowCount;
    }

    public Double getBtMaxpowFreq() {
        return btMaxpowFreq;
    }

    public void setBtMaxpowFreq(Double btMaxpowFreq) {
        this.btMaxpowFreq = btMaxpowFreq;
    }

    public Double getBtMaxpowResult() {
        return btMaxpowResult;
    }

    public void setBtMaxpowResult(Double btMaxpowResult) {
        this.btMaxpowResult = btMaxpowResult;
    }

    public Boolean getBtMaxpowJudgement() {
        return btMaxpowJudgement;
    }

    public void setBtMaxpowJudgement(Boolean btMaxpowJudgement) {
        this.btMaxpowJudgement = btMaxpowJudgement;
    }

    public Date getBtMaxpowTime() {
        return btMaxpowTime;
    }

    public void setBtMaxpowTime(Date btMaxpowTime) {
        this.btMaxpowTime = btMaxpowTime;
    }

    public Boolean getBtMaxpowDelete() {
        return btMaxpowDelete;
    }

    public void setBtMaxpowDelete(Boolean btMaxpowDelete) {
        this.btMaxpowDelete = btMaxpowDelete;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", btMaxpowId=").append(btMaxpowId);
        sb.append(", infoId=").append(infoId);
        sb.append(", btMaxpowClassicLowenergy=").append(btMaxpowClassicLowenergy);
        sb.append(", btMaxpowRate=").append(btMaxpowRate);
        sb.append(", btMaxpowCount=").append(btMaxpowCount);
        sb.append(", btMaxpowFreq=").append(btMaxpowFreq);
        sb.append(", btMaxpowResult=").append(btMaxpowResult);
        sb.append(", btMaxpowJudgement=").append(btMaxpowJudgement);
        sb.append(", btMaxpowTime=").append(btMaxpowTime);
        sb.append(", btMaxpowDelete=").append(btMaxpowDelete);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}