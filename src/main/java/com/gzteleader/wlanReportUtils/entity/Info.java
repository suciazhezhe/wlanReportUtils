package com.gzteleader.wlanReportUtils.entity;

import java.io.Serializable;
import java.util.Date;

public class Info implements Serializable {
    private String infoId;

    private String infoEt;

    private String infoModel;

    private String infoWb;

    private String infoProducer;

    private String infoAddress;

    private String infoPostcode;

    private String infoPhone;

    private String infoName;

    private String infoEmail;

    private String infoSerialone;

    private String infoSerialtwo;

    private String infoSerialthree;

    private Integer infoClamp;

    private Double infoTemp;

    private Double infoHum;

    private Double infoAtmos;

    private Date infoAccepttime;

    private Date infoReceivetime;

    private Date infoTesttime;

    private Date infoTime;

    private Boolean infoDelete;

    private static final long serialVersionUID = 1L;

    public String getInfoId() {
        return infoId;
    }

    public void setInfoId(String infoId) {
        this.infoId = infoId == null ? null : infoId.trim();
    }

    public String getInfoEt() {
        return infoEt;
    }

    public void setInfoEt(String infoEt) {
        this.infoEt = infoEt == null ? null : infoEt.trim();
    }

    public String getInfoModel() {
        return infoModel;
    }

    public void setInfoModel(String infoModel) {
        this.infoModel = infoModel == null ? null : infoModel.trim();
    }

    public String getInfoWb() {
        return infoWb;
    }

    public void setInfoWb(String infoWb) {
        this.infoWb = infoWb == null ? null : infoWb.trim();
    }

    public String getInfoProducer() {
        return infoProducer;
    }

    public void setInfoProducer(String infoProducer) {
        this.infoProducer = infoProducer == null ? null : infoProducer.trim();
    }

    public String getInfoAddress() {
        return infoAddress;
    }

    public void setInfoAddress(String infoAddress) {
        this.infoAddress = infoAddress == null ? null : infoAddress.trim();
    }

    public String getInfoPostcode() {
        return infoPostcode;
    }

    public void setInfoPostcode(String infoPostcode) {
        this.infoPostcode = infoPostcode == null ? null : infoPostcode.trim();
    }

    public String getInfoPhone() {
        return infoPhone;
    }

    public void setInfoPhone(String infoPhone) {
        this.infoPhone = infoPhone == null ? null : infoPhone.trim();
    }

    public String getInfoName() {
        return infoName;
    }

    public void setInfoName(String infoName) {
        this.infoName = infoName == null ? null : infoName.trim();
    }

    public String getInfoEmail() {
        return infoEmail;
    }

    public void setInfoEmail(String infoEmail) {
        this.infoEmail = infoEmail == null ? null : infoEmail.trim();
    }

    public String getInfoSerialone() {
        return infoSerialone;
    }

    public void setInfoSerialone(String infoSerialone) {
        this.infoSerialone = infoSerialone == null ? null : infoSerialone.trim();
    }

    public String getInfoSerialtwo() {
        return infoSerialtwo;
    }

    public void setInfoSerialtwo(String infoSerialtwo) {
        this.infoSerialtwo = infoSerialtwo == null ? null : infoSerialtwo.trim();
    }

    public String getInfoSerialthree() {
        return infoSerialthree;
    }

    public void setInfoSerialthree(String infoSerialthree) {
        this.infoSerialthree = infoSerialthree == null ? null : infoSerialthree.trim();
    }

    public Integer getInfoClamp() {
        return infoClamp;
    }

    public void setInfoClamp(Integer infoClamp) {
        this.infoClamp = infoClamp;
    }

    public Double getInfoTemp() {
        return infoTemp;
    }

    public void setInfoTemp(Double infoTemp) {
        this.infoTemp = infoTemp;
    }

    public Double getInfoHum() {
        return infoHum;
    }

    public void setInfoHum(Double infoHum) {
        this.infoHum = infoHum;
    }

    public Double getInfoAtmos() {
        return infoAtmos;
    }

    public void setInfoAtmos(Double infoAtmos) {
        this.infoAtmos = infoAtmos;
    }

    public Date getInfoAccepttime() {
        return infoAccepttime;
    }

    public void setInfoAccepttime(Date infoAccepttime) {
        this.infoAccepttime = infoAccepttime;
    }

    public Date getInfoReceivetime() {
        return infoReceivetime;
    }

    public void setInfoReceivetime(Date infoReceivetime) {
        this.infoReceivetime = infoReceivetime;
    }

    public Date getInfoTesttime() {
        return infoTesttime;
    }

    public void setInfoTesttime(Date infoTesttime) {
        this.infoTesttime = infoTesttime;
    }

    public Date getInfoTime() {
        return infoTime;
    }

    public void setInfoTime(Date infoTime) {
        this.infoTime = infoTime;
    }

    public Boolean getInfoDelete() {
        return infoDelete;
    }

    public void setInfoDelete(Boolean infoDelete) {
        this.infoDelete = infoDelete;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", infoId=").append(infoId);
        sb.append(", infoEt=").append(infoEt);
        sb.append(", infoModel=").append(infoModel);
        sb.append(", infoWb=").append(infoWb);
        sb.append(", infoProducer=").append(infoProducer);
        sb.append(", infoAddress=").append(infoAddress);
        sb.append(", infoPostcode=").append(infoPostcode);
        sb.append(", infoPhone=").append(infoPhone);
        sb.append(", infoName=").append(infoName);
        sb.append(", infoEmail=").append(infoEmail);
        sb.append(", infoSerialone=").append(infoSerialone);
        sb.append(", infoSerialtwo=").append(infoSerialtwo);
        sb.append(", infoSerialthree=").append(infoSerialthree);
        sb.append(", infoClamp=").append(infoClamp);
        sb.append(", infoTemp=").append(infoTemp);
        sb.append(", infoHum=").append(infoHum);
        sb.append(", infoAtmos=").append(infoAtmos);
        sb.append(", infoAccepttime=").append(infoAccepttime);
        sb.append(", infoReceivetime=").append(infoReceivetime);
        sb.append(", infoTesttime=").append(infoTesttime);
        sb.append(", infoTime=").append(infoTime);
        sb.append(", infoDelete=").append(infoDelete);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}