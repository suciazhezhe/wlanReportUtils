package com.gzteleader.wlanReportUtils;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(basePackages = "com.gzteleader.wlanReportUtils.dao")
public class WlanReportUtilsApplication {

	public static void main(String[] args) {
		SpringApplication.run(WlanReportUtilsApplication.class, args);
	}

}
