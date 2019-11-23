//@Software: IntelliJ IDEA
// @Project:JavaWebProject1
//@File:Convert.java
// @User:彭友聪
//@Date:2019/11/23
// Author:御承扬
//E-mail:2923616405@qq.com


package com.lyq.bean;

public class Convert {
    public String arr2str(String[] arr) {
        StringBuffer sb = new StringBuffer();
        if (arr != null && arr.length > 0) {
            for (String s : arr) {
                sb.append(s);
                sb.append(",");
            }
            if (sb.length() > 0) {
                sb = sb.deleteCharAt(sb.length() - 1);
            }
        }
        return sb.toString();
    }
}
