package com.gzteleader.wlanReportUtils.entity;

import java.io.Serializable;
import java.util.Date;

public class BtObw implements Serializable {
    private String btObwId;

    private String infoId;

    private Boolean btObwClassicLowenergy;

    private Double btObwRate;

    private Integer btObwCount;

    private Double btObwFreq;

    private Double btObwResult;

    private Boolean btObwJudgement;

    private Date btObwTime;

    private Boolean btObwDelete;

    private static final long serialVersionUID = 1L;

    public String getBtObwId() {
        return btObwId;
    }

    public void setBtObwId(String btObwId) {
        this.btObwId = btObwId == null ? null : btObwId.trim();
    }

    public String getInfoId() {
        return infoId;
    }

    public void setInfoId(String infoId) {
        this.infoId = infoId == null ? null : infoId.trim();
    }

    public Boolean getBtObwClassicLowenergy() {
        return btObwClassicLowenergy;
    }

    public void setBtObwClassicLowenergy(Boolean btObwClassicLowenergy) {
        this.btObwClassicLowenergy = btObwClassicLowenergy;
    }

    public Double getBtObwRate() {
        return btObwRate;
    }

    public void setBtObwRate(Double btObwRate) {
        this.btObwRate = btObwRate;
    }

    public Integer getBtObwCount() {
        return btObwCount;
    }

    public void setBtObwCount(Integer btObwCount) {
        this.btObwCount = btObwCount;
    }

    public Double getBtObwFreq() {
        return btObwFreq;
    }

    public void setBtObwFreq(Double btObwFreq) {
        this.btObwFreq = btObwFreq;
    }

    public Double getBtObwResult() {
        return btObwResult;
    }

    public void setBtObwResult(Double btObwResult) {
        this.btObwResult = btObwResult;
    }

    public Boolean getBtObwJudgement() {
        return btObwJudgement;
    }

    public void setBtObwJudgement(Boolean btObwJudgement) {
        this.btObwJudgement = btObwJudgement;
    }

    public Date getBtObwTime() {
        return btObwTime;
    }

    public void setBtObwTime(Date btObwTime) {
        this.btObwTime = btObwTime;
    }

    public Boolean getBtObwDelete() {
        return btObwDelete;
    }

    public void setBtObwDelete(Boolean btObwDelete) {
        this.btObwDelete = btObwDelete;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", btObwId=").append(btObwId);
        sb.append(", infoId=").append(infoId);
        sb.append(", btObwClassicLowenergy=").append(btObwClassicLowenergy);
        sb.append(", btObwRate=").append(btObwRate);
        sb.append(", btObwCount=").append(btObwCount);
        sb.append(", btObwFreq=").append(btObwFreq);
        sb.append(", btObwResult=").append(btObwResult);
        sb.append(", btObwJudgement=").append(btObwJudgement);
        sb.append(", btObwTime=").append(btObwTime);
        sb.append(", btObwDelete=").append(btObwDelete);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}