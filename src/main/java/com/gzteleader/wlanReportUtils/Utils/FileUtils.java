package com.gzteleader.wlanReportUtils.Utils;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

public class FileUtils {
	/**
	 * 删除文件
	 * @param list
	 */
	public static void deleteFile(List<String> list) {
		File file = null;
		for(String path : list) {
			file = new File(path);
			if(file.exists()) {
				file.delete();
			}
		}
	}
	/**
	  * 关闭输入流
	  * @param is
	  */
	public static void closeStream(InputStream is) {
		if (is != null) {
			try {
				is.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	/**
	  * 关闭输出流
	  * @param os
	  */
	public static void closeStream(OutputStream os) {
		if (os != null) {
			try {
				os.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
}
