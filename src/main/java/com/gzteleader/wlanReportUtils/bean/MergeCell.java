package com.gzteleader.wlanReportUtils.bean;
/**
 * type 合并行:H;合并列:V
 */
public class MergeCell {
	
	private String type;
	
	private Integer index;
	
	private Integer start;
	
	private Integer end;

	/**
	 * @param type
	 * @param index
	 * @param start
	 * @param end
	 */
	public MergeCell(String type, Integer index, Integer start, Integer end) {
		super();
		this.type = type;
		this.index = index;
		this.start = start;
		this.end = end;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Integer getIndex() {
		return index;
	}

	public void setIndex(Integer index) {
		this.index = index;
	}

	public Integer getStart() {
		return start;
	}

	public void setStart(Integer start) {
		this.start = start;
	}

	public Integer getEnd() {
		return end;
	}

	public void setEnd(Integer end) {
		this.end = end;
	}
	
	
}
