package com.gzteleader.wlanReportUtils.entity;

import java.io.Serializable;
import java.util.Date;

import com.gzteleader.wlanReportUtils.bean.FormatResult;

public class WlanFreq  extends FormatResult implements Serializable {
    private String wlanFreqId;

    private String infoId;

    private Integer wlanFreqCount;

    private String wlanFreqAnt;

    private String wlanFreqModel;

    private String wlanFreqRate;

    private String wlanFreqFreq;

    private Double wlanFreqResult;

    private Boolean wlanFreqJudgement;

    private Date wlanFreqTime;

    private Boolean wlanFreqDelete;

    private static final long serialVersionUID = 1L;

    public String getWlanFreqId() {
        return wlanFreqId;
    }

    public void setWlanFreqId(String wlanFreqId) {
        this.wlanFreqId = wlanFreqId == null ? null : wlanFreqId.trim();
    }

    public String getInfoId() {
        return infoId;
    }

    public void setInfoId(String infoId) {
        this.infoId = infoId == null ? null : infoId.trim();
    }

    public Integer getWlanFreqCount() {
        return wlanFreqCount;
    }

    public void setWlanFreqCount(Integer wlanFreqCount) {
        this.wlanFreqCount = wlanFreqCount;
    }

    public String getWlanFreqAnt() {
        return wlanFreqAnt;
    }

    public void setWlanFreqAnt(String wlanFreqAnt) {
        this.wlanFreqAnt = wlanFreqAnt == null ? null : wlanFreqAnt.trim();
    }

    public String getWlanFreqModel() {
        return wlanFreqModel;
    }

    public void setWlanFreqModel(String wlanFreqModel) {
        this.wlanFreqModel = wlanFreqModel == null ? null : wlanFreqModel.trim();
    }

    public String getWlanFreqRate() {
        return wlanFreqRate;
    }

    public void setWlanFreqRate(String wlanFreqRate) {
        this.wlanFreqRate = wlanFreqRate == null ? null : wlanFreqRate.trim();
    }

    public String getWlanFreqFreq() {
        return wlanFreqFreq;
    }

    public void setWlanFreqFreq(String wlanFreqFreq) {
        this.wlanFreqFreq = wlanFreqFreq == null ? null : wlanFreqFreq.trim();
    }

    public Double getWlanFreqResult() {
        return wlanFreqResult;
    }

    public void setWlanFreqResult(Double wlanFreqResult) {
        this.wlanFreqResult = wlanFreqResult/1000000000;
    }

    public Boolean getWlanFreqJudgement() {
        return wlanFreqJudgement;
    }

    public void setWlanFreqJudgement(Boolean wlanFreqJudgement) {
        this.wlanFreqJudgement = wlanFreqJudgement;
    }

    public Date getWlanFreqTime() {
        return wlanFreqTime;
    }

    public void setWlanFreqTime(Date wlanFreqTime) {
        this.wlanFreqTime = wlanFreqTime;
    }

    public Boolean getWlanFreqDelete() {
        return wlanFreqDelete;
    }

    public void setWlanFreqDelete(Boolean wlanFreqDelete) {
        this.wlanFreqDelete = wlanFreqDelete;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", wlanFreqId=").append(wlanFreqId);
        sb.append(", infoId=").append(infoId);
        sb.append(", wlanFreqCount=").append(wlanFreqCount);
        sb.append(", wlanFreqAnt=").append(wlanFreqAnt);
        sb.append(", wlanFreqModel=").append(wlanFreqModel);
        sb.append(", wlanFreqRate=").append(wlanFreqRate);
        sb.append(", wlanFreqFreq=").append(wlanFreqFreq);
        sb.append(", wlanFreqResult=").append(wlanFreqResult);
        sb.append(", wlanFreqJudgement=").append(wlanFreqJudgement);
        sb.append(", wlanFreqTime=").append(wlanFreqTime);
        sb.append(", wlanFreqDelete=").append(wlanFreqDelete);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
    


	@Override
	public String getModel() {
		return wlanFreqModel;
	}

	@Override
	public String getRate() {
		return wlanFreqRate;
	}

	@Override
	public String getAnt() {
		return wlanFreqAnt;
	}

	@Override
	public String getCount() {
		return wlanFreqCount.toString();
	}

	@Override
	public String getFreq() {
		return wlanFreqFreq;
	}

	@Override
	public Double getResult() {
		return wlanFreqResult;
	}

	@Override
	public boolean getJudgement() {
		return wlanFreqJudgement;
	}
}