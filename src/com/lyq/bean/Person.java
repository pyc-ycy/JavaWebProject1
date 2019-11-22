//@Software: IntelliJ IDEA
// @Project:JavaWebProject1
//@File:Person.java
// @User:彭友聪
//@Date:2019/11/22
// Author:御承扬
//E-mail:2923616405@qq.com


package com.lyq.bean;

public class Person {
    private String name;
    private int age;
    private String sex;
    private String add;

    public String getName() {
        return name;
    }

    public int getAge() {
        return age;
    }

    public String getSex() {
        return sex;
    }

    public String getAdd() {
        return add;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public void setAdd(String add) {
        this.add = add;
    }
}
