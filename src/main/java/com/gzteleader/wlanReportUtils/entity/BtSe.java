package com.gzteleader.wlanReportUtils.entity;

import java.io.Serializable;
import java.util.Date;

public class BtSe implements Serializable {
    private String btSeId;

    private String infoId;

    private Boolean btSeClassicLowenergy;

    private Double btSeRate;

    private Integer btSeCount;

    private Double btSeFreq;

    private String btSeBand;

    private Double btSeBandfreq;

    private Double btSeBandresult;

    private String btSeBandpicture;

    private Boolean btSeBandjudgement;

    private Date btSeTime;

    private Boolean btSeDelete;

    private static final long serialVersionUID = 1L;

    public String getBtSeId() {
        return btSeId;
    }

    public void setBtSeId(String btSeId) {
        this.btSeId = btSeId == null ? null : btSeId.trim();
    }

    public String getInfoId() {
        return infoId;
    }

    public void setInfoId(String infoId) {
        this.infoId = infoId == null ? null : infoId.trim();
    }

    public Boolean getBtSeClassicLowenergy() {
        return btSeClassicLowenergy;
    }

    public void setBtSeClassicLowenergy(Boolean btSeClassicLowenergy) {
        this.btSeClassicLowenergy = btSeClassicLowenergy;
    }

    public Double getBtSeRate() {
        return btSeRate;
    }

    public void setBtSeRate(Double btSeRate) {
        this.btSeRate = btSeRate;
    }

    public Integer getBtSeCount() {
        return btSeCount;
    }

    public void setBtSeCount(Integer btSeCount) {
        this.btSeCount = btSeCount;
    }

    public Double getBtSeFreq() {
        return btSeFreq;
    }

    public void setBtSeFreq(Double btSeFreq) {
        this.btSeFreq = btSeFreq;
    }

    public String getBtSeBand() {
        return btSeBand;
    }

    public void setBtSeBand(String btSeBand) {
        this.btSeBand = btSeBand == null ? null : btSeBand.trim();
    }

    public Double getBtSeBandfreq() {
        return btSeBandfreq;
    }

    public void setBtSeBandfreq(Double btSeBandfreq) {
        this.btSeBandfreq = btSeBandfreq;
    }

    public Double getBtSeBandresult() {
        return btSeBandresult;
    }

    public void setBtSeBandresult(Double btSeBandresult) {
        this.btSeBandresult = btSeBandresult;
    }

    public String getBtSeBandpicture() {
        return btSeBandpicture;
    }

    public void setBtSeBandpicture(String btSeBandpicture) {
        this.btSeBandpicture = btSeBandpicture == null ? null : btSeBandpicture.trim();
    }

    public Boolean getBtSeBandjudgement() {
        return btSeBandjudgement;
    }

    public void setBtSeBandjudgement(Boolean btSeBandjudgement) {
        this.btSeBandjudgement = btSeBandjudgement;
    }

    public Date getBtSeTime() {
        return btSeTime;
    }

    public void setBtSeTime(Date btSeTime) {
        this.btSeTime = btSeTime;
    }

    public Boolean getBtSeDelete() {
        return btSeDelete;
    }

    public void setBtSeDelete(Boolean btSeDelete) {
        this.btSeDelete = btSeDelete;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", btSeId=").append(btSeId);
        sb.append(", infoId=").append(infoId);
        sb.append(", btSeClassicLowenergy=").append(btSeClassicLowenergy);
        sb.append(", btSeRate=").append(btSeRate);
        sb.append(", btSeCount=").append(btSeCount);
        sb.append(", btSeFreq=").append(btSeFreq);
        sb.append(", btSeBand=").append(btSeBand);
        sb.append(", btSeBandfreq=").append(btSeBandfreq);
        sb.append(", btSeBandresult=").append(btSeBandresult);
        sb.append(", btSeBandpicture=").append(btSeBandpicture);
        sb.append(", btSeBandjudgement=").append(btSeBandjudgement);
        sb.append(", btSeTime=").append(btSeTime);
        sb.append(", btSeDelete=").append(btSeDelete);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}