package com.gzteleader.wlanReportUtils.common;

public abstract class BaseException extends Exception{

	/**
	 * 自定义异常基类
	 */
	private static final long serialVersionUID = 1L;
	
	private String message;
	
	public BaseException(String message){
		this.message = message;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
	/**
	 * 没有Info异常
	 */
	public static class NoInfoException extends BaseException{
		private static final long serialVersionUID = 1L;
		public NoInfoException(String message) {
			super(message);
		}
	}
	
}
