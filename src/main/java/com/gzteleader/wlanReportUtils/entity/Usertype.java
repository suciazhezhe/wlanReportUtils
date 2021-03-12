package com.gzteleader.wlanReportUtils.entity;

import java.io.Serializable;

public class Usertype implements Serializable {
    private String utId;

    private String utType;

    private Boolean utDelete;

    private static final long serialVersionUID = 1L;

    public String getUtId() {
        return utId;
    }

    public void setUtId(String utId) {
        this.utId = utId == null ? null : utId.trim();
    }

    public String getUtType() {
        return utType;
    }

    public void setUtType(String utType) {
        this.utType = utType == null ? null : utType.trim();
    }

    public Boolean getUtDelete() {
        return utDelete;
    }

    public void setUtDelete(Boolean utDelete) {
        this.utDelete = utDelete;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", utId=").append(utId);
        sb.append(", utType=").append(utType);
        sb.append(", utDelete=").append(utDelete);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}