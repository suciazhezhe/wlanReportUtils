package com.gzteleader.wlanReportUtils.entity;

import java.io.Serializable;
import java.util.Date;

public class BtOob implements Serializable {
    private String btOobId;

    private String infoId;

    private Boolean btOobClassicLowenergy;

    private Double btOobRate;

    private Integer btOobCount;

    private Double btOobFreq;

    private Double btOobResult;

    private Boolean btOobJudgement;

    private Date btOobTime;

    private Boolean btOobDelete;

    private static final long serialVersionUID = 1L;

    public String getBtOobId() {
        return btOobId;
    }

    public void setBtOobId(String btOobId) {
        this.btOobId = btOobId == null ? null : btOobId.trim();
    }

    public String getInfoId() {
        return infoId;
    }

    public void setInfoId(String infoId) {
        this.infoId = infoId == null ? null : infoId.trim();
    }

    public Boolean getBtOobClassicLowenergy() {
        return btOobClassicLowenergy;
    }

    public void setBtOobClassicLowenergy(Boolean btOobClassicLowenergy) {
        this.btOobClassicLowenergy = btOobClassicLowenergy;
    }

    public Double getBtOobRate() {
        return btOobRate;
    }

    public void setBtOobRate(Double btOobRate) {
        this.btOobRate = btOobRate;
    }

    public Integer getBtOobCount() {
        return btOobCount;
    }

    public void setBtOobCount(Integer btOobCount) {
        this.btOobCount = btOobCount;
    }

    public Double getBtOobFreq() {
        return btOobFreq;
    }

    public void setBtOobFreq(Double btOobFreq) {
        this.btOobFreq = btOobFreq;
    }

    public Double getBtOobResult() {
        return btOobResult;
    }

    public void setBtOobResult(Double btOobResult) {
        this.btOobResult = btOobResult;
    }

    public Boolean getBtOobJudgement() {
        return btOobJudgement;
    }

    public void setBtOobJudgement(Boolean btOobJudgement) {
        this.btOobJudgement = btOobJudgement;
    }

    public Date getBtOobTime() {
        return btOobTime;
    }

    public void setBtOobTime(Date btOobTime) {
        this.btOobTime = btOobTime;
    }

    public Boolean getBtOobDelete() {
        return btOobDelete;
    }

    public void setBtOobDelete(Boolean btOobDelete) {
        this.btOobDelete = btOobDelete;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", btOobId=").append(btOobId);
        sb.append(", infoId=").append(infoId);
        sb.append(", btOobClassicLowenergy=").append(btOobClassicLowenergy);
        sb.append(", btOobRate=").append(btOobRate);
        sb.append(", btOobCount=").append(btOobCount);
        sb.append(", btOobFreq=").append(btOobFreq);
        sb.append(", btOobResult=").append(btOobResult);
        sb.append(", btOobJudgement=").append(btOobJudgement);
        sb.append(", btOobTime=").append(btOobTime);
        sb.append(", btOobDelete=").append(btOobDelete);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}