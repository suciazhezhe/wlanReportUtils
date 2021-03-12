package com.gzteleader.wlanReportUtils.entity;

import java.io.Serializable;
import java.util.Date;

import com.gzteleader.wlanReportUtils.bean.FormatResult;

public class WlanMaxpow extends FormatResult implements Serializable {
    private String wlanMaxpowId;

    private String infoId;

    private Integer wlanMaxpowCount;

    private String wlanMaxpowAnt;

    private String wlanMaxpowModel;

    private String wlanMaxpowRate;

    private String wlanMaxpowFreq;

    private Double wlanMaxpowResult;

    private Boolean wlanMaxpowJudgement;

    private Date wlanMaxpowTime;

    private Boolean wlanMaxpowDelete;

    private static final long serialVersionUID = 1L;

    public String getWlanMaxpowId() {
        return wlanMaxpowId;
    }

    public void setWlanMaxpowId(String wlanMaxpowId) {
        this.wlanMaxpowId = wlanMaxpowId == null ? null : wlanMaxpowId.trim();
    }

    public String getInfoId() {
        return infoId;
    }

    public void setInfoId(String infoId) {
        this.infoId = infoId == null ? null : infoId.trim();
    }

    public Integer getWlanMaxpowCount() {
        return wlanMaxpowCount;
    }

    public void setWlanMaxpowCount(Integer wlanMaxpowCount) {
        this.wlanMaxpowCount = wlanMaxpowCount;
    }

    public String getWlanMaxpowAnt() {
        return wlanMaxpowAnt;
    }

    public void setWlanMaxpowAnt(String wlanMaxpowAnt) {
        this.wlanMaxpowAnt = wlanMaxpowAnt == null ? null : wlanMaxpowAnt.trim();
    }

    public String getWlanMaxpowModel() {
        return wlanMaxpowModel;
    }

    public void setWlanMaxpowModel(String wlanMaxpowModel) {
        this.wlanMaxpowModel = wlanMaxpowModel == null ? null : wlanMaxpowModel.trim();
    }

    public String getWlanMaxpowRate() {
        return wlanMaxpowRate;
    }

    public void setWlanMaxpowRate(String wlanMaxpowRate) {
        this.wlanMaxpowRate = wlanMaxpowRate == null ? null : wlanMaxpowRate.trim();
    }

    public String getWlanMaxpowFreq() {
        return wlanMaxpowFreq;
    }

    public void setWlanMaxpowFreq(String wlanMaxpowFreq) {
        this.wlanMaxpowFreq = wlanMaxpowFreq == null ? null : wlanMaxpowFreq.trim();
    }

    public Double getWlanMaxpowResult() {
        return wlanMaxpowResult;
    }

    public void setWlanMaxpowResult(Double wlanMaxpowResult) {
        this.wlanMaxpowResult = wlanMaxpowResult;
    }

    public Boolean getWlanMaxpowJudgement() {
        return wlanMaxpowJudgement;
    }

    public void setWlanMaxpowJudgement(Boolean wlanMaxpowJudgement) {
        this.wlanMaxpowJudgement = wlanMaxpowJudgement;
    }

    public Date getWlanMaxpowTime() {
        return wlanMaxpowTime;
    }

    public void setWlanMaxpowTime(Date wlanMaxpowTime) {
        this.wlanMaxpowTime = wlanMaxpowTime;
    }

    public Boolean getWlanMaxpowDelete() {
        return wlanMaxpowDelete;
    }

    public void setWlanMaxpowDelete(Boolean wlanMaxpowDelete) {
        this.wlanMaxpowDelete = wlanMaxpowDelete;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", wlanMaxpowId=").append(wlanMaxpowId);
        sb.append(", infoId=").append(infoId);
        sb.append(", wlanMaxpowCount=").append(wlanMaxpowCount);
        sb.append(", wlanMaxpowAnt=").append(wlanMaxpowAnt);
        sb.append(", wlanMaxpowModel=").append(wlanMaxpowModel);
        sb.append(", wlanMaxpowRate=").append(wlanMaxpowRate);
        sb.append(", wlanMaxpowFreq=").append(wlanMaxpowFreq);
        sb.append(", wlanMaxpowResult=").append(wlanMaxpowResult);
        sb.append(", wlanMaxpowJudgement=").append(wlanMaxpowJudgement);
        sb.append(", wlanMaxpowTime=").append(wlanMaxpowTime);
        sb.append(", wlanMaxpowDelete=").append(wlanMaxpowDelete);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }

	@Override
	public String getModel() {
		return wlanMaxpowModel;
	}

	@Override
	public String getRate() {
		return wlanMaxpowRate;
	}

	@Override
	public String getAnt() {
		return wlanMaxpowAnt;
	}

	@Override
	public String getCount() {
		return wlanMaxpowCount.toString();
	}

	@Override
	public String getFreq() {
		return wlanMaxpowFreq;
	}

	@Override
	public Double getResult() {
		return wlanMaxpowResult;
	}

	@Override
	public boolean getJudgement() {
		return wlanMaxpowJudgement;
	}
}