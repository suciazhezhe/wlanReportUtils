package com.gzteleader.wlanReportUtils.Utils;

import com.deepoove.poi.util.TableTools;
import com.gzteleader.wlanReportUtils.bean.FormatResult;
import com.gzteleader.wlanReportUtils.bean.MergeCell;
import com.gzteleader.wlanReportUtils.bean.ReportData;
import com.gzteleader.wlanReportUtils.bean.TableData;
import com.gzteleader.wlanReportUtils.entity.WlanSe;
import com.gzteleader.wlanReportUtils.properties.WlanReportProperties;
import org.apache.poi.xwpf.usermodel.*;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTHeight;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTrPr;
import org.springframework.core.io.ClassPathResource;
import org.springframework.util.ResourceUtils;

import java.io.*;
import java.math.BigInteger;
import java.util.*;

public class ReportGenerator {
	//临时文件夹地址
	private String temRootPath;
	//文件名称，不带.docx
	private String reportName;
	//最后要保存的文件路径，包括名称，不带.docx
	private String reportPath;
	private String picReportPath;
	private String dataReportPath;
	//测试系统main路径
	private String testSystemMainPath;
	
	private int tableCount = 0;
	
	private String infoWb;
	
	private Map<String,Integer> seLimits;
	
	private List<String> reportTemDocxList = new ArrayList<String>();
	
	private List<String> dataTemDocxList = new ArrayList<String>();
	
	private List<String> pictureTemDocxList = new ArrayList<String>();
	
	public ReportGenerator(WlanReportProperties wlanReportProperties,String infoEt,String infoWb) {
		super();
		temRootPath = wlanReportProperties.getTemRootPath();
		reportName = infoEt+"附件："+infoWb+"部分";
		reportPath = wlanReportProperties.getPath()+reportName;
		dataReportPath = wlanReportProperties.getPath()+infoEt+"记录："+infoWb;
		picReportPath = wlanReportProperties.getPath()+infoEt+"记录：测试存图"+infoWb;
		this.infoWb = infoWb;
		this.testSystemMainPath = wlanReportProperties.getTestSystemPath();
	}
	
	public void generateBaseInfoReport(ReportData reportData) throws IOException {
		//报告附件基本信息部分
		ClassPathResource classPathResource = new ClassPathResource(ReportData.BASE_INFO_DOCX);
		InputStream is =classPathResource.getInputStream();
		XWPFDocument doc = new XWPFDocument(is);
		//替换页眉关键字
		WordUtils.replaceHeader(doc, reportData.getBaseInfo());
		//替换段落里面的文本
		WordUtils.replaceText(doc, reportData.getBaseInfo());
		//替换表格里面的文本，设备序列号表格
		WordUtils.replaceTable(doc, reportData.getBaseInfo());
		//替换表格里面的文本，检测项目表格
		List<XWPFTable> tables = doc.getTables();
		List<Integer> notValueRows = WordUtils.replaceTable(tables.get(1), reportData.getTestItems());
		//删除表格里面有key没值的行，检测项目
		WordUtils.removeTableRow(tables.get(1),notValueRows);
		String path = WordUtils.saveFile(doc, temRootPath+reportName+"-baseInfo.docx");
		reportTemDocxList.add(path);
		FileUtils.closeStream(is);
		
		//存图文档基本信息部分
		classPathResource = new ClassPathResource(ReportData.PIC_BASE_INFO_DOCX);
		is =classPathResource.getInputStream();
		doc = new XWPFDocument(is);
		//替换页眉关键字
		WordUtils.replaceHeader(doc, reportData.getBaseInfo());
		//替换段落里面的文本
		WordUtils.replaceText(doc, reportData.getBaseInfo());
		//替换表格里面的文本，设备序列号表格
		WordUtils.replaceTable(doc, reportData.getBaseInfo());
		String picPath = WordUtils.saveFile(doc, temRootPath+reportName+"-picBaseInfo.docx");
		pictureTemDocxList.add(picPath);
		FileUtils.closeStream(is);
		
		//原始记录基本信息部分1
		classPathResource = new ClassPathResource(ReportData.DATA_BASE_INFO_DOCX1);
		is =classPathResource.getInputStream();
		doc = new XWPFDocument(is);
		//替换页眉关键字
		WordUtils.replaceHeader(doc, reportData.getBaseInfo());
		//替换段落里面的文本
		WordUtils.replaceText(doc, reportData.getBaseInfo());
		//替换表格里面的文本，设备序列号表格
		WordUtils.replaceTable(doc, reportData.getBaseInfo());
		String dataPath1 = WordUtils.saveFile(doc, temRootPath+reportName+"-dataBaseInfo1.docx");
		dataTemDocxList.add(dataPath1);
		FileUtils.closeStream(is);
		//原始记录检测依据和技术参数部分
		classPathResource = new ClassPathResource(reportData.getTemplateDocx()+"-standard.docx");
		is =classPathResource.getInputStream();
		doc = new XWPFDocument(is);
		String standardPath = WordUtils.saveFile(doc, temRootPath+reportName+"-standard.docx");
		dataTemDocxList.add(standardPath);
		FileUtils.closeStream(is);
		//原始记录基本信息部分2
		classPathResource = new ClassPathResource(ReportData.DATA_BASE_INFO_DOCX2);
		is =classPathResource.getInputStream();
		doc = new XWPFDocument(is);
		//替换表格里面的文本，检测项目表格
		tables = doc.getTables();
		notValueRows = WordUtils.replaceTable(tables.get(0), reportData.getTestItems());
		//删除表格里面有key没值的行，检测项目
		WordUtils.removeTableRow(tables.get(0),notValueRows);
		String dataPath2 = WordUtils.saveFile(doc, temRootPath+reportName+"-dataBaseInfo2.docx");
		dataTemDocxList.add(dataPath2);
		FileUtils.closeStream(is);
	}
	
	public void addInstrument(ReportData reportData) throws IOException {
		ClassPathResource classPathResource = new ClassPathResource(ReportData.INSTRUMENT_DOCX);
		InputStream is =classPathResource.getInputStream();
		XWPFDocument doc = new XWPFDocument(is);
		String path = WordUtils.saveFile(doc, temRootPath+reportName+"-instrument.docx");
		reportTemDocxList.add(path);
		dataTemDocxList.add(path);
		FileUtils.closeStream(is);
	}
	
	
	@SuppressWarnings("resource")
	public void addPictureDocx(ReportData reportData) throws IOException {
		ClassPathResource classPathResource = new ClassPathResource(ReportData.PICTURE_DOCX);
		InputStream is =classPathResource.getInputStream();
		XWPFDocument doc = new XWPFDocument(is);
		doc = generateSePicture(reportData.getWlanSePictureMap(),doc);
		String path = WordUtils.saveFile(doc, temRootPath+reportName+"-picture.docx");
		pictureTemDocxList.add(path);
		FileUtils.closeStream(is);
		
	}
	@SuppressWarnings("resource")
	public void addEirpPart(ReportData reportData) throws IOException {
		ClassPathResource classPathResource = new ClassPathResource(reportData.getTemplateDocx()+"-eirp.docx");
		InputStream is =classPathResource.getInputStream();
		XWPFDocument doc = new XWPFDocument(is);
		//wlanResultMap的key是model
		TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,FormatResult>>>>> wlanResultMap = reportData.getWlanEirpMap();
		//生成核心报告表格
		doc = generateOneItem(wlanResultMap,doc,"(dBm)","P<SUBSCRIPT>eirp</SUBSCRIPT>","2");
		//生成原始记录
		generateDataPart("eirp",doc);

		//生成不确定度表格
		doc = generateUncertainty(doc,"测量不确定度\r\n(扩展因子<ITALIC>k</ITALIC>=2)","0.80dB"	);
		String path = WordUtils.saveFile(doc, temRootPath+reportName+"-eirp.docx");
		reportTemDocxList.add(path);
		FileUtils.closeStream(is);
	}
	
	@SuppressWarnings("resource")
	public void addMaxpowPart(ReportData reportData) throws IOException {
		ClassPathResource classPathResource = new ClassPathResource(reportData.getTemplateDocx()+"-maxpow.docx");
		InputStream is =classPathResource.getInputStream();
		XWPFDocument doc = new XWPFDocument(is);
		//wlanResultMap的key是model
		TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,FormatResult>>>>> wlanResultMap = reportData.getWlanMaxpowMap();
		//生成核心报告表格
		doc = generateOneItem(wlanResultMap,doc,"(dBm/MHz)","PSD<SUBSCRIPT>eirp</SUBSCRIPT>","2");
		//生成原始记录
		generateDataPart("maxpow",doc);
		//生成不确定度表格
		doc = generateUncertainty(doc,"测量不确定度\r\n(扩展因子<ITALIC>k</ITALIC>=2)","0.78dB"	);
		String path = WordUtils.saveFile(doc, temRootPath+reportName+"-maxpow.docx");
		reportTemDocxList.add(path);
		FileUtils.closeStream(is);
	}
	
	@SuppressWarnings("resource")
	public void addOobPart(ReportData reportData) throws IOException {
		ClassPathResource classPathResource = new ClassPathResource(reportData.getTemplateDocx()+"-oob.docx");
		InputStream is =classPathResource.getInputStream();
		XWPFDocument doc = new XWPFDocument(is);
		//wlanResultMap的key是model                                                                                                  这里记得要改
		TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,FormatResult>>>>> wlanResultMap = reportData.getWlanOobMap();
		//生成核心报告表格
		doc = generateOneItem(wlanResultMap,doc,"(dBm/Hz)","","2");
		//生成原始记录
		generateDataPart("oob",doc);
		//生成不确定度表格
		doc = generateUncertainty(doc,"测量不确定度\r\n(扩展因子<ITALIC>k</ITALIC>=2)","0.78dB"	);
		String path = WordUtils.saveFile(doc, temRootPath+reportName+"-oob.docx");
		reportTemDocxList.add(path);
		FileUtils.closeStream(is);
		
	}

	@SuppressWarnings("resource")
	public void addFreqPart(ReportData reportData) throws IOException {
		ClassPathResource classPathResource = new ClassPathResource(reportData.getTemplateDocx()+"-freq.docx");
		InputStream is =classPathResource.getInputStream();
		XWPFDocument doc = new XWPFDocument(is);
		//wlanResultMap的key是model                                                                                                  这里记得要改
		TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,FormatResult>>>>> wlanResultMap = reportData.getWlanFreqMap();
		//生成核心报告表格
		doc = generateOneItem(wlanResultMap,doc,"(GHz)","","5");
		//生成原始记录
		generateDataPart("freq",doc);
		//生成不确定度表格
		doc = generateUncertainty(doc,"测量不确定度\r\n(扩展因子<ITALIC>k</ITALIC>=2)","0.16MHz"	);
		String path = WordUtils.saveFile(doc, temRootPath+reportName+"-freq.docx");
		reportTemDocxList.add(path);
		FileUtils.closeStream(is);
	}

	@SuppressWarnings("resource")
	public void addObwPart(ReportData reportData) throws IOException {
		ClassPathResource classPathResource = new ClassPathResource(reportData.getTemplateDocx()+"-obw.docx");
		InputStream is =classPathResource.getInputStream();
		XWPFDocument doc = new XWPFDocument(is);
		//wlanResultMap的key是model                                                                                                  这里记得要改
		TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,FormatResult>>>>> wlanResultMap = reportData.getWlanObwMap();
		//生成核心报告表格
		doc = generateOneItem(wlanResultMap,doc,"(MHz)","","2");
		//生成原始记录
		generateDataPart("obw",doc);
		//生成不确定度表格
		doc = generateUncertainty(doc,"测量不确定度\r\n(扩展因子<ITALIC>k</ITALIC>=2)","0.16MHz"	);
		String path = WordUtils.saveFile(doc, temRootPath+reportName+"-obw.docx");
		reportTemDocxList.add(path);
		FileUtils.closeStream(is);
		
	}

	@SuppressWarnings("resource")
	public void addCftPart(ReportData reportData) throws IOException {
		ClassPathResource classPathResource = new ClassPathResource(reportData.getTemplateDocx()+"-cft.docx");
		InputStream is =classPathResource.getInputStream();
		XWPFDocument doc = new XWPFDocument(is);
		//wlanResultMap的key是model                                                                                                  这里记得要改
		TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,FormatResult>>>>> wlanResultMap = reportData.getWlanCftMap();
		//生成核心报告表格
		doc = generateOneItem(wlanResultMap,doc,"(×10<SUPERSCRIPT>-6</SUPERSCRIPT>)","","2");
		//生成原始记录
		generateDataPart("cft",doc);
		//生成不确定度表格
		doc = generateUncertainty(doc,"测量不确定度\r\n(扩展因子<ITALIC>k</ITALIC>=2)","0.06×10<SUPERSCRIPT>-6</SUPERSCRIPT>"	);
		String path = WordUtils.saveFile(doc, temRootPath+reportName+"-cft.docx");
		reportTemDocxList.add(path);
		FileUtils.closeStream(is);
		
	}

	@SuppressWarnings("resource")
	public void addTpPart(ReportData reportData) throws IOException {
		ClassPathResource classPathResource = new ClassPathResource(reportData.getTemplateDocx()+"-tp.docx");
		InputStream is =classPathResource.getInputStream();
		XWPFDocument doc = new XWPFDocument(is);
		//wlanResultMap的key是model                                                                                                  这里记得要改
		TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,FormatResult>>>>> wlanResultMap = reportData.getWlanTpMap();
		//生成核心报告表格
		doc = generateOneItem(wlanResultMap,doc,"(dBm)","","2");
		//生成原始记录
		generateDataPart("tp",doc);
		//生成不确定度表格
		doc = generateUncertainty(doc,"测量不确定度\r\n(扩展因子<ITALIC>k</ITALIC>=2)","0.80dB"	);
		String path = WordUtils.saveFile(doc, temRootPath+reportName+"-tp.docx");
		reportTemDocxList.add(path);
		FileUtils.closeStream(is);
	}

	@SuppressWarnings("resource")
	public void addMpPart(ReportData reportData) throws IOException {
		ClassPathResource classPathResource = new ClassPathResource(reportData.getTemplateDocx()+"-mp.docx");
		InputStream is =classPathResource.getInputStream();
		XWPFDocument doc = new XWPFDocument(is);
		//wlanResultMap的key是model                                                                                                  这里记得要改
		TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,FormatResult>>>>> wlanResultMap = reportData.getWlanMpMap();
		//生成核心报告表格
		doc = generateOneItem(wlanResultMap,doc,"(dBm/MHz)","","2");
		//生成原始记录
		generateDataPart("mp",doc);
		//生成不确定度表格
		doc = generateUncertainty(doc,"测量不确定度\r\n(扩展因子<ITALIC>k</ITALIC>=2)","0.80dB"	);
		String path = WordUtils.saveFile(doc, temRootPath+reportName+"-mp.docx");
		reportTemDocxList.add(path);
		FileUtils.closeStream(is);
		
	}

	@SuppressWarnings("resource")
	public void addSePart(ReportData reportData) throws IOException {
		seLimits = reportData.getSeLimits();
		ClassPathResource classPathResource = new ClassPathResource(reportData.getTemplateDocx()+"-se.docx");
		InputStream is =classPathResource.getInputStream();
		XWPFDocument doc = new XWPFDocument(is);
		//排序：  model           ant             rate            count           band            freq
		TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, WlanSe>>>>>> wlanSeMap = reportData.getWlanSeMap();
		//生成核心报告表格
		doc = generateSeItem(wlanSeMap,doc);
		//最后的分页符不要
		List<XWPFParagraph> ps = doc.getParagraphs();
		XWPFParagraph p = ps.get(ps.size()-1);
		p.removeRun(0);
		//生成原始记录
		generateDataPart("se",doc);
		//生成不确定度表格
		doc = generateSeUncertainty(doc);
		String path = WordUtils.saveFile(doc, temRootPath+reportName+"-se.docx");
		reportTemDocxList.add(path);
		FileUtils.closeStream(is);
	}

	public String mergeReport() throws Exception {
		//报告附件
		String path = WordUtils.merge(reportTemDocxList, reportPath+".docx");
		//存图文件
		WordUtils.merge(pictureTemDocxList, picReportPath+".docx");
		//原始记录
		WordUtils.merge(dataTemDocxList, dataReportPath+".docx");
		FileUtils.deleteFile(pictureTemDocxList);
		FileUtils.deleteFile(reportTemDocxList);
		FileUtils.deleteFile(dataTemDocxList);
		return path;
	}

	//将生成的附件删除结论行，形成原始记录
	private void generateDataPart(String itemName,XWPFDocument doc) throws IOException {
		String dataPath = temRootPath+reportName+itemName+"-data.docx";
		OutputStream os = new FileOutputStream(dataPath);
		//把doc输出到输出流中
		doc.write(os);
		File file = ResourceUtils.getFile(dataPath);
		InputStream is = new FileInputStream(file);
		XWPFDocument dataDoc = new XWPFDocument(is);
		List<XWPFTable> tables = dataDoc.getTables();
		for(XWPFTable table : tables) {
			List<XWPFTableRow> rows = table.getRows();
			XWPFTableRow lastRow = rows.get(rows.size()-1);
			List<XWPFTableCell> cells = lastRow.getTableCells();
			String text = cells.get(0).getText();
			if("结论".equals(text)) {
				WordUtils.removeTableRow(table,rows.size()-1);
			}
		}
		if("se".equals(itemName)) {
			if(tables.size()>2) {
				XWPFTable table = tables.get(2);
				List<XWPFTableRow> rows = table.getRows();
				for(int i =3;i<rows.size();i++) {
					List<XWPFTableCell> cells = rows.get(i).getTableCells();
					XWPFTableCell cell = cells.get(2);
					String text = cell.getText();
					List<XWPFParagraph> ps = cell.getParagraphs();
					if(text.indexOf("图")!=-1&&ps.size()==2) {
						cell.removeParagraph(1);
					}
				}
			}
			List<XWPFParagraph> ps = dataDoc.getParagraphs();
			for(int i =0;i<ps.size();i++) {
				XWPFParagraph p = ps.get(i);
				String text = p.getText();
				if(text.indexOf("图")!=-1&&text.indexOf("Hz")!=-1) {
					dataDoc.removeBodyElement(dataDoc.getPosOfParagraph(p));
					dataDoc.removeBodyElement(dataDoc.getPosOfParagraph(ps.get(i-1)));
					i = i-2;
				}
			}
//			List<XWPFPictureData> pictures = doc.getAllPictures();
//			for(XWPFPictureData picture:pictures) {
//				POIXMLDocumentPart p = picture.getParent();
//				doc.removeBodyElement(doc.getParagraph(p));
//			}

		}
		
		
		//分页符
		XWPFRun run = WordUtils.createRun(dataDoc);
		run.addBreak(BreakType.PAGE);
		//保存文档
		dataPath = WordUtils.saveFile(dataDoc, dataPath);
		dataTemDocxList.add(dataPath);
	}

	private XWPFDocument generateOneItem(TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,FormatResult>>>>> wlanResultMap,
			XWPFDocument doc,String unit,String pLabel,String accuracy) {
		Set<String> modelSet = wlanResultMap.keySet();
		tableCount = 0;
		int size = modelSet.size();
		int i = 0;
		for(String model : modelSet) {
			i++;
			//wlanEirpMap.get(model)结果是rateMap
			//开始生成一个制式的部分
			doc = generateOneModel(model,wlanResultMap.get(model),doc,unit,pLabel,accuracy);
			if(model.indexOf("(")==-1) {
				//一个abg制式完成后留一个分页符，两个ac、n完成后留一个分页
				XWPFRun run = WordUtils.createRun(doc);
				run.addBreak(BreakType.PAGE);
			}else {
				if(tableCount%2==0&&size!=i) {
					//一个abg制式完成后留一个分页符，两个ac、n完成后留一个分页,最后一个不留分页符
					XWPFRun run = WordUtils.createRun(doc);
					run.addBreak(BreakType.PAGE);
				}
			}
		}
		//完成后留一个空行
		WordUtils.createRun(doc);
		return doc;
	}
	
	//开始生成一个制式的部分
	private XWPFDocument generateOneModel(String model,TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,FormatResult>>>> rateMap,
			XWPFDocument doc,String unit,String pLabel,String accuracy) {
		XWPFRun run = WordUtils.createRun(doc);
		run.setText(getModelText(model));
		run.setFontSize(12);
		//rateMap的key是rate
		Set<String> rateSet = rateMap.keySet();
		for(String rate:rateSet){
			//rateMap.get(rate)结果是countMap，需要组成一个tableData
			//开始生成一个速率的部分
			doc = generateOneRate(rate,rateMap.get(rate),doc,unit,pLabel,accuracy);
		}
		return doc;
	}
	
	
	
	//开始生成一个速率的部分
	private XWPFDocument generateOneRate(String rate,TreeMap<String,TreeMap<String,TreeMap<String,FormatResult>>> antMap,
			XWPFDocument doc,String unit,String pLabel,String accuracy) {
//	    TreeMap<Integer, TreeMap<String, TreeMap<String, FormatResult>>> rateMap = rateMap.get(model);
		XWPFRun run;
		if(!"cft".equals(rate)) {
			run = WordUtils.createRun(doc);
			run.setFontSize(12);
			run.setText("数据速率："+rate);
		}
		TableData tableData = DataHandler.toWlanTableData(antMap,unit,pLabel,accuracy);
		XWPFTable table = WordUtils.createTable(doc, tableData);
//		CTTblPr tblPr = table.getCTTbl().getTblPr();
//		tblPr.getTblW().setType(STTblWidth.DXA);
//		设置行高
		List<XWPFTableRow> rows = table.getRows();
		for (XWPFTableRow row : rows) {
			CTTrPr trPr = row.getCtRow().addNewTrPr();
			CTHeight th = trPr.addNewTrHeight();
			th.setVal(BigInteger.valueOf(520));
		}
		tableCount++;
		// 表格宽度
	    TableTools.widthTable(table, 15.5f, table.getRows().size());
		//一个速率完成后留一个空行
		run = WordUtils.createRun(doc);
		return doc;
	}
	
	private XWPFDocument generateUncertainty(XWPFDocument doc,String name,String value) {
		//不确定度表格
		TableData tableData = new TableData();
		List<List<String>> data = new ArrayList<List<String>>();
		List<String> row = new ArrayList<String>();
		row.add(name);
		row.add(value);
		data.add(row);
		tableData.setData(data);
		XWPFTable table = WordUtils.createTable(doc, tableData);
		//完成后留一个分页
		XWPFRun run = WordUtils.createRun(doc);
		// 表格宽度
	    TableTools.widthTable(table, 15.5f, table.getRows().size());
		run.addBreak(BreakType.PAGE);
		return doc;
	}

	private XWPFDocument generateSeItem(
			//排序：  model           ant             rate            count           band            freq
			TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, WlanSe>>>>>> wlanSeMap,
			XWPFDocument doc) {
		Set<String> modelSet = wlanSeMap.keySet();
		tableCount = 0;
		for(String model : modelSet) {
			//开始生成一个制式的部分
			doc = generateSeModel(model,wlanSeMap.get(model),doc);
		}
		//完成后留一个空行
		WordUtils.createRun(doc);
		return doc;
	}
	

	
	//开始生成一个制式的部分SE
	private XWPFDocument generateSeModel(String model,
			//排序：  ant             rate            count           band            freq
			TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, WlanSe>>>>> antMap,
			XWPFDocument doc) {
		//antMap的key是ant
		Set<String> antSet = antMap.keySet();
		String antZ = "";
		String antStr = "";
		for(String ant:antSet){
			if(model.indexOf("(")!=-1) {
				if("Z".equals(ant)) {
					antStr = antZ.substring(0, antZ.length()-1);
				}else {
					antZ=antZ+"天线"+ant+"+";
					antStr = "天线"+ant;
				}
			}
			//antMap.get(ant)结果是rateMap
			//开始生成一个天线的部分
			doc = generateSeAnt(model,antStr,antMap.get(ant),doc);
		}
		return doc;
	}
	
	//开始生成一个天线的部分
	private XWPFDocument generateSeAnt(String model,String antStr,
			//排序：  rate            count           band            freq
			TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, WlanSe>>>> rateMap,
			XWPFDocument doc) {
		XWPFRun run = WordUtils.createRun(doc);
		run.setText(getModelText(model));
		run.setFontSize(12);
		run.setText(antStr);
		Set<String> rateSet = rateMap.keySet();
		for(String rate :rateSet) {
			//rateMap.get(rate)结果是countMap
			//开始生成一个速率的部分
			doc = generateSeRate(rate,rateMap.get(rate),doc);
		}
		return doc;
	}
	
	//开始生成一个速率的部分
	private XWPFDocument generateSeRate(String rate,
			//排序：  count           band            freq
			TreeMap<String, TreeMap<String, TreeMap<String, WlanSe>>> countMap,
			XWPFDocument doc) {
		Set<String> countSet = countMap.keySet();
		for(String count :countSet) {
			XWPFRun run;
			//countMap.get(rate)结果是bandMap，一个设备需要组成一个tableData
			//开始生成一个设备的部分
			run = WordUtils.createRun(doc);
			run.setFontSize(12);
			run.setText("数据速率："+rate);
			doc = generateSeBand(count,countMap.get(count),doc);
			//第二个表格开始，每3个表格加一个分页(表格生成前加)
			if(tableCount%3==1) {
				//第一个表格加图片后留分页，之后3个表格留一个分页，最后不留分页
				run = WordUtils.createRun(doc);
				run.addBreak(BreakType.PAGE);
			}
		}
		return doc;
	}
	
	//开始生成一个设备的部分
	private XWPFDocument generateSeBand(String count,TreeMap<String, TreeMap<String, WlanSe>> bandMap,
			XWPFDocument doc) {
		TableData tableData = DataHandler.toWlanSeTableData(count,bandMap,seLimits,tableCount==0);//第一个表格里面要写图片编号
		XWPFTable table = WordUtils.createTable(doc, tableData);
		// 表格宽度
	    TableTools.widthTable(table, 15.5f, table.getRows().size());
		tableCount++;
		XWPFRun run;
		if(tableCount==1) {//第一个表格后面要存图
			Set<String> bandSet = bandMap.keySet();
			int i =0;
			for(String band:bandSet) {
				i++;
				TreeMap<String, WlanSe> freqMap = bandMap.get(band);
				WlanSe wlanSe = freqMap.firstEntry().getValue();
				String picturePath = testSystemMainPath+wlanSe.getWlanSeBandpicture();
				run = WordUtils.addPicture(doc,picturePath,ReportData.NOT_FOUND_PIC);
				run = WordUtils.createRunWithCenter(doc);
				run.setFontSize(11);
				if(band.indexOf("1GHz")!=-1) {
					band = "其他"+band;
				}
				run.setText("图4-"+i+"  "+band);
			}
			
		}
		//一个表格完成后留一个空行
		run = WordUtils.createRun(doc);
		return doc;
	}

	private XWPFDocument generateSeUncertainty(XWPFDocument doc) {
		//不确定度表格
		TableData tableData = new TableData();
		List<List<String>> data = new ArrayList<List<String>>();
		List<String> row1 = new ArrayList<String>();
		row1.add("测量不确定度\r\n(扩展因子<ITALIC>k</ITALIC>=2)");
		row1.add("30MHz~100MHz");
		row1.add("1.83dB");
		data.add(row1);
		List<String> row2 = new ArrayList<String>();
		row2.add("");
		row2.add("100MHz~1000MHz");
		row2.add("2.70dB");
		data.add(row2);
		List<String> row3 = new ArrayList<String>();
		row3.add("");
		if(infoWb.indexOf("2.4GHz无线局域网")!=-1) {
			row3.add("1GHz~12.75GHz");
		}else {
			row3.add("1GHz~40GHz");
		}
		row3.add("3.50dB");
		data.add(row3);
		tableData.setData(data);
		List<MergeCell> mergeCells = new ArrayList<MergeCell>();
		MergeCell mergeCell = new MergeCell("V",0,0,2);
		mergeCells.add(mergeCell);
		tableData.setMergeCells(mergeCells);
		XWPFTable table = WordUtils.createTable(doc, tableData);
		//完成后留一个分页
		XWPFRun run = WordUtils.createRun(doc);
		// 表格宽度
	    TableTools.widthTable(table, 15.5f, table.getRows().size());
		run.addBreak(BreakType.PAGE);
		return doc;
	}

	private XWPFDocument generateSePicture(
			//排序：  count           model           ant             rate            freq            band
			TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, WlanSe>>>>>> wlanSePictureMap,
			XWPFDocument doc) {
		//获取样式，并删除模板里面的数据
		List<XWPFParagraph> ps = doc.getParagraphs();
		//样品1杂散发射（辐射）功率  的样式
		XWPFParagraph countP = ps.get(1);
		List<XWPFRun> countRuns = countP.getRuns();
		XWPFRun countRun = countRuns.get(0);
		String countStyle = countP.getStyle();
		String countRunStyle = countRun.getStyle();
		//b制式1M速率   的样式
		XWPFParagraph modelP = ps.get(2);
		List<XWPFRun> modelRuns = modelP.getRuns();
		XWPFRun modelRun = modelRuns.get(0);
		String modelStyle = modelP.getStyle();
		String modelRunStyle = modelRun.getStyle();
		//工作频点：2.412GHz   的样式
		XWPFParagraph freqP = ps.get(3);
		List<XWPFRun> freqRuns = freqP.getRuns();
		XWPFRun freqRun = freqRuns.get(0);
		String freqStyle = freqP.getStyle();
		String freqRunStyle = freqRun.getStyle();
		//图3-1	30MHz -1000MHz   的样式
		XWPFParagraph bandP = ps.get(4);
		List<XWPFRun> bandRuns = bandP.getRuns();
		XWPFRun bandRun = bandRuns.get(0);
		String bandStyle = bandP.getStyle();
		String bandRunStyle = bandRun.getStyle();
		//删除模板里面的数据
		doc.removeBodyElement(doc.getPosOfParagraph(countP));
		doc.removeBodyElement(doc.getPosOfParagraph(modelP));
		doc.removeBodyElement(doc.getPosOfParagraph(freqP));
		doc.removeBodyElement(doc.getPosOfParagraph(bandP));
		
		//开始生成报告
		Set<String> countSet = wlanSePictureMap.keySet();
		for(String count:countSet) {
			XWPFRun run = WordUtils.createRunWithStyle(doc,countStyle,countRunStyle);
			run.setText("样品"+count+"杂散发射（辐射）功率");
			TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, WlanSe>>>>> modelMap = wlanSePictureMap.get(count);
			Set<String> modelSet = modelMap.keySet();
			for(String model:modelSet) {
				TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, WlanSe>>>> antMap = modelMap.get(model);
				Set<String> antSet = antMap.keySet();
				String antZ = antSet.toString().replaceAll("\\[", "（天线").replaceAll(",", "+天线").replaceAll("\\]", "）").replace(" ", "").replace("+天线Z", "");
				for(String ant:antSet) {
					TreeMap<String, TreeMap<String, TreeMap<String, WlanSe>>> rateMap = antMap.get(ant);
					Set<String> rateSet = rateMap.keySet();
					for(String rate:rateSet) {
						run = WordUtils.createRunWithStyle(doc,modelStyle,modelRunStyle);
						String modelStr = model.replace("802.11", "");
						if(modelStr.indexOf("(")==-1) {
							modelStr = modelStr+"制式"+rate.replace("bps", "")+"速率";
						}else {
							modelStr = modelStr.replace("(", "").replace(")", "")+"带宽制式";
						}
						run.setText(modelStr);
						TreeMap<String, TreeMap<String, WlanSe>> freqMap = rateMap.get(rate);
						Set<String> freqSet = freqMap.keySet();
						for(String freq:freqSet) {
							run = WordUtils.createRunWithStyle(doc,freqStyle,freqRunStyle);
							if(model.indexOf("(")==-1) {
								run.setText("工作频点："+freq);
							}else if(ant.indexOf("Z")==-1) {
								run.setText("工作频点："+freq+"（天线"+ant+"）");
							}else {
								run.setText("工作频点："+freq+antZ);
							}
							TreeMap<String, WlanSe> bandMap = freqMap.get(freq);
							Set<String> bandSet = bandMap.keySet();
							for(String band:bandSet) {
								WlanSe wlanSe = bandMap.get(band);
								String picturePath = testSystemMainPath+wlanSe.getWlanSeBandpicture();
								run = WordUtils.addPicture(doc,picturePath,ReportData.NOT_FOUND_PIC);
								run = WordUtils.createRunWithStyle(doc,bandStyle,bandRunStyle);
								run.setText(band);
							}
							//分页
							run = WordUtils.createRun(doc);
							run.addBreak(BreakType.PAGE);
						}
					}
				}
			}
		}
		return doc;
	}

	private String getModelText(String model) {
		if(model.indexOf("(")==-1) {
			return model+"制式：";
		}else {
			String[] array = model.split("\\(");
			return array[0]+"  ("+infoWb.split("无线")[0]+"频段   "+array[1].replace(")", "带宽) 制式：");
		}
		
	}

}
