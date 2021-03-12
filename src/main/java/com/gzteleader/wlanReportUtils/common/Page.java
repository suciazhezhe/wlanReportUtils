package com.gzteleader.wlanReportUtils.common;

public class Page {
	//每页显示的行数
	private Integer pageSize;
	
	//当前页码
	private Integer currentPage;

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public Integer getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	
	
}
