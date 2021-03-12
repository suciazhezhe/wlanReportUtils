package com.gzteleader.wlanReportUtils.entity;

import java.io.Serializable;
import java.util.Date;

import com.gzteleader.wlanReportUtils.bean.FormatResult;

public class WlanPower  extends FormatResult implements Serializable {
	
    private String wlanPowerId;

    private String infoId;

    private Integer wlanPowerCount;

    private String wlanPowerAnt;

    private String wlanPowerModel;

    private String wlanPowerRate;

    private String wlanPowerFreq;

    private Double wlanPowerResult;

    private Boolean wlanPowerJudgement;

    private Date wlanPowerTime;

    private Boolean wlanPowerDelete;

    private static final long serialVersionUID = 1L;

    public String getWlanPowerId() {
        return wlanPowerId;
    }

    public void setWlanPowerId(String wlanPowerId) {
        this.wlanPowerId = wlanPowerId == null ? null : wlanPowerId.trim();
    }

    public String getInfoId() {
        return infoId;
    }

    public void setInfoId(String infoId) {
        this.infoId = infoId == null ? null : infoId.trim();
    }

    public Integer getWlanPowerCount() {
        return wlanPowerCount;
    }

    public void setWlanPowerCount(Integer wlanPowerCount) {
        this.wlanPowerCount = wlanPowerCount;
    }

    public String getWlanPowerAnt() {
        return wlanPowerAnt;
    }

    public void setWlanPowerAnt(String wlanPowerAnt) {
        this.wlanPowerAnt = wlanPowerAnt == null ? null : wlanPowerAnt.trim();
    }

    public String getWlanPowerModel() {
        return wlanPowerModel;
    }

    public void setWlanPowerModel(String wlanPowerModel) {
        this.wlanPowerModel = wlanPowerModel == null ? null : wlanPowerModel.trim();
    }

    public String getWlanPowerRate() {
        return wlanPowerRate;
    }

    public void setWlanPowerRate(String wlanPowerRate) {
        this.wlanPowerRate = wlanPowerRate == null ? null : wlanPowerRate.trim();
    }

    public String getWlanPowerFreq() {
        return wlanPowerFreq;
    }

    public void setWlanPowerFreq(String wlanPowerFreq) {
        this.wlanPowerFreq = wlanPowerFreq == null ? null : wlanPowerFreq.trim();
    }

    public Double getWlanPowerResult() {
        return wlanPowerResult;
    }

    public void setWlanPowerResult(Double wlanPowerResult) {
        this.wlanPowerResult = wlanPowerResult;
    }

    public Boolean getWlanPowerJudgement() {
        return wlanPowerJudgement;
    }

    public void setWlanPowerJudgement(Boolean wlanPowerJudgement) {
        this.wlanPowerJudgement = wlanPowerJudgement;
    }

    public Date getWlanPowerTime() {
        return wlanPowerTime;
    }

    public void setWlanPowerTime(Date wlanPowerTime) {
        this.wlanPowerTime = wlanPowerTime;
    }

    public Boolean getWlanPowerDelete() {
        return wlanPowerDelete;
    }

    public void setWlanPowerDelete(Boolean wlanPowerDelete) {
        this.wlanPowerDelete = wlanPowerDelete;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", wlanPowerId=").append(wlanPowerId);
        sb.append(", infoId=").append(infoId);
        sb.append(", wlanPowerCount=").append(wlanPowerCount);
        sb.append(", wlanPowerAnt=").append(wlanPowerAnt);
        sb.append(", wlanPowerModel=").append(wlanPowerModel);
        sb.append(", wlanPowerRate=").append(wlanPowerRate);
        sb.append(", wlanPowerFreq=").append(wlanPowerFreq);
        sb.append(", wlanPowerResult=").append(wlanPowerResult);
        sb.append(", wlanPowerJudgement=").append(wlanPowerJudgement);
        sb.append(", wlanPowerTime=").append(wlanPowerTime);
        sb.append(", wlanPowerDelete=").append(wlanPowerDelete);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
    


	@Override
	public String getModel() {
		return wlanPowerModel;
	}

	@Override
	public String getRate() {
		return wlanPowerRate;
	}

	@Override
	public String getAnt() {
		return wlanPowerAnt;
	}

	@Override
	public String getCount() {
		return wlanPowerCount.toString();
	}

	@Override
	public String getFreq() {
		return wlanPowerFreq;
	}

	@Override
	public Double getResult() {
		return wlanPowerResult;
	}

	@Override
	public boolean getJudgement() {
		return wlanPowerJudgement;
	}
}