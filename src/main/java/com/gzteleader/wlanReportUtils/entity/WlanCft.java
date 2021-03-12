package com.gzteleader.wlanReportUtils.entity;

import java.io.Serializable;
import java.util.Date;

import com.gzteleader.wlanReportUtils.bean.FormatResult;

public class WlanCft  extends FormatResult implements Serializable {
    private String wlanCftId;

    private String infoId;

    private Integer wlanCftCount;

    private String wlanCftAnt;

    private String wlanCftModel;

    private String wlanCftFreq;

    private Double wlanCftResult;

    private Boolean wlanCftJudgement;

    private Date wlanCftTime;

    private Boolean wlanCftDelete;

    private static final long serialVersionUID = 1L;

    public String getWlanCftId() {
        return wlanCftId;
    }

    public void setWlanCftId(String wlanCftId) {
        this.wlanCftId = wlanCftId == null ? null : wlanCftId.trim();
    }

    public String getInfoId() {
        return infoId;
    }

    public void setInfoId(String infoId) {
        this.infoId = infoId == null ? null : infoId.trim();
    }

    public Integer getWlanCftCount() {
        return wlanCftCount;
    }

    public void setWlanCftCount(Integer wlanCftCount) {
        this.wlanCftCount = wlanCftCount;
    }

    public String getWlanCftAnt() {
        return wlanCftAnt;
    }

    public void setWlanCftAnt(String wlanCftAnt) {
        this.wlanCftAnt = wlanCftAnt == null ? null : wlanCftAnt.trim();
    }

    public String getWlanCftModel() {
        return wlanCftModel;
    }

    public void setWlanCftModel(String wlanCftModel) {
        this.wlanCftModel = wlanCftModel == null ? null : wlanCftModel.trim();
    }

    public String getWlanCftFreq() {
        return wlanCftFreq;
    }

    public void setWlanCftFreq(String wlanCftFreq) {
        this.wlanCftFreq = wlanCftFreq == null ? null : wlanCftFreq.trim();
    }

    public Double getWlanCftResult() {
        return wlanCftResult;
    }

    public void setWlanCftResult(Double wlanCftResult) {
        this.wlanCftResult = wlanCftResult;
    }

    public Boolean getWlanCftJudgement() {
        return wlanCftJudgement;
    }

    public void setWlanCftJudgement(Boolean wlanCftJudgement) {
        this.wlanCftJudgement = wlanCftJudgement;
    }

    public Date getWlanCftTime() {
        return wlanCftTime;
    }

    public void setWlanCftTime(Date wlanCftTime) {
        this.wlanCftTime = wlanCftTime;
    }

    public Boolean getWlanCftDelete() {
        return wlanCftDelete;
    }

    public void setWlanCftDelete(Boolean wlanCftDelete) {
        this.wlanCftDelete = wlanCftDelete;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", wlanCftId=").append(wlanCftId);
        sb.append(", infoId=").append(infoId);
        sb.append(", wlanCftCount=").append(wlanCftCount);
        sb.append(", wlanCftAnt=").append(wlanCftAnt);
        sb.append(", wlanCftModel=").append(wlanCftModel);
        sb.append(", wlanCftFreq=").append(wlanCftFreq);
        sb.append(", wlanCftResult=").append(wlanCftResult);
        sb.append(", wlanCftJudgement=").append(wlanCftJudgement);
        sb.append(", wlanCftTime=").append(wlanCftTime);
        sb.append(", wlanCftDelete=").append(wlanCftDelete);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
    


	@Override
	public String getModel() {
		return wlanCftModel;
	}

	@Override
	public String getRate() {
		return "cft";
	}

	@Override
	public String getAnt() {
		return wlanCftAnt;
	}

	@Override
	public String getCount() {
		return wlanCftCount.toString();
	}

	@Override
	public String getFreq() {
		return wlanCftFreq;
	}

	@Override
	public Double getResult() {
		return wlanCftResult;
	}

	@Override
	public boolean getJudgement() {
		return wlanCftJudgement;
	}
}