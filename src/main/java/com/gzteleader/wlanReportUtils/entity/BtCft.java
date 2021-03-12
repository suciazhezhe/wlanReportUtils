package com.gzteleader.wlanReportUtils.entity;

import java.io.Serializable;
import java.util.Date;

public class BtCft implements Serializable {
    private String btCftId;

    private String infoId;

    private Boolean btCftClassicLowenergy;

    private Integer btCftCount;

    private Double btCftFreq;

    private Double btCftResult;

    private Boolean btCftJudgement;

    private Date btCftTime;

    private Boolean btCftDelete;

    private static final long serialVersionUID = 1L;

    public String getBtCftId() {
        return btCftId;
    }

    public void setBtCftId(String btCftId) {
        this.btCftId = btCftId == null ? null : btCftId.trim();
    }

    public String getInfoId() {
        return infoId;
    }

    public void setInfoId(String infoId) {
        this.infoId = infoId == null ? null : infoId.trim();
    }

    public Boolean getBtCftClassicLowenergy() {
        return btCftClassicLowenergy;
    }

    public void setBtCftClassicLowenergy(Boolean btCftClassicLowenergy) {
        this.btCftClassicLowenergy = btCftClassicLowenergy;
    }

    public Integer getBtCftCount() {
        return btCftCount;
    }

    public void setBtCftCount(Integer btCftCount) {
        this.btCftCount = btCftCount;
    }

    public Double getBtCftFreq() {
        return btCftFreq;
    }

    public void setBtCftFreq(Double btCftFreq) {
        this.btCftFreq = btCftFreq;
    }

    public Double getBtCftResult() {
        return btCftResult;
    }

    public void setBtCftResult(Double btCftResult) {
        this.btCftResult = btCftResult;
    }

    public Boolean getBtCftJudgement() {
        return btCftJudgement;
    }

    public void setBtCftJudgement(Boolean btCftJudgement) {
        this.btCftJudgement = btCftJudgement;
    }

    public Date getBtCftTime() {
        return btCftTime;
    }

    public void setBtCftTime(Date btCftTime) {
        this.btCftTime = btCftTime;
    }

    public Boolean getBtCftDelete() {
        return btCftDelete;
    }

    public void setBtCftDelete(Boolean btCftDelete) {
        this.btCftDelete = btCftDelete;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", btCftId=").append(btCftId);
        sb.append(", infoId=").append(infoId);
        sb.append(", btCftClassicLowenergy=").append(btCftClassicLowenergy);
        sb.append(", btCftCount=").append(btCftCount);
        sb.append(", btCftFreq=").append(btCftFreq);
        sb.append(", btCftResult=").append(btCftResult);
        sb.append(", btCftJudgement=").append(btCftJudgement);
        sb.append(", btCftTime=").append(btCftTime);
        sb.append(", btCftDelete=").append(btCftDelete);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}