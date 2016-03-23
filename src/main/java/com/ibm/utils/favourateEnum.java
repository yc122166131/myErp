package com.ibm.utils;

import java.util.LinkedList;
import java.util.List;

public class  favourateEnum{
	
	public static  List<String> fav = new LinkedList<String>();
	
	static{
		fav.add("java");
		fav.add("javascript");
		fav.add("angularJs");
		fav.add("html5");
		fav.add("Android");
	}
	
	public static void main(String[] args) {
		System.out.println(favourateEnum.fav.get(0));
		System.out.println(favourateEnum.fav.get(1));
		System.out.println(favourateEnum.fav.get(2));
		System.out.println(favourateEnum.fav.get(3));
		System.out.println(favourateEnum.fav.get(5));
		
	}
	
}	
