package com.gzteleader.wlanReportUtils.Utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Units;
import org.apache.poi.xwpf.usermodel.ParagraphAlignment;
import org.apache.poi.xwpf.usermodel.VerticalAlign;
import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.apache.poi.xwpf.usermodel.XWPFHeader;
import org.apache.poi.xwpf.usermodel.XWPFParagraph;
import org.apache.poi.xwpf.usermodel.XWPFRun;
import org.apache.poi.xwpf.usermodel.XWPFTable;
import org.apache.poi.xwpf.usermodel.XWPFTableCell;
import org.apache.poi.xwpf.usermodel.XWPFTableCell.XWPFVertAlign;
import org.apache.poi.xwpf.usermodel.XWPFTableRow;
import org.docx4j.jaxb.Context;
import org.docx4j.openpackaging.exceptions.Docx4JException;
import org.docx4j.openpackaging.packages.WordprocessingMLPackage;
import org.docx4j.openpackaging.parts.PartName;
import org.docx4j.openpackaging.parts.WordprocessingML.AlternativeFormatInputPart;
import org.docx4j.openpackaging.parts.WordprocessingML.MainDocumentPart;
import org.docx4j.relationships.Relationship;
import org.docx4j.wml.CTAltChunk;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.io.ClassPathResource;
import com.deepoove.poi.util.TableTools;
import com.gzteleader.wlanReportUtils.bean.MergeCell;
import com.gzteleader.wlanReportUtils.bean.TableData;

/**
 * @author lsx
 *
 */
public class WordUtils {
	
	private static Logger logger = LoggerFactory.getLogger(WordUtils.class);
	
	private static Pattern PATTERN = Pattern.compile("\\$\\{(.+?)\\}",Pattern.CASE_INSENSITIVE);
	
	/**
	 * 替换页眉
	 * @param doc
	 * @param map
	 */
	public static void replaceHeader(XWPFDocument doc,Map<String, String> map) {
		Matcher matcher = null;
		//替换页眉
		List<XWPFHeader> hs = doc.getHeaderList();
		for (XWPFHeader h : hs) {
			List<XWPFParagraph> ps = h.getParagraphs();
			for (XWPFParagraph p : ps) {
				List<XWPFRun> runs = p.getRuns();
				for (XWPFRun r : runs) {
					if((matcher = PATTERN.matcher(r.toString())).find()) {
						String value = map.get(matcher.group(0).replace("$", "").replace("{", "").replace("}", ""));
						if(value!=null) {
							r.setText(matcher.replaceFirst(value),0);
						}else {
							matcher.replaceFirst("null");
						}
					}
				}
			}
		}
	}
	
	/**
	 * 替换段落中的指定文字
	 * @param doc
	 * @param map
	 */
	public static void replaceText(XWPFDocument doc,Map<String, String> map) {
		
//		Set<String> keySet = map.keySet();
		List<XWPFParagraph> list = doc.getParagraphs();
		Matcher matcher = null;
		
		for(XWPFParagraph paragraph : list) {
			List<XWPFRun> runs=paragraph.getRuns();
			for(int i=0;i<runs.size();i++) {
				if((matcher = PATTERN.matcher(runs.get(i).toString())).find()) {
					String value = map.get(matcher.group(0).replace("$", "").replace("{", "").replace("}", ""));
					if(value!=null) {
						runs.get(i).setText(matcher.replaceFirst(value),0);
					}else {
						matcher.replaceFirst("null");
					}
				}
			}
		}
	}
	
	/**
	 * 替换表格中的指定文字
	 * @param doc
	 * @param map
	 */
	public static void replaceTable(XWPFDocument doc,Map<String, String> map) {
		List<XWPFTable> tables = doc.getTables();
		Matcher matcher = null;
		for (XWPFTable table : tables) {
			List<XWPFTableRow> rows = table.getRows();
			for (int k = 0; k < rows.size() ;k++) {
				List<XWPFTableCell> cells = rows.get(k).getTableCells();
				for (int j=0 ; j < cells.size() ;j++) {
					matcher = PATTERN.matcher(cells.get(j).getText());
					if (matcher.find()) {
						matcher.reset();
						List<XWPFParagraph> paras = cells.get(j).getParagraphs();
						for (XWPFParagraph para : paras) {
							List<XWPFRun> runs = para.getRuns();
							for (int i = 0 ;i < runs.size() ;i++) {
//								matcher = pattern.matcher(runs.get(i).toString());
								if((matcher = PATTERN.matcher(runs.get(i).toString())).find()) {
									String value = map.get(matcher.group(0).replace("$", "").replace("{", "").replace("}", ""));
									if(value!=null) {
										runs.get(i).setText(matcher.replaceFirst(value),0);
									}else {
										matcher.replaceFirst("null");
									}
								}
							}
						}
					}
				}
			}
		}
	}
	
	/**
	 * 替换指定表格里面的文字，返回有key无值的行
	 * @param table
	 * @param map
	 */
	public static List<Integer> replaceTable(XWPFTable table,Map<String, String> map) {
		Matcher matcher = null;
		List<XWPFTableRow> rows = table.getRows();
		List<Integer> notValueRows = new ArrayList<Integer>();
		for (int k = 0; k < rows.size() ;k++) {
			List<XWPFTableCell> cells = rows.get(k).getTableCells();
			for (int j=0 ; j < cells.size() ;j++) {
				matcher = PATTERN.matcher(cells.get(j).getText());
				if (matcher.find()) {
					matcher.reset();
					List<XWPFParagraph> paras = cells.get(j).getParagraphs();
					for (XWPFParagraph para : paras) {
						List<XWPFRun> runs = para.getRuns();
						for (int i = 0 ;i < runs.size() ;i++) {
							if((matcher = PATTERN.matcher(runs.get(i).toString())).find()) {
								String value = map.get(matcher.group(0).replace("$", "").replace("{", "").replace("}", ""));
								if(value!=null) {
									runs.get(i).setText(matcher.replaceFirst(value),0);
								}else {
									notValueRows.add(k);
									matcher.replaceFirst("null");
								}
							}
						}
					}
				}
			}
		}
		return notValueRows;
	}
	
	public static void removeTableRow(XWPFTable table,List<Integer> rows) {
		for(int i=rows.size()-1 ; i >= 0 ; i--) {
			table.removeRow(rows.get(i));
		}
	}
	
	public static void removeTableRow(XWPFTable table,Integer row) {
			table.removeRow(row);
	}
	
	public static XWPFParagraph findTextRun(XWPFDocument doc,String label) {
		List<XWPFParagraph> list = doc.getParagraphs();
		for(XWPFParagraph paragraph : list) {
			String text = paragraph.getParagraphText();
			if(label.equals(text)) {
				List<XWPFRun> runs = paragraph.getRuns();
				for(XWPFRun run:runs) {
					run.setText("", 0);
				}
				return paragraph;
			}
		}
		return null;
	} 
	
	public static String saveFile(XWPFDocument doc,String path) throws IOException {
		OutputStream os = new FileOutputStream(path);
		//把doc输出到输出流中
		doc.write(os);
		doc.close();
		FileUtils.closeStream(os);
		logger.info("保存文件："+ path);
		return path;
	}
	
	/**
	 * 文档最后创建一个run，不写内容则为空行
	 * @param doc
	 * @return
	 */
	public static XWPFRun createRun(XWPFDocument doc){
		XWPFParagraph paragraph = doc.createParagraph();
		XWPFRun run = paragraph.createRun();
		return run;
	}
	
	/**
	 * 文档最后创建一个run，不写内容则为空行
	 * @param doc
	 * @return
	 */
	public static XWPFRun createRunWithCenter(XWPFDocument doc){
		XWPFParagraph paragraph = doc.createParagraph();
		paragraph.setAlignment(ParagraphAlignment.CENTER);
		XWPFRun run = paragraph.createRun();
		return run;
	}
	
	public static XWPFRun createRunWithStyle(XWPFDocument doc, String paragraphStyle, String runStyle){
		XWPFParagraph p = doc.createParagraph();
		p.setStyle(paragraphStyle);
		XWPFRun run = p.createRun();
		run.setStyle(runStyle);
		return run;
	}
	
	public static XWPFTable createTable(XWPFDocument doc,TableData tableData){
		List<List<String>> data = tableData.getData();
		XWPFTable table = doc.createTable(data.size(), data.get(0).size());
		for(int i=0;i<data.size();i++) {
			List<String> rowData = data.get(i);
			for(int j=0;j<rowData.size();j++) {
				String cellData = rowData.get(j);
//				table.getRow(i).getCell(j).setText(cellData);
				XWPFTableCell cell = table.getRow(i).getCell(j);
				cell.setVerticalAlignment(XWPFVertAlign.CENTER);
				XWPFParagraph p = cell.getParagraphs().get(0);
				//设置居中
				p.setAlignment(ParagraphAlignment.CENTER);
				XWPFRun run = p.createRun();
				run.setText(cellData, 0);
				if(cellData.indexOf("\r\n")!=-1) run = setTextWithEnter(p,run,cell);
				if(cellData.indexOf("</SUPERSCRIPT>")!=-1) cell = setTextWithSup(cell);
				if(cellData.indexOf("</SUBSCRIPT>")!=-1) cell = setTextWithSub(cell);
			}
		}
		List<MergeCell> mergeCells = tableData.getMergeCells();
		if(null==mergeCells||mergeCells.isEmpty()) {
			return table;
		}
		for(int i=mergeCells.size()-1;i>=0;i--) {
			MergeCell mergeCell = mergeCells.get(i);
			if(null==mergeCell||mergeCell.getStart()>=mergeCell.getEnd()) {
				return table;
			}
			if("H".equals(mergeCell .getType())) {				
				// 合并第index行的第start列到第end列单元格
				TableTools.mergeCellsHorizonal(table, mergeCell.getIndex(), mergeCell.getStart(), mergeCell.getEnd());
			}else if("V".equals(mergeCell.getType())) {
				// 合并第index列的第start行到第end行的单元格
				TableTools.mergeCellsVertically(table, mergeCell.getIndex(), mergeCell.getStart(), mergeCell.getEnd());
			}
		}
		return table;
	}
	
	/**
	 * 
	 * 
	 * \r\n回车
	 */
	public static XWPFRun setTextWithEnter(XWPFParagraph p,XWPFRun run,XWPFTableCell cell) {
//		run.setText("",0);
		String text= run.text();
		run.setText("",0);
		String[] textDataArray = text.split("\r\n");
		for(int k=0;k<textDataArray.length;k++) {
			if(k!=0) {
				p=cell.addParagraph();//添加段落
				p.setAlignment(ParagraphAlignment.CENTER);
				run = p.createRun();
			}
			run.setText(textDataArray[k]);
		}
		return run;
	}
	
	/**
	 * 
	 * <SUBSCRIPT>下标</SUBSCRIPT>
	 * @param p
	 * @param run
	 * @param s
	 * @return
	 */
	public static XWPFTableCell setTextWithSub(XWPFTableCell cell) {
		List<XWPFParagraph> ps = cell.getParagraphs();
		for(XWPFParagraph p:ps) {
			String s=p.getText();
			if(s.indexOf("</SUBSCRIPT>")!=-1) {
				List<XWPFRun> runs = p.getRuns();
				for(int i=0;i<runs.size();i++) {
					XWPFRun run = runs.get(i);
					String runStr= run.text();
					if(runStr.indexOf("</SUBSCRIPT>")!=-1) {
						p.removeRun(i);
						run = p.insertNewRun(i);
						String[] tempArray = runStr.split("</SUBSCRIPT>");
						for(String tempSrt:tempArray) {
							if(tempSrt.indexOf("<SUBSCRIPT>")!=-1) {
								String[] tempArray2 = tempSrt.split("<SUBSCRIPT>");
								run.setText(tempArray2[0]);
								run = p.insertNewRun(i+1);
								run.setText(tempArray2[1]);
								runs = p.getRuns();
								i++;
								run.setSubscript(VerticalAlign.SUBSCRIPT);
								run = p.insertNewRun(i+1);
								runs = p.getRuns();
								i++;
							}else {
								run.setText(tempSrt);
							}
						}
					}
				}
			}
		}
		return cell;
	}
	
	/**
	 * 
	 * <SUPERSCRIPT>上标</SUPERSCRIPT>
	 * @param p
	 * @param run
	 * @param s
	 * @return
	 */
	public static XWPFTableCell setTextWithSup(XWPFTableCell cell) {
		List<XWPFParagraph> ps = cell.getParagraphs();
		for(XWPFParagraph p:ps) {
			String s=p.getText();
			if(s.indexOf("</SUPERSCRIPT>")!=-1) {
				List<XWPFRun> runs = p.getRuns();
				for(int i=0;i<runs.size();i++) {
					XWPFRun run = runs.get(i);
					String runStr= run.text();
					if(runStr.indexOf("</SUPERSCRIPT>")!=-1) {
						p.removeRun(i);
						run = p.insertNewRun(i);
						String[] tempArray = runStr.split("</SUPERSCRIPT>");
						for(String tempSrt:tempArray) {
							if(tempSrt.indexOf("<SUPERSCRIPT>")!=-1) {
								String[] tempArray2 = tempSrt.split("<SUPERSCRIPT>");
								run.setText(tempArray2[0]);
								run = p.insertNewRun(i+1);
								run.setText(tempArray2[1]);
								runs = p.getRuns();
								i++;
								run.setSubscript(VerticalAlign.SUPERSCRIPT);
								run = p.insertNewRun(i+1);
								runs = p.getRuns();
								i++;
							}else {
								run.setText(tempSrt);
							}
						}
					}
				}
			}
		}
		return cell;
	}
	
	public static String merge(List<String> list, String path) throws Exception {
		List<InputStream> inList = new ArrayList<InputStream>();
		for (int i = 0; i < list.size(); i++) {
			inList.add(new FileInputStream(list.get(i)));
		}

		InputStream inputStream = mergeDocx(inList);
		saveTemplate(inputStream, path);
		return path;
	}

	public static InputStream mergeDocx(final List<InputStream> streams) throws Docx4JException, IOException {

		WordprocessingMLPackage target = null;
		// 创建临时Docx文件
		final File generated = File.createTempFile("generated", ".docx");
		// Inspur1!?
		int chunkId = 0;
		Iterator<InputStream> it = streams.iterator();
		try {
			while (it.hasNext()) {
				InputStream is = it.next();
				if (is != null) {
					if (target == null) {
						// 流读写 第一个文档
						OutputStream os = new FileOutputStream(generated);
						os.write(IOUtils.toByteArray(is));
						os.close();
						// 获取第一个文档
						target = WordprocessingMLPackage.load(generated);
					} else {
						// 插入其他文档
						insertDocx(target.getMainDocumentPart(), IOUtils.toByteArray(is), chunkId++);
					}
				}
			}
		} finally {
			streams.forEach((t) -> {
				try {
					if (t != null) {
						t.close();
					}
				} catch (IOException e) {
					e.printStackTrace();
				}
			});
		}
		if (target != null) {
			target.save(generated);
			return new FileInputStream(generated);

		} else {
			return null;
		}

	}

	/**
	 * * 插入文档 * @param main * @param bytes * @param chunkId
	 */
	public static void insertDocx(MainDocumentPart main, byte[] bytes, int chunkId) {
		try {
			AlternativeFormatInputPart afiPart = new AlternativeFormatInputPart(
					new PartName("/part" + chunkId + ".docx"));
			// afiPart.setContentType(new ContentType(CONTENT_TYPE));
			afiPart.setBinaryData(bytes);
			Relationship altChunkRel = main.addTargetPart(afiPart);

			CTAltChunk chunk = Context.getWmlObjectFactory().createCTAltChunk();
			chunk.setId(altChunkRel.getId());

			main.addObject(chunk);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * * 输出文件 * @param fis * @param toDocPath
	 */
	public static void saveTemplate(InputStream fis, String toDocPath) {
		FileOutputStream fos;
		// int bytesum = 0;
		int byteread = 0;
		try {
			fos = new FileOutputStream(toDocPath);
			byte[] buffer = new byte[2048];
			while ((byteread = fis.read(buffer)) != -1) {
				// bytesum += byteread; // 字节数 文件大小
				fos.write(buffer, 0, byteread);
			}
			fos.flush();
			fos.close();
			fis.close();
		} catch (FileNotFoundException e1) {
			e1.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public static XWPFRun addPicture(XWPFDocument doc,String picturePath,String notFoundPath){
		File file = new File(picturePath);
		InputStream is = null;
		XWPFRun run = createRunWithCenter(doc);
		try {
			if(!file.exists()) {
				picturePath = notFoundPath;
				ClassPathResource classPathResource = new ClassPathResource(picturePath);
				is = classPathResource.getInputStream();
			}else {
				is = new FileInputStream(file);
			}
			
			run.addPicture(is, XWPFDocument.PICTURE_TYPE_PNG, "Generated", Units.toEMU(374.22), Units.toEMU(280.42));
			
		} catch (Exception e) {
			e.printStackTrace();
			logger.warn("插入图片异常："+picturePath);
			logger.warn(e.toString());
		}finally{
			FileUtils.closeStream(is);
		}
		return run;
	}
}
