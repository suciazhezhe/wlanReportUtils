package com.gzteleader.wlanReportUtils.entity;

import java.io.Serializable;
import java.util.Date;

public class WlanSe implements Serializable {
    private String wlanSeId;

    private String infoId;

    private Integer wlanSeCount;

    private String wlanSeAnt;

    private String wlanSeModel;

    private String wlanSeRate;

    private String wlanSeFreq;

    private String wlanSeBand;

    private Double wlanSeBandfreq;

    private Double wlanSeBandresult;

    private String wlanSeBandpicture;

    private Boolean wlanSeBandjudgement;

    private Date wlanSeTime;

    private Boolean wlanSeDelete;

    private static final long serialVersionUID = 1L;

    public String getWlanSeId() {
        return wlanSeId;
    }

    public void setWlanSeId(String wlanSeId) {
        this.wlanSeId = wlanSeId == null ? null : wlanSeId.trim();
    }

    public String getInfoId() {
        return infoId;
    }

    public void setInfoId(String infoId) {
        this.infoId = infoId == null ? null : infoId.trim();
    }

    public Integer getWlanSeCount() {
        return wlanSeCount;
    }

    public void setWlanSeCount(Integer wlanSeCount) {
        this.wlanSeCount = wlanSeCount;
    }

    public String getWlanSeAnt() {
        return wlanSeAnt;
    }

    public void setWlanSeAnt(String wlanSeAnt) {
        this.wlanSeAnt = wlanSeAnt == null ? null : wlanSeAnt.trim();
    }

    public String getWlanSeModel() {
        return wlanSeModel;
    }

    public void setWlanSeModel(String wlanSeModel) {
        this.wlanSeModel = wlanSeModel == null ? null : wlanSeModel.trim();
    }

    public String getWlanSeRate() {
        return wlanSeRate;
    }

    public void setWlanSeRate(String wlanSeRate) {
        this.wlanSeRate = wlanSeRate == null ? null : wlanSeRate.trim();
    }

    public String getWlanSeFreq() {
        return wlanSeFreq;
    }

    public void setWlanSeFreq(String wlanSeFreq) {
        this.wlanSeFreq = wlanSeFreq == null ? null : wlanSeFreq.trim();
    }

    public String getWlanSeBand() {
        return wlanSeBand;
    }

    public void setWlanSeBand(String wlanSeBand) {
        this.wlanSeBand = wlanSeBand == null ? null : wlanSeBand.trim();
    }

    public Double getWlanSeBandfreq() {
        return wlanSeBandfreq;
    }

    public void setWlanSeBandfreq(Double wlanSeBandfreq) {
        this.wlanSeBandfreq = wlanSeBandfreq/1000000;
    }

    public Double getWlanSeBandresult() {
        return wlanSeBandresult;
    }

    public void setWlanSeBandresult(Double wlanSeBandresult) {
        this.wlanSeBandresult = wlanSeBandresult;
    }

    public String getWlanSeBandpicture() {
        return wlanSeBandpicture;
    }

    public void setWlanSeBandpicture(String wlanSeBandpicture) {
        this.wlanSeBandpicture = wlanSeBandpicture == null ? null : wlanSeBandpicture.trim();
    }

    public Boolean getWlanSeBandjudgement() {
        return wlanSeBandjudgement;
    }

    public void setWlanSeBandjudgement(Boolean wlanSeBandjudgement) {
        this.wlanSeBandjudgement = wlanSeBandjudgement;
    }

    public Date getWlanSeTime() {
        return wlanSeTime;
    }

    public void setWlanSeTime(Date wlanSeTime) {
        this.wlanSeTime = wlanSeTime;
    }

    public Boolean getWlanSeDelete() {
        return wlanSeDelete;
    }

    public void setWlanSeDelete(Boolean wlanSeDelete) {
        this.wlanSeDelete = wlanSeDelete;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", wlanSeId=").append(wlanSeId);
        sb.append(", infoId=").append(infoId);
        sb.append(", wlanSeCount=").append(wlanSeCount);
        sb.append(", wlanSeAnt=").append(wlanSeAnt);
        sb.append(", wlanSeModel=").append(wlanSeModel);
        sb.append(", wlanSeRate=").append(wlanSeRate);
        sb.append(", wlanSeFreq=").append(wlanSeFreq);
        sb.append(", wlanSeBand=").append(wlanSeBand);
        sb.append(", wlanSeBandfreq=").append(wlanSeBandfreq);
        sb.append(", wlanSeBandresult=").append(wlanSeBandresult);
        sb.append(", wlanSeBandpicture=").append(wlanSeBandpicture);
        sb.append(", wlanSeBandjudgement=").append(wlanSeBandjudgement);
        sb.append(", wlanSeTime=").append(wlanSeTime);
        sb.append(", wlanSeDelete=").append(wlanSeDelete);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}