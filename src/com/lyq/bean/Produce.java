//@Software: IntelliJ IDEA
// @Project:JavaWebProject1
//@File:Produce.java
// @User:彭友聪
//@Date:2019/11/22
// Author:御承扬
//E-mail:2923616405@qq.com


package com.lyq.bean;

public class Produce {
    private String name;
    private double price;
    private String type;
    private String publishor;

    public Produce() {
        name = "《Java web 从入门到精通》";
        price = 79.8;
        type = "IT";
        publishor = "清华大学出版社";
    }

    public String getName(){
        return name;
    }

    public double getPrice() {
        return price;
    }

    public String getType() {
        return type;
    }

    public String getPublishor() {
        return publishor;
    }
    public void setName(String name){
        this.name = name;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public void setType(String type) {
        this.type = type;
    }

    public void setPublishor(String publishor) {
        this.publishor = publishor;
    }
}
