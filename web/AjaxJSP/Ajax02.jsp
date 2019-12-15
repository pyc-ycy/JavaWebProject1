<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/12/15
  Time: 14:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>级联下拉列表</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <script language="javascript" src="../JS/AjaxRequest.js"></script>
    <script language="javascript">
        //获取省份和直辖市
        function getProvince(){
            var loader=new net.AjaxRequest("http://localhost:8080/JavaWebProject1_war_exploded/ZoneServlet?action=getProvince&nocache="
                +new Date().getTime(),deal_getProvince,onerror,"GET");
        }
        function deal_getProvince(){
            provinceArr=this.req.responseText.split(",");	//Separate the obtained province name strings into an array

            for(i=0;i<provinceArr.length;i++){		//get province name by loop  and add to the drop-down list
                document.getElementById("province").options[i]=new Option(provinceArr[i],provinceArr[i]);
            }
            if(provinceArr[0]!==""){
                getCity(provinceArr[0]);	//get city name
            }
        }
        window.onload=function(){
            getProvince();		//get province name
        };
        /*************************************************************************************************************/
        function getCity(selProvince){
            var province = encodeURI(encodeURI(selProvince));

            var loader=new net.AjaxRequest("http://localhost:8080/JavaWebProject1_war_exploded/ZoneServlet?action=getCity&parProvince="
                +province+"&nocache="+new Date().getTime(),deal_getCity,onerror,"GET");
        }
        function deal_getCity(){
            cityArr=this.req.responseText.split(",");	//Separate the obtained city name string into an array
            document.getElementById("city").length=0;	//clear up the drop-down list
            for(i=0;i<cityArr.length;i++){		// get city name by loop and add to drop-down list
                document.getElementById("city").options[i]=new Option(cityArr[i],cityArr[i]);
            }
        }
        function onerror(){}		//a function to deal with error
    </script>
    <style type="text/css">
        body{
            background: #bdd4e9;
            align-items: center;
        }
    </style>
</head>

<body style="font-size: 14pt;">
<center>
    请选择：
    <label for="province">省份：</label><select name="province" id="province" onChange="getCity(this.value)">
</select>
    -
    <label for="city">城市：</label><select name="city" id="city">
</select>
</center>
</body>
</html>
