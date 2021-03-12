package com.gzteleader.wlanReportUtils.entity;

import java.io.Serializable;

public class User implements Serializable {
    private String uId;

    private String utId;

    private String uName;

    private String uPassword;

    private Boolean uDelete;

    private static final long serialVersionUID = 1L;

    public String getuId() {
        return uId;
    }

    public void setuId(String uId) {
        this.uId = uId == null ? null : uId.trim();
    }

    public String getUtId() {
        return utId;
    }

    public void setUtId(String utId) {
        this.utId = utId == null ? null : utId.trim();
    }

    public String getuName() {
        return uName;
    }

    public void setuName(String uName) {
        this.uName = uName == null ? null : uName.trim();
    }

    public String getuPassword() {
        return uPassword;
    }

    public void setuPassword(String uPassword) {
        this.uPassword = uPassword == null ? null : uPassword.trim();
    }

    public Boolean getuDelete() {
        return uDelete;
    }

    public void setuDelete(Boolean uDelete) {
        this.uDelete = uDelete;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", uId=").append(uId);
        sb.append(", utId=").append(utId);
        sb.append(", uName=").append(uName);
        sb.append(", uPassword=").append(uPassword);
        sb.append(", uDelete=").append(uDelete);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}