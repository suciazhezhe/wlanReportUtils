package com.gzteleader.wlanReportUtils.properties;

import java.io.File;
import java.util.Map;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

@Configuration
@ConfigurationProperties(prefix = "wlan-report")
public class WlanReportProperties {
	
	private String testSystemPath;
	
	private String path;
	
	private String temRootPath;
	
	private Map<String,Map<String,String>> testItem;
	
	private Map<String,Map<String,Integer>> seLimit;

	public String getPath() {
		return path;
	}

	public String getTemRootPath() {
		return temRootPath;
	}

	public void setPath(String path) {
		File file = new File(path);
		if(!file.exists()) {
			file.mkdirs();
		}
		this.path = path;
		file = new File(path+"temporary/");
		if(!file.exists()) {
			file.mkdirs();
		}
		this.temRootPath = path+"temporary/";
	}

	public Map<String, Map<String, String>> getTestItem() {
		return testItem;
	}

	public void setTestItem(Map<String, Map<String, String>> testItem) {
		this.testItem = testItem;
	}

	public String getTestSystemPath() {
		return testSystemPath;
	}

	public void setTestSystemPath(String testSystemPath) {
		this.testSystemPath = testSystemPath;
	}

	public Map<String, Map<String, Integer>> getSeLimit() {
		return seLimit;
	}

	public void setSeLimit(Map<String, Map<String, Integer>> seLimit) {
		this.seLimit = seLimit;
	}
	
	
	
	

}
