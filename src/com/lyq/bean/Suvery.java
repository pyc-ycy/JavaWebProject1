//@Software: IntelliJ IDEA
// @Project:JavaWebProject1
//@File:Suvery.java
// @User:彭友聪
//@Date:2019/11/23
// Author:御承扬
//E-mail:2923616405@qq.com


package com.lyq.bean;
import java.io.Serializable;

public class Suvery implements Serializable{
    private static final long serialVersionUID = 1L;
    private String[] languages;
    private String[] technics;
    private String[] parts;
    public Suvery(){}

    public String[] getLanguages() {
        return languages;
    }

    public void setLanguages(String[] languages) {
        this.languages = languages;
    }

    public String[] getTechnics() {
        return technics;
    }

    public void setTechnics(String[] technics) {
        this.technics = technics;
    }

    public String[] getParts() {
        return parts;
    }

    public void setParts(String[] parts) {
        this.parts = parts;
    }
}
