package com.gzteleader.wlanReportUtils.entity;

import java.io.Serializable;
import java.util.Date;

public class BtFreq implements Serializable {
    private String btFreqId;

    private String infoId;

    private Boolean btFreqClassicLowenergy;

    private Double btFreqRate;

    private Integer btFreqCount;

    private Double btFreqFreq;

    private Double btFreqResult;

    private Boolean btFreqJudgement;

    private Date btFreqTime;

    private Boolean btFreqDelete;

    private static final long serialVersionUID = 1L;

    public String getBtFreqId() {
        return btFreqId;
    }

    public void setBtFreqId(String btFreqId) {
        this.btFreqId = btFreqId == null ? null : btFreqId.trim();
    }

    public String getInfoId() {
        return infoId;
    }

    public void setInfoId(String infoId) {
        this.infoId = infoId == null ? null : infoId.trim();
    }

    public Boolean getBtFreqClassicLowenergy() {
        return btFreqClassicLowenergy;
    }

    public void setBtFreqClassicLowenergy(Boolean btFreqClassicLowenergy) {
        this.btFreqClassicLowenergy = btFreqClassicLowenergy;
    }

    public Double getBtFreqRate() {
        return btFreqRate;
    }

    public void setBtFreqRate(Double btFreqRate) {
        this.btFreqRate = btFreqRate;
    }

    public Integer getBtFreqCount() {
        return btFreqCount;
    }

    public void setBtFreqCount(Integer btFreqCount) {
        this.btFreqCount = btFreqCount;
    }

    public Double getBtFreqFreq() {
        return btFreqFreq;
    }

    public void setBtFreqFreq(Double btFreqFreq) {
        this.btFreqFreq = btFreqFreq;
    }

    public Double getBtFreqResult() {
        return btFreqResult;
    }

    public void setBtFreqResult(Double btFreqResult) {
        this.btFreqResult = btFreqResult;
    }

    public Boolean getBtFreqJudgement() {
        return btFreqJudgement;
    }

    public void setBtFreqJudgement(Boolean btFreqJudgement) {
        this.btFreqJudgement = btFreqJudgement;
    }

    public Date getBtFreqTime() {
        return btFreqTime;
    }

    public void setBtFreqTime(Date btFreqTime) {
        this.btFreqTime = btFreqTime;
    }

    public Boolean getBtFreqDelete() {
        return btFreqDelete;
    }

    public void setBtFreqDelete(Boolean btFreqDelete) {
        this.btFreqDelete = btFreqDelete;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", btFreqId=").append(btFreqId);
        sb.append(", infoId=").append(infoId);
        sb.append(", btFreqClassicLowenergy=").append(btFreqClassicLowenergy);
        sb.append(", btFreqRate=").append(btFreqRate);
        sb.append(", btFreqCount=").append(btFreqCount);
        sb.append(", btFreqFreq=").append(btFreqFreq);
        sb.append(", btFreqResult=").append(btFreqResult);
        sb.append(", btFreqJudgement=").append(btFreqJudgement);
        sb.append(", btFreqTime=").append(btFreqTime);
        sb.append(", btFreqDelete=").append(btFreqDelete);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}