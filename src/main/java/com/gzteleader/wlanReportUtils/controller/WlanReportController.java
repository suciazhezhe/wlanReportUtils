package com.gzteleader.wlanReportUtils.controller;

import com.gzteleader.wlanReportUtils.bean.InfoKey;
import com.gzteleader.wlanReportUtils.common.Result;
import com.gzteleader.wlanReportUtils.entity.Info;
import com.gzteleader.wlanReportUtils.properties.WlanReportProperties;
import com.gzteleader.wlanReportUtils.service.InfoService;
import com.gzteleader.wlanReportUtils.service.ReportService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;



@Controller
//@RequestMapping("/wlanReport")
public class WlanReportController {
	
	private Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired
	ReportService reportService;
	@Autowired
	InfoService infoService;
	@Autowired
	WlanReportProperties wlanReportProperties;
	
	@ResponseBody
	@RequestMapping(value = "/getWlanReport", method = RequestMethod.POST)
	public Result<Object> getWlanReport(@RequestBody InfoKey infoKey) {
		Result<Object> result = new Result<Object>();
		try {
			result.setSuccess(true);
			String path = reportService.generateReport(infoKey.getInfoModel(), infoKey.getInfoWb());
			result.setData(path);
		} catch (Exception e) {
			result.setSuccess(false);
			result.setMsg(e.getMessage());
			logger.error(e.getMessage());
			e.printStackTrace();
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value = "/getWlanReport/{infoModel}/{infoWb}", method = RequestMethod.POST)
	public Result<Object> getWlanReport(@PathVariable String infoModel,@PathVariable String infoWb) {
		Result<Object> result = new Result<Object>();
		try {
			result.setSuccess(true);
			String path = reportService.generateReport(infoModel, infoWb);
			result.setData(path);
		} catch (Exception e) {
			result.setSuccess(false);
			result.setMsg(e.getMessage());
			logger.error(e.getMessage());
			e.printStackTrace();
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value = "/test", method = RequestMethod.POST)
	public Result<Object> test(@RequestBody InfoKey infoKey) {
		Result<Object> result = new Result<Object>();
		try {
			result.setSuccess(true);
			Object data = reportService.test(infoKey.getInfoModel(), infoKey.getInfoWb());
			result.setData(data);
		} catch (Exception e) {
			result.setSuccess(false);
			result.setMsg(e.getMessage());
			logger.error(e.getMessage());
			e.printStackTrace();
		}
		return result;
	}
	
	@RequestMapping(value = "/getList", method = RequestMethod.POST)
	public String getList(@RequestParam("infoModel") String infoModel, 
			@RequestParam("infoWb") String infoWb,
			Model model) {
		model.addAttribute("infoModel", infoModel);
		model.addAttribute("infoWb", infoWb);
		if(null!=infoModel&&!"".equals(infoModel)&&
				null!=infoWb&&!"".equals(infoWb)) {
			List<Info> list = infoService.getInfos(infoModel, infoWb);
	        model.addAttribute("list", list);
		}else {
			model.addAttribute("errorInfo", "设备型号、设备名称不能为空!");
		}
		model.addAttribute("path", wlanReportProperties.getPath());
		return "list";
	}
	
	@RequestMapping(value = {"/","/list","/index.html"})
	public String index(Model model) {
		model.addAttribute("path", wlanReportProperties.getPath());
		return "list";
	}

}
