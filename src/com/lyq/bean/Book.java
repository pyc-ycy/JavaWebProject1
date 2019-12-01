//IntelliJ IDEA
//JavaWebProject1
//Book
//2019/12/1
// Author:御承扬
//E-mail:2923616405@qq.com

package com.lyq.bean;

public class Book {
    private int id;     //编号
    private String name;    //图书名称
    private double price;   //价格
    private int bookCount;  //数量
    private String author;  //作者

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

    public int getBookCount() {
        return bookCount;
    }

    public void setBookCount(int bookCount) {
        this.bookCount = bookCount;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }
}
