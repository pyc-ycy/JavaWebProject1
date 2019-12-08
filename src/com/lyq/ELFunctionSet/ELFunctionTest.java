//IntelliJ IDEA
//JavaWebProject1
//ELFunctionTest
//2019/12/8
// Author:御承扬
//E-mail:2923616405@qq.com

package com.lyq.ELFunctionSet;

public class ELFunctionTest {
    public static String shiftEnter(String str){
        String newStr = str.replaceAll("\r\n","<br>");
        newStr = newStr.replaceAll(" ","&nbsp;");
        return newStr;
    }
}
