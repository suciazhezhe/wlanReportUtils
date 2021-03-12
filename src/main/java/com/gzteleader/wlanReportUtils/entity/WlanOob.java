package com.gzteleader.wlanReportUtils.entity;

import java.io.Serializable;
import java.util.Date;

import com.gzteleader.wlanReportUtils.bean.FormatResult;

public class WlanOob  extends FormatResult implements Serializable {
    private String wlanOobId;

    private String infoId;

    private Integer wlanOobCount;

    private String wlanOobAnt;

    private String wlanOobModel;

    private String wlanOobRate;

    private String wlanOobFreq;

    private Double wlanOobResult;

    private Boolean wlanOobJudgement;

    private Date wlanOobTime;

    private Boolean wlanOobDelete;

    private static final long serialVersionUID = 1L;

    public String getWlanOobId() {
        return wlanOobId;
    }

    public void setWlanOobId(String wlanOobId) {
        this.wlanOobId = wlanOobId == null ? null : wlanOobId.trim();
    }

    public String getInfoId() {
        return infoId;
    }

    public void setInfoId(String infoId) {
        this.infoId = infoId == null ? null : infoId.trim();
    }

    public Integer getWlanOobCount() {
        return wlanOobCount;
    }

    public void setWlanOobCount(Integer wlanOobCount) {
        this.wlanOobCount = wlanOobCount;
    }

    public String getWlanOobAnt() {
        return wlanOobAnt;
    }

    public void setWlanOobAnt(String wlanOobAnt) {
        this.wlanOobAnt = wlanOobAnt == null ? null : wlanOobAnt.trim();
    }

    public String getWlanOobModel() {
        return wlanOobModel;
    }

    public void setWlanOobModel(String wlanOobModel) {
        this.wlanOobModel = wlanOobModel == null ? null : wlanOobModel.trim();
    }

    public String getWlanOobRate() {
        return wlanOobRate;
    }

    public void setWlanOobRate(String wlanOobRate) {
        this.wlanOobRate = wlanOobRate == null ? null : wlanOobRate.trim();
    }

    public String getWlanOobFreq() {
        return wlanOobFreq;
    }

    public void setWlanOobFreq(String wlanOobFreq) {
        this.wlanOobFreq = wlanOobFreq == null ? null : wlanOobFreq.trim();
    }

    public Double getWlanOobResult() {
        return wlanOobResult;
    }

    public void setWlanOobResult(Double wlanOobResult) {
        this.wlanOobResult = wlanOobResult;
    }

    public Boolean getWlanOobJudgement() {
        return wlanOobJudgement;
    }

    public void setWlanOobJudgement(Boolean wlanOobJudgement) {
        this.wlanOobJudgement = wlanOobJudgement;
    }

    public Date getWlanOobTime() {
        return wlanOobTime;
    }

    public void setWlanOobTime(Date wlanOobTime) {
        this.wlanOobTime = wlanOobTime;
    }

    public Boolean getWlanOobDelete() {
        return wlanOobDelete;
    }

    public void setWlanOobDelete(Boolean wlanOobDelete) {
        this.wlanOobDelete = wlanOobDelete;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", wlanOobId=").append(wlanOobId);
        sb.append(", infoId=").append(infoId);
        sb.append(", wlanOobCount=").append(wlanOobCount);
        sb.append(", wlanOobAnt=").append(wlanOobAnt);
        sb.append(", wlanOobModel=").append(wlanOobModel);
        sb.append(", wlanOobRate=").append(wlanOobRate);
        sb.append(", wlanOobFreq=").append(wlanOobFreq);
        sb.append(", wlanOobResult=").append(wlanOobResult);
        sb.append(", wlanOobJudgement=").append(wlanOobJudgement);
        sb.append(", wlanOobTime=").append(wlanOobTime);
        sb.append(", wlanOobDelete=").append(wlanOobDelete);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }

	@Override
	public String getModel() {
		return wlanOobModel;
	}

	@Override
	public String getRate() {
		return wlanOobRate;
	}

	@Override
	public String getAnt() {
		return wlanOobAnt;
	}

	@Override
	public String getCount() {
		return wlanOobCount.toString();
	}

	@Override
	public String getFreq() {
		return wlanOobFreq;
	}

	@Override
	public Double getResult() {
		return wlanOobResult;
	}

	@Override
	public boolean getJudgement() {
		return wlanOobJudgement;
	}
}