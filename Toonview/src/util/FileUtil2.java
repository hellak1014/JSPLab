package util;

import java.io.*;

public class FileUtil2 {

	public static void saveImage(String root, String mimage, byte[] mfile) throws IOException{
		//위치로 쏴준다
		
		root += "/images"; //그 위치에서 파일이 저장 되는 곳에 임의의 폴더를 만든다. 
		File f = new File(root);
		
		if(!f.exists()) f.mkdir(); //위치에 없을 경우 폴더를 만든다. 
		
		f = new File(root+"/" + mimage);
		FileOutputStream out = new FileOutputStream(f); //예외처리 강제
		out.write(mfile);//예외처리 강제
		out.close();
		
		//해당 파일을 서버의 특정 위치로 전송하는 class
		
	}
}
