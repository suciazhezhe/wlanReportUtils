package com.gzteleader.wlanReportUtils.entity;

import java.io.Serializable;
import java.util.Date;

import com.gzteleader.wlanReportUtils.bean.FormatResult;

public class WlanEirp extends FormatResult implements Serializable {

    private static final long serialVersionUID = 1L;
	
    private String wlanEirpId;

    private String infoId;

    private Integer wlanEirpCount;

    private String wlanEirpAnt;

    private String wlanEirpModel;

    private String wlanEirpRate;

    private String wlanEirpFreq;

    private Double wlanEirpResult;

    private Boolean wlanEirpJudgement;

    private Date wlanEirpTime;

    private Boolean wlanEirpDelete;

    public String getWlanEirpId() {
        return wlanEirpId;
    }

    public void setWlanEirpId(String wlanEirpId) {
        this.wlanEirpId = wlanEirpId == null ? null : wlanEirpId.trim();
    }

    public String getInfoId() {
        return infoId;
    }

    public void setInfoId(String infoId) {
        this.infoId = infoId == null ? null : infoId.trim();
    }

    public Integer getWlanEirpCount() {
        return wlanEirpCount;
    }

    public void setWlanEirpCount(Integer wlanEirpCount) {
        this.wlanEirpCount = wlanEirpCount;
    }

    public String getWlanEirpAnt() {
        return wlanEirpAnt;
    }

    public void setWlanEirpAnt(String wlanEirpAnt) {
        this.wlanEirpAnt = wlanEirpAnt == null ? null : wlanEirpAnt.trim();
    }

    public String getWlanEirpModel() {
        return wlanEirpModel;
    }

    public void setWlanEirpModel(String wlanEirpModel) {
        this.wlanEirpModel = wlanEirpModel == null ? null : wlanEirpModel.trim();
    }

    public String getWlanEirpRate() {
        return wlanEirpRate;
    }

    public void setWlanEirpRate(String wlanEirpRate) {
        this.wlanEirpRate = wlanEirpRate == null ? null : wlanEirpRate.trim();
    }

    public String getWlanEirpFreq() {
        return wlanEirpFreq;
    }

    public void setWlanEirpFreq(String wlanEirpFreq) {
        this.wlanEirpFreq = wlanEirpFreq == null ? null : wlanEirpFreq.trim();
    }

    public Double getWlanEirpResult() {
        return wlanEirpResult;
    }

    public void setWlanEirpResult(Double wlanEirpResult) {
        this.wlanEirpResult = wlanEirpResult;
    }

    public Boolean getWlanEirpJudgement() {
        return wlanEirpJudgement;
    }

    public void setWlanEirpJudgement(Boolean wlanEirpJudgement) {
        this.wlanEirpJudgement = wlanEirpJudgement;
    }

    public Date getWlanEirpTime() {
        return wlanEirpTime;
    }

    public void setWlanEirpTime(Date wlanEirpTime) {
        this.wlanEirpTime = wlanEirpTime;
    }

    public Boolean getWlanEirpDelete() {
        return wlanEirpDelete;
    }

    public void setWlanEirpDelete(Boolean wlanEirpDelete) {
        this.wlanEirpDelete = wlanEirpDelete;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", wlanEirpId=").append(wlanEirpId);
        sb.append(", infoId=").append(infoId);
        sb.append(", wlanEirpCount=").append(wlanEirpCount);
        sb.append(", wlanEirpAnt=").append(wlanEirpAnt);
        sb.append(", wlanEirpModel=").append(wlanEirpModel);
        sb.append(", wlanEirpRate=").append(wlanEirpRate);
        sb.append(", wlanEirpFreq=").append(wlanEirpFreq);
        sb.append(", wlanEirpResult=").append(wlanEirpResult);
        sb.append(", wlanEirpJudgement=").append(wlanEirpJudgement);
        sb.append(", wlanEirpTime=").append(wlanEirpTime);
        sb.append(", wlanEirpDelete=").append(wlanEirpDelete);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }

	@Override
	public String getModel() {
		return wlanEirpModel;
	}

	@Override
	public String getRate() {
		return wlanEirpRate;
	}

	@Override
	public String getAnt() {
		return wlanEirpAnt;
	}

	@Override
	public String getCount() {
		return wlanEirpCount.toString();
	}

	@Override
	public String getFreq() {
		return wlanEirpFreq;
	}

	@Override
	public Double getResult() {
		return wlanEirpResult;
	}

	@Override
	public boolean getJudgement() {
		return wlanEirpJudgement;
	}
}