package com.ibm.customTag;

import com.ibm.utils.favourateEnum;

public class customTag {
	
	
	/**
	 * 将传入的整数转成char型(比如65转成char为A，66转成char为B)
	 * @param count
	 * @return
	 */
	public static String getCharacter(int count){
		return String.valueOf((char)(64+count));
	}
	
	public static void main(String[] args) {
		System.out.println(CovertFormat("1,2,3"));
	
	}
	
	/**
	 * 将传进来 的1,2,3 转换成  java,javascript,angularJs 形式
	 * @param str
	 * @return
	 */
	public static String CovertFormat(Object str){
		
		String str11 = (String) str;
		String[] digs = str11.split(",");
		String temp = "";
		int i = 0 ; 
		for(String dig : digs){
			if(i < digs.length-1){
				temp += favourateEnum.fav.get(Integer.parseInt(dig))+",";
			}else{
				temp += favourateEnum.fav.get(Integer.parseInt(dig));
			}
			i++;
		}
		
		return temp;
	}
	
	
}
