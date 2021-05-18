package com.gzteleader.wlanReportUtils.Utils;

import com.gzteleader.wlanReportUtils.bean.FormatResult;
import com.gzteleader.wlanReportUtils.bean.MergeCell;
import com.gzteleader.wlanReportUtils.bean.TableData;
import com.gzteleader.wlanReportUtils.entity.WlanSe;

import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class DataHandler {
	
//	private static Logger logger = LoggerFactory.getLogger(DataHandler.class);
	
	public static List<String> MODEL_SORT = Arrays.asList("802.11a","802.11b","802.11g","802.11ac","802.11n");
	
	public static List<String> ANT_SORT = Arrays.asList("Z","P");
	
	/**
	 * 对wlan测试结果进行排序，按model,rate,ant,count,freq
	 * @param 
	 */
	public static TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,FormatResult>>>>> toWlanFormatMap(List<? extends FormatResult> formatResults){
//		T = formatResults.get(0).
		//FormatResult的key是model
		TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, FormatResult>>>>> wlanFormatMap = 
				new TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, FormatResult>>>>>(modelComparator);
		for(FormatResult formatResult:formatResults) {
			//FormatResult的key是model,返回rateMap的key是rate
			TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String,FormatResult>>>> rateMap = wlanFormatMap.get(formatResult.getModel());
			if(null == rateMap) {
				rateMap = new TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String,FormatResult>>>>(rateComparator);
			}
			wlanFormatMap.put(formatResult.getModel(), rateMap);
			//rateMap的key是rate,返回antMap的key是ant
			TreeMap<String, TreeMap<String, TreeMap<String,FormatResult>>> antMap = rateMap.get(formatResult.getRate());
			if(null == antMap) {
				antMap = new TreeMap<String, TreeMap<String, TreeMap<String,FormatResult>>>(antComparator);
			}
			rateMap.put(formatResult.getRate(), antMap);
			//antMap的key是ant,返回countMap的key是count
			TreeMap<String, TreeMap<String,FormatResult>> countMap = antMap.get(formatResult.getAnt());
			if(null == countMap) {
				countMap = new TreeMap<String, TreeMap<String,FormatResult>>(countComparator);
			}
			antMap.put(formatResult.getAnt(), countMap);
			//countMap的key是count,返回freqMap的key是freq
			String count = formatResult.getCount();
			TreeMap<String,FormatResult> freqMap = countMap.get(count);
			if(null == freqMap) {
				freqMap = new TreeMap<String, FormatResult>(freqComparator);
			}
			countMap.put(count, freqMap);
			freqMap.put(formatResult.getFreq(), formatResult);
		}
		return wlanFormatMap;
	}
	
	/**
	 * @param antMap
	 * @param unit
	 * @param pLabel  如：P<SUBSCRIPT>eirp</SUBSCRIPT>
	 * @return
	 */
	public static TableData toWlanTableData(TreeMap<String,TreeMap<String,TreeMap<String,FormatResult>>> antMap,String unit,String pLabel,String accuracy) {

		TableData tableData = new TableData();		
		List<List<String>> data = new ArrayList<List<String>>();
		//设备序号行：countRow
		List<String> countRow = new ArrayList<String>();
		data.add(countRow);
		countRow.add("设备序号");
		//频率行：freqRow
		List<String> freqRow = new ArrayList<String>();
		freqRow.add("工作频率(GHz)");
		data.add(freqRow);
		//结论行：conclusionRow
		List<String> conclusionRow = new ArrayList<String>();
		conclusionRow.add("结论");
		//开始天线行
		Set<String> antSet = antMap.keySet();
		//最大设备数量列表
		Set<String> maxCountSet = null;
		//最大频点数量列表
		Set<String> maxfreqSet = null;
		StringBuilder zStr = new StringBuilder("");
		for(String antStr:antSet) {//这个循环先填充天线的第0列，先不填充测试结果
			List<String> antRow = new ArrayList<String>();
			data.add(antRow);
			if(antSet.size()==1) {//单天线
				antRow.add("测试结果"+unit);
			}else {//多天线
				Integer ant = getNumber(antStr);
				//填充第0列
				if(null!=ant) {//天线数字
					antRow.add("天线"+antStr+"\r\n测试结果"+unit);
					zStr .append("天线"+antStr+"+");
					if(ant%2==0) {
						zStr.append("\r\n");
					}
				}else {//Z或者是P
					if("Z".equals(antStr)) {
						int index = zStr.lastIndexOf("+");
						zStr.replace(index, index+1, "");
						antRow.add(zStr+"测试结果"+unit);
					}else if("P".equals(antStr)) {
						antRow.add(pLabel+"\r\n测试结果"+unit);
					}
				}
			}
			
			
			//设备
			TreeMap<String, TreeMap<String, FormatResult>> countMap = antMap.get(antStr);
			Set<String> countSet = countMap.keySet();
			if(null==maxCountSet||countSet.size()>maxCountSet.size()) {
				maxCountSet = countSet;
			}
			for(String count : countSet) {
				TreeMap<String, FormatResult> freqMap = countMap.get(count);
				Set<String> freqSet = freqMap.keySet();
				if(null==maxfreqSet||freqSet.size()>maxfreqSet.size()) {
					maxfreqSet = freqSet;
				}
			}
		}
		//填充设备序号、频率
		List<MergeCell> mergeCells = new ArrayList<MergeCell>();
		int lastEnd = 0;
		for(String count:maxCountSet) {
			int i = 1;
			int start = i+lastEnd;
			for(String freq:maxfreqSet) {
				if(i == 1) countRow.add(count);
				else countRow.add("");
				if(freq.indexOf("f")==-1) {
					freqRow.add(freq.replace("GHz", "").replace("(", "\r\n").replace(")", ""));
				}else {
					freqRow.add("f<SUBSCRIPT>"+freq.charAt(freq.length()-1)+"</SUBSCRIPT>");
				}
				conclusionRow.add("--");
				i++;
			}
			lastEnd = i+lastEnd-1;
			MergeCell mergeCell1 = new MergeCell("H",0,start,lastEnd);
			mergeCells.add(mergeCell1);
		}
		int row = 2;
		for(String antStr:antSet) {
			int column = 1;
			List<String> antRow = data.get(row);
			TreeMap<String, TreeMap<String, FormatResult>> countMap = antMap.get(antStr);
			if(null!=countMap) {
				for(String count:maxCountSet) {
					TreeMap<String, FormatResult> freqMap = countMap.get(count);
					if(null!=freqMap) {
						for(String freq:maxfreqSet) {
							FormatResult formatResult = freqMap.get(freq);
							//fL里面有value但是取不出来
							boolean doDetData = false;
							if(null==formatResult){
								for (FormatResult value : freqMap.values()) {
									if (freq.equals(value.getFreq())){
										formatResult = value;
										doDetData = true;
										break;
									}
								}
							}else{
								doDetData = true;
							}
							if(doDetData) {
								String result = String.format("%."+accuracy+"f", formatResult.getResult());
								antRow.add(result);
								String conclusion = conclusionRow.get(column);
								if("--".equals(conclusion)) {
									if(formatResult.getJudgement()) {
										conclusion = "不合格";
									}else {
										conclusion = "合格";
									}
									conclusionRow.remove(column);
									conclusionRow.add(column, conclusion);
								}else if("合格".equals(conclusion)) {
									if(formatResult.getJudgement()) {
										conclusion = "不合格";
										conclusionRow.remove(column);
										conclusionRow.add(column, conclusion);
									}
								}
							}else {
								antRow.add("");
							}
							column++;
						}
					}else {
						for(@SuppressWarnings("unused") String freq:maxfreqSet) {
							antRow.add("");
							column++;
						}
					}
				}
			}else {
				for(@SuppressWarnings("unused") String count:maxCountSet) {
					for(@SuppressWarnings("unused") String freq:maxfreqSet) {
						antRow.add("");
						column++;
					}
				}
			}
			row++;
		}
		data.add(conclusionRow);
		tableData.setData(data);
		tableData.setMergeCells(mergeCells);
		return tableData;
	}
	
	
	
	
	//排序：                model          ant            rate           count          band           freq
	public static TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,TreeMap<String,WlanSe>>>>>> toWlanSeMap(List<WlanSe> wlanSes,List<String> sortKeys) {
		if(null==sortKeys||sortKeys.isEmpty()||sortKeys.size()!=6) {
			return null;
		}
		TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, WlanSe>>>>>> wlanSeMap0 = 
				new TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, WlanSe>>>>>>(getSeKeyComparator(sortKeys.get(0)));
		for(WlanSe wlanSe: wlanSes) { 
			//排序：   ant             rate            count           band           freq
			TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, WlanSe>>>>> sortMap1 = wlanSeMap0.get(getSeKeyValue(sortKeys.get(0), wlanSe));
			if(null==sortMap1) {
				sortMap1 = new TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, WlanSe>>>>>(getSeKeyComparator(sortKeys.get(1)));
				wlanSeMap0.put(getSeKeyValue(sortKeys.get(0), wlanSe), sortMap1);
			}
			//排序：   rate            count           band           freq
			TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, WlanSe>>>> sortMap2 = sortMap1.get(getSeKeyValue(sortKeys.get(1), wlanSe));
			if(null==sortMap2) {
				sortMap2 = new TreeMap<String, TreeMap<String, TreeMap<String, TreeMap<String, WlanSe>>>>(getSeKeyComparator(sortKeys.get(2)));
				sortMap1.put(getSeKeyValue(sortKeys.get(1), wlanSe), sortMap2);
			}
			//排序：   count           band           freq
			TreeMap<String, TreeMap<String, TreeMap<String, WlanSe>>> sortMap3 = sortMap2.get(getSeKeyValue(sortKeys.get(2), wlanSe));
			if(null==sortMap3) {
				sortMap3 = new TreeMap<String, TreeMap<String, TreeMap<String, WlanSe>>>(getSeKeyComparator(sortKeys.get(3)));
				sortMap2.put(getSeKeyValue(sortKeys.get(2), wlanSe), sortMap3);
			}
			//排序：   band           freq
			TreeMap<String, TreeMap<String, WlanSe>> sortMap4 = sortMap3.get(getSeKeyValue(sortKeys.get(3), wlanSe));
			if(null==sortMap4) {
				sortMap4 = new TreeMap<String, TreeMap<String, WlanSe>>(getSeKeyComparator(sortKeys.get(4)));
				sortMap3.put(getSeKeyValue(sortKeys.get(3), wlanSe).toString(), sortMap4);
			}
			//排序：   freq
			TreeMap<String, WlanSe> sortMap5 = sortMap4.get(getSeKeyValue(sortKeys.get(4), wlanSe));
			if(null==sortMap5) {
				sortMap5 = new TreeMap<String, WlanSe>(getSeKeyComparator(sortKeys.get(5)));
				sortMap4.put(getSeKeyValue(sortKeys.get(4), wlanSe), sortMap5);
			}
			sortMap5.put(getSeKeyValue(sortKeys.get(5), wlanSe), wlanSe);
		}
		return wlanSeMap0;
	}
	
	/**
	 * @param count
	 * @param bandMap
	 * @param neetPicture 
	 * @return
	 */
	public static TableData toWlanSeTableData(String count, TreeMap<String, TreeMap<String, WlanSe>> bandMap, Map<String,Integer> seLimits,boolean neetPicture) {
		TableData tableData = new TableData();		
		List<List<String>> data = new ArrayList<List<String>>();
		List<MergeCell> mergeCells = new ArrayList<MergeCell>();
		//设备序号行：countRow
		List<String> countRow = new ArrayList<String>();
		data.add(countRow);
		countRow.add("设备序号");
		//频率行：freqRow
		List<String> freqRow = new ArrayList<String>();
		freqRow.add("工作频率(GHz)");
		data.add(freqRow);
		//频段标题行：bandNameRow
		List<String> bandNameRow = new ArrayList<String>();
		bandNameRow.add("检测频段");              
		data.add(bandNameRow);
		//结论行：conclusionRow
		List<String> conclusionRow = new ArrayList<String>();
		conclusionRow.add("结论");
		//开始频段行
		Set<String> bandSet = bandMap.keySet();
		//最大频点数量列表
		Set<String> maxfreqSet = null;
		int bandNum = 0;
		int bandSetSize = bandSet.size();
		for(String band:bandSet) {//这个循环先填充band的第0列，先不填充测试结果
			bandNum++;
			List<String> bandRow = new ArrayList<String>();
			data.add(bandRow);
			if(bandNum != bandSetSize||band.indexOf("1GHz")==-1) {
				bandRow.add(band);
			}else {
				bandRow.add("其他"+band);
			}
			
			//找出最多频段的keySet
			TreeMap<String, WlanSe> freqMap = bandMap.get(band);
			Set<String> freqSet = freqMap.keySet();
			if(null==maxfreqSet||freqSet.size()>maxfreqSet.size()) {
				maxfreqSet = freqSet;
			}
		}
		//填充设备序号行、频率行、频段标题行
		int i = 0;
		for(String freq:maxfreqSet) {
			i++;
			if(i == 1) countRow.add(count);
			else countRow.add("");
			freqRow.add(freq.replace("GHz", ""));
			bandNameRow.add("频率(MHz)");
			conclusionRow.add("--");
			i++;
			countRow.add("");
			freqRow.add("");
			bandNameRow.add("电平(dBm)");
			conclusionRow.add("");
			//频点行的合并单元格
			MergeCell freqRowMergeCell = new MergeCell("H",1,i-1,i);
			mergeCells.add(freqRowMergeCell);
		}
		//设备序号行的合并单元格
		MergeCell countRowMergeCell = new MergeCell("H",0,1,i);
		mergeCells.add(countRowMergeCell);
		int row = 3;
		for(String band:bandSet) {
			int column = 1;
			List<String> bandRow = data.get(row);
			TreeMap<String, WlanSe> freqMap = bandMap.get(band);
			for(String freq:maxfreqSet) {
				WlanSe wlanSe = freqMap.get(freq);
				if(null!=wlanSe) {
					String conclusion;
					String pictureStr = "";
					if(neetPicture&&column==1) {
						pictureStr = "\r\n见图4-"+(row-2);
					}
					if(wlanSe.getWlanSeBandjudgement()) {//不合格
						if(!"不合格".equals(conclusionRow.get(column))) {
							conclusion = "不合格";
							conclusionRow.remove(column);
							conclusionRow.add(column, conclusion);
						}
						bandRow.add(String.format("%.2f", wlanSe.getWlanSeBandfreq()));
						column++;
						String result = String.format("%.2f", wlanSe.getWlanSeBandresult())+pictureStr;
						bandRow.add(result);
						column++;
					}else {
						if("--".equals(conclusionRow.get(column))) {
							conclusion = "合格";
							conclusionRow.remove(column);
							conclusionRow.add(column, conclusion);
						}
						Integer limit = seLimits.get(band);
						if(null==limit||limit-wlanSe.getWlanSeBandresult()>6) {//差距大于6，不需要记录
							bandRow.add("--");
							bandRow.add("无"+pictureStr);
						}else {
							bandRow.add(String.format("%.2f", wlanSe.getWlanSeBandfreq()));
							bandRow.add(String.format("%.2f", wlanSe.getWlanSeBandresult()));
						}
						//加了两列
						column++;
						column++;
					}
				}else {
					bandRow.add("");
					column++;
					bandRow.add("");
					column++;
				}
			}
			row++;
		}
		
		for(int index=0;index<conclusionRow.size();index++) {
			if("".equals(conclusionRow.get(index))) {
				//结论行的合并单元格
				MergeCell conclusionRowMergeCell = new MergeCell("H",row,index-1,index);
				mergeCells.add(conclusionRowMergeCell);
			}
		}
		data.add(conclusionRow);
		tableData.setData(data);
		tableData.setMergeCells(mergeCells);
		return tableData;
	}

	public static Comparator<String> getSeKeyComparator(String sortKey) {
//		model          ant            rate           count          band           freq
		switch(sortKey){
		    case "model" :
		    	return modelComparator;
		    case "ant" :
		    	return antComparator;
		    case "rate" :
		    	return rateComparator;
		    case "count" :
		    	return countComparator;
		    case "band" :
		    	return bandComparator;
		    case "freq" :
		    	return freqComparator;
		    default : 
		}
		return null;
	}
	
	public static String getSeKeyValue(String sortKey,WlanSe wlanSe) {
		String result = null;
//		model          ant            rate           count          band           freq
		switch(sortKey){
		    case "model" :
		    	return wlanSe.getWlanSeModel();
		    case "ant" :
		    	return wlanSe.getWlanSeAnt();
		    case "rate" :
		    	return wlanSe.getWlanSeRate();
		    case "count" :
		    	return wlanSe.getWlanSeCount().toString();
		    case "band" :
		    	return wlanSe.getWlanSeBand();
		    case "freq" :
		    	return wlanSe.getWlanSeFreq();
		    default : 
		}
		return result;
	}

	//o1前o2后,返回-1
	//o1=o2,返回0
	//o2前o1后,返回1
    //要注意在比较函数compare的返回值中要包含0（相等），不然可能会出现Comparison method violates its general contract!异常。
	//model排序器
	private static Comparator<String> modelComparator = new Comparator<String>() {
        @Override
        public int compare(String model1, String model2) {
			int modelCompare= model1.compareTo(model2);
			if(modelCompare!=0) {
				int modelO1 = indexOf(MODEL_SORT,model1);
				int modelO2 = indexOf(MODEL_SORT,model2);
				if(modelO1!=modelO2) {
					return modelO1<modelO2? -1:1;
				}
			}
            return modelCompare;
        }
    };
    
    //rate排序器
  	private static Comparator<String> rateComparator = new Comparator<String>() {
          @Override
          public int compare(String rate1, String rate2) {
        	  //按rate排序
        	  Integer rateInt1 = getNumber(rate1);
        	  Integer rateInt2 = getNumber(rate2);
        	  if(null!=rateInt1&&null!=rateInt2) {
        		  int rateCompare = rateInt1.compareTo(rateInt2);
        		  if(rateCompare!=0) {
        			  return rateCompare;
        		  }
        	  }
        	  return rate1.compareTo(rate2);
          }
      };
      
    //count排序器
   	private static Comparator<String> countComparator = new Comparator<String>() {
           @Override
           public int compare(String count1, String count2) {
        	  //按count排序
        	  Integer countInt1 = getNumber(count1);
         	  Integer countInt2 = getNumber(count2);
        	  return countInt1.compareTo(countInt2);
           }
    };
    
    //freq排序器
  	private static Comparator<String> freqComparator = new Comparator<String>() {
          @Override
          public int compare(String freq1, String freq2) {
        	  if("fL".equals(freq1)) {
        		  return -1;
        	  }else if("fL".equals(freq2)) {
        		  return 1;
        	  }else {
        		  return freq1.compareTo(freq2);
        	  }
          }
    };
    
    //ant排序器
  	private static Comparator<String> antComparator = new Comparator<String>() {
          @Override
          public int compare(String antS1, String antS2) {
        	//按ant排序
			Integer ant1 = getNumber(antS1);
			Integer ant2 = getNumber(antS2);
			if(null!=ant1&&null!=ant2) {//ant1、ant1都是天线序号
				return ant1.compareTo(ant2);
			}
			ant1 = indexOf(ANT_SORT,antS1);
			ant2 = indexOf(ANT_SORT,antS2);
			return ant1.compareTo(ant2);
          }
    };
    
    //band排序器
  	private static Comparator<String> bandComparator = new Comparator<String>() {
          @Override
          public int compare(String band1, String band2) {
        	 Integer bandInt1 = 0;
        	 Integer bandInt2 = 0;
        	 if(band1.indexOf("G")!=-1) bandInt1=1;
        	 if(band2.indexOf("G")!=-1) bandInt2=1;
        	 int compareInt = bandInt1.compareTo(bandInt2);
        	 if(compareInt!=0) {
        		 return compareInt;
        	 }
        	 String[] array1 = band1.split("~");
        	 String[] array2 = band2.split("~");
        	 Double double1;
    		 Double double2;
        	 if(bandInt1 == 0) {//MH比较前面
        		 double1 = getDouble(array1[0]);
        		 double2 = getDouble(array2[0]);
        	 }else {//GH比较后面
        		 double1 = getDouble(array1[1]);
        		 double2 = getDouble(array2[1]);
        	 }
        	 return double1.compareTo(double2);
          }
    };
    
    private static Double getDouble(String s) {	
		String regEx="([0-9]+\\.?[0-9]*)";  
		Pattern p = Pattern.compile(regEx);  
		Matcher m = p.matcher(s );
		if(m.find()) {
			String r = m.group(1);
			return Double.parseDouble(r);
		}
		return null;
	}
	
	private static Integer getNumber(String s) {
		String regEx="([0-9]+)";  
		Pattern p = Pattern.compile(regEx);  
		Matcher m = p.matcher(s);
		if(m.find()) {
			String r = m.group(1);
			return Integer.valueOf(r);
		}
		return null;
	}
	
	private static int indexOf(List<String> list,String s) {
		int r = list.indexOf(s);
		if(r==-1) {
			for(int i=list.size()-1; i>=0; i--) {
				if(s.indexOf(list.get(i)) != -1) {
					return i;
				}
			}
		}
		return r;
	}

}
