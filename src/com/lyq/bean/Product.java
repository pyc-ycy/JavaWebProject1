//IntelliJ IDEA
//JavaWebProject1
//Product
//2019/12/4
// Author:御承扬
//E-mail:2923616405@qq.com

package com.lyq.bean;

public class Product {
    public static final int PAGE_SIZE = 2;
    private int id;
    private String name;
    private double price;
    private int num;
    private String unit;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }
}
