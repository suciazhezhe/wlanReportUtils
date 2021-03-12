package com.gzteleader.wlanReportUtils.entity;

import java.io.Serializable;
import java.util.Date;

import com.gzteleader.wlanReportUtils.bean.FormatResult;

public class WlanObw  extends FormatResult implements Serializable {
    private String wlanObwId;

    private String infoId;

    private Integer wlanObwCount;

    private String wlanObwAnt;

    private String wlanObwModel;

    private String wlanObwRate;

    private String wlanObwFreq;

    private Double wlanObwResult;

    private Boolean wlanObwJudgement;

    private Date wlanObwTime;

    private Boolean wlanObwDelete;

    private static final long serialVersionUID = 1L;

    public String getWlanObwId() {
        return wlanObwId;
    }

    public void setWlanObwId(String wlanObwId) {
        this.wlanObwId = wlanObwId == null ? null : wlanObwId.trim();
    }

    public String getInfoId() {
        return infoId;
    }

    public void setInfoId(String infoId) {
        this.infoId = infoId == null ? null : infoId.trim();
    }

    public Integer getWlanObwCount() {
        return wlanObwCount;
    }

    public void setWlanObwCount(Integer wlanObwCount) {
        this.wlanObwCount = wlanObwCount;
    }

    public String getWlanObwAnt() {
        return wlanObwAnt;
    }

    public void setWlanObwAnt(String wlanObwAnt) {
        this.wlanObwAnt = wlanObwAnt == null ? null : wlanObwAnt.trim();
    }

    public String getWlanObwModel() {
        return wlanObwModel;
    }

    public void setWlanObwModel(String wlanObwModel) {
        this.wlanObwModel = wlanObwModel == null ? null : wlanObwModel.trim();
    }

    public String getWlanObwRate() {
        return wlanObwRate;
    }

    public void setWlanObwRate(String wlanObwRate) {
        this.wlanObwRate = wlanObwRate == null ? null : wlanObwRate.trim();
    }

    public String getWlanObwFreq() {
        return wlanObwFreq;
    }

    public void setWlanObwFreq(String wlanObwFreq) {
        this.wlanObwFreq = wlanObwFreq == null ? null : wlanObwFreq.trim();
    }

    public Double getWlanObwResult() {
        return wlanObwResult;
    }

    public void setWlanObwResult(Double wlanObwResult) {
        this.wlanObwResult = wlanObwResult/1000000;
    }

    public Boolean getWlanObwJudgement() {
        return wlanObwJudgement;
    }

    public void setWlanObwJudgement(Boolean wlanObwJudgement) {
        this.wlanObwJudgement = wlanObwJudgement;
    }

    public Date getWlanObwTime() {
        return wlanObwTime;
    }

    public void setWlanObwTime(Date wlanObwTime) {
        this.wlanObwTime = wlanObwTime;
    }

    public Boolean getWlanObwDelete() {
        return wlanObwDelete;
    }

    public void setWlanObwDelete(Boolean wlanObwDelete) {
        this.wlanObwDelete = wlanObwDelete;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", wlanObwId=").append(wlanObwId);
        sb.append(", infoId=").append(infoId);
        sb.append(", wlanObwCount=").append(wlanObwCount);
        sb.append(", wlanObwAnt=").append(wlanObwAnt);
        sb.append(", wlanObwModel=").append(wlanObwModel);
        sb.append(", wlanObwRate=").append(wlanObwRate);
        sb.append(", wlanObwFreq=").append(wlanObwFreq);
        sb.append(", wlanObwResult=").append(wlanObwResult);
        sb.append(", wlanObwJudgement=").append(wlanObwJudgement);
        sb.append(", wlanObwTime=").append(wlanObwTime);
        sb.append(", wlanObwDelete=").append(wlanObwDelete);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
    


	@Override
	public String getModel() {
		return wlanObwModel;
	}

	@Override
	public String getRate() {
		return wlanObwRate;
	}

	@Override
	public String getAnt() {
		return wlanObwAnt;
	}

	@Override
	public String getCount() {
		return wlanObwCount.toString();
	}

	@Override
	public String getFreq() {
		return wlanObwFreq;
	}

	@Override
	public Double getResult() {
		return wlanObwResult;
	}

	@Override
	public boolean getJudgement() {
		return wlanObwJudgement;
	}
}