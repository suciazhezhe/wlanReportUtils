package com.gzteleader.wlanReportUtils.bean;

import java.util.List;

public class TableData {
	
	
	private List<List<String>> data;
	
	private List<MergeCell> mergeCells;
	/**
	 * 外层list是行
	 * 里面list是一行里面的每个单元格的数据
	 * 单元格为空也要是空字符串""
	 */
	public List<List<String>> getData() {
		return data;
	}
	/**
	 * 外层list是行
	 * 里面list是一行里面的每个单元格的数据
	 * 单元格为空也要是空字符串""
	 */
	public void setData(List<List<String>> data) {
		this.data = data;
	}

	public List<MergeCell> getMergeCells() {
		return mergeCells;
	}

	public void setMergeCells(List<MergeCell> mergeCells) {
		this.mergeCells = mergeCells;
	}
	
	
}
