package com.gzteleader.wlanReportUtils.entity;

import java.io.Serializable;
import java.util.Date;

import com.gzteleader.wlanReportUtils.bean.FormatResult;

public class WlanMaxpower  extends FormatResult implements Serializable {
    private String wlanMaxpowerId;

    private String infoId;

    private Integer wlanMaxpowerCount;

    private String wlanMaxpowerAnt;

    private String wlanMaxpowerModel;

    private String wlanMaxpowerRate;

    private String wlanMaxpowerFreq;

    private Double wlanMaxpowerResult;

    private Boolean wlanMaxpowerJudgement;

    private Date wlanMaxpowerTime;

    private Boolean wlanMaxpowerDelete;

    private static final long serialVersionUID = 1L;

    public String getWlanMaxpowerId() {
        return wlanMaxpowerId;
    }

    public void setWlanMaxpowerId(String wlanMaxpowerId) {
        this.wlanMaxpowerId = wlanMaxpowerId == null ? null : wlanMaxpowerId.trim();
    }

    public String getInfoId() {
        return infoId;
    }

    public void setInfoId(String infoId) {
        this.infoId = infoId == null ? null : infoId.trim();
    }

    public Integer getWlanMaxpowerCount() {
        return wlanMaxpowerCount;
    }

    public void setWlanMaxpowerCount(Integer wlanMaxpowerCount) {
        this.wlanMaxpowerCount = wlanMaxpowerCount;
    }

    public String getWlanMaxpowerAnt() {
        return wlanMaxpowerAnt;
    }

    public void setWlanMaxpowerAnt(String wlanMaxpowerAnt) {
        this.wlanMaxpowerAnt = wlanMaxpowerAnt == null ? null : wlanMaxpowerAnt.trim();
    }

    public String getWlanMaxpowerModel() {
        return wlanMaxpowerModel;
    }

    public void setWlanMaxpowerModel(String wlanMaxpowerModel) {
        this.wlanMaxpowerModel = wlanMaxpowerModel == null ? null : wlanMaxpowerModel.trim();
    }

    public String getWlanMaxpowerRate() {
        return wlanMaxpowerRate;
    }

    public void setWlanMaxpowerRate(String wlanMaxpowerRate) {
        this.wlanMaxpowerRate = wlanMaxpowerRate == null ? null : wlanMaxpowerRate.trim();
    }

    public String getWlanMaxpowerFreq() {
        return wlanMaxpowerFreq;
    }

    public void setWlanMaxpowerFreq(String wlanMaxpowerFreq) {
        this.wlanMaxpowerFreq = wlanMaxpowerFreq == null ? null : wlanMaxpowerFreq.trim();
    }

    public Double getWlanMaxpowerResult() {
        return wlanMaxpowerResult;
    }

    public void setWlanMaxpowerResult(Double wlanMaxpowerResult) {
        this.wlanMaxpowerResult = wlanMaxpowerResult;
    }

    public Boolean getWlanMaxpowerJudgement() {
        return wlanMaxpowerJudgement;
    }

    public void setWlanMaxpowerJudgement(Boolean wlanMaxpowerJudgement) {
        this.wlanMaxpowerJudgement = wlanMaxpowerJudgement;
    }

    public Date getWlanMaxpowerTime() {
        return wlanMaxpowerTime;
    }

    public void setWlanMaxpowerTime(Date wlanMaxpowerTime) {
        this.wlanMaxpowerTime = wlanMaxpowerTime;
    }

    public Boolean getWlanMaxpowerDelete() {
        return wlanMaxpowerDelete;
    }

    public void setWlanMaxpowerDelete(Boolean wlanMaxpowerDelete) {
        this.wlanMaxpowerDelete = wlanMaxpowerDelete;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", wlanMaxpowerId=").append(wlanMaxpowerId);
        sb.append(", infoId=").append(infoId);
        sb.append(", wlanMaxpowerCount=").append(wlanMaxpowerCount);
        sb.append(", wlanMaxpowerAnt=").append(wlanMaxpowerAnt);
        sb.append(", wlanMaxpowerModel=").append(wlanMaxpowerModel);
        sb.append(", wlanMaxpowerRate=").append(wlanMaxpowerRate);
        sb.append(", wlanMaxpowerFreq=").append(wlanMaxpowerFreq);
        sb.append(", wlanMaxpowerResult=").append(wlanMaxpowerResult);
        sb.append(", wlanMaxpowerJudgement=").append(wlanMaxpowerJudgement);
        sb.append(", wlanMaxpowerTime=").append(wlanMaxpowerTime);
        sb.append(", wlanMaxpowerDelete=").append(wlanMaxpowerDelete);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
    


	@Override
	public String getModel() {
		return wlanMaxpowerModel;
	}

	@Override
	public String getRate() {
		return wlanMaxpowerRate;
	}

	@Override
	public String getAnt() {
		return wlanMaxpowerAnt;
	}

	@Override
	public String getCount() {
		return wlanMaxpowerCount.toString();
	}

	@Override
	public String getFreq() {
		return wlanMaxpowerFreq;
	}

	@Override
	public Double getResult() {
		return wlanMaxpowerResult;
	}

	@Override
	public boolean getJudgement() {
		return wlanMaxpowerJudgement;
	}
}