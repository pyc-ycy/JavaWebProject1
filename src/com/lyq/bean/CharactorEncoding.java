//@Software: IntelliJ IDEA
// @Project:JavaWebProject1
//@File:CharactorEncoding.java
// @User:彭友聪
//@Date:2019/11/23
// Author:御承扬
//E-mail:2923616405@qq.com


package com.lyq.bean;
import java.io.UnsupportedEncodingException;

public class CharactorEncoding {
    public CharactorEncoding(){}

    public String toString(String str) throws UnsupportedEncodingException {
        String text = "";
        if(str != null && !"".equals(str)){
            text = str;
        }
        return text;
    }
}
