//@Software: IntelliJ IDEA
// @Project:JavaWebProject1
//@File:DateTimeBean.java
// @User:彭友聪
//@Date:2019/11/23
// Author:御承扬
//E-mail:2923616405@qq.com


package com.lyq.bean;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateTimeBean {
    private Calendar calendar = Calendar.getInstance();
    public String getDateTime(){
        Date currDate = Calendar.getInstance().getTime();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日，HH点mm分ss秒");
        return sdf.format(currDate);
    }
    public String getWeek(){
        String[] weeks = {"星期天", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"};
        int index = calendar.get(Calendar.DAY_OF_WEEK);
        return weeks[index - 1];
    }
}
