//@Software: IntelliJ IDEA
// @Project:JavaWebProject1
//@File:Email.java
// @User:彭友聪
//@Date:2019/11/22
// Author:御承扬
//E-mail:2923616405@qq.com


package com.lyq.bean;

import java.io.Serializable;

public class Email implements Serializable {
    // serialVersionUID 值
    private static final long serialVersionUID = 1L;
    // Email 地址
    private String mailAdd;
    // 是否是标准的 Email 地址
    private boolean email;
    public Email(){}
    public Email(String mailAdd){
        this.mailAdd = mailAdd;
    }
    // 检测是否是标准的 Email 地址
    public boolean isEmail(){
        String regex = "\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*";
        if(mailAdd.matches(regex)){
            email = true;
        }
        return email;
    }
    public String getMailAdd(){
        return mailAdd;
    }
    public void setMailAdd(String mailAdd){
        this.mailAdd = mailAdd;
    }
}
