<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>成绩查询</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <style type="text/css">
 	body{margin-top: 0;margin-right: 0;border: 2px solid #ccccff;}
	.hr{margin: 0;}
	.div{background-color: #9edce3;}
  	a{text-decoration: none;font-size: 15px;}
  	tr{height: 35px;}
  	.tr{background-color: #edf2f4;}
  	tr:HOVER{background-color: #dcedf7;}
  	a:HOVER{color: red;}
  	#font{font-size: 15px;color: #1287d1;}
  </style>
  
  <script type="text/javascript">
  	function check(){
  		if(page.curPage.value<1){
  			page.curPage.value=1;
  		}
  		if(page.curPage.value>${maxPage}){
  			page.curPage.value = ${maxPage};
  		}
  	}
  </script>
  
  <body bgcolor="#f7f8f7">
  	<div class="div">
  	<hr class="hr"/>
  	<h3><font color="#6110c5" style="padding-left: 10px;">考生成绩</font></h3>
  	<hr/>
  	</div>
    <table width="100%">
	  	<tr align="center" style="font-weight: bold;" bgcolor="#dcedf7">
	  		<td>考号</td>
	  		<td>姓名</td>
	  		<td>写作</td>
	  		<td>听力</td>
	  		<td>阅读</td>
	  		<td>综合</td>
	  		<td>总分</td>
	  	</tr>
    <s:iterator value="examinees">
    	<tr align="center" class="tr">
  			<td><s:property value="candidateNo"/></td>
    		<td><s:property value="name"/></td>
  			<td><s:property value="writingGrade"/></td>
  			<td><s:property value="listeningGrade"/></td>
  			<td><s:property value="readingGrade"/></td>
  			<td><s:property value="comprehensivingGrade"/></td>
  			<td><s:property value="total"/></td>
  		</tr>
    </s:iterator>
    </table>
    <table width="100%" align="center" cellspacing="0">
    	<tr align="center" bgcolor="#dcedf7">
    		<td>
			    <a href="<%=request.getContextPath() %>/cet4/examineeAction-result?curPage=1">【首页】</a>
			    <c:if test="${curPage>1}">
			    	<a href="<%=request.getContextPath() %>/cet4/examineeAction-result?curPage=${curPage-1}">【上一页】</a>
			    </c:if>
			    <c:if test="${curPage<maxPage}">
			    	<a href="<%=request.getContextPath() %>/cet4/examineeAction-result?curPage=${curPage+1}">【下一页】</a>
			    </c:if>
			    <a href="<%=request.getContextPath() %>/cet4/examineeAction-result?curPage=${maxPage}">【尾页】</a>&nbsp;&nbsp;&nbsp;&nbsp;
    		</td>
    		<td style="padding-top: 15px;">
			    <form action="<%=request.getContextPath() %>/cet4/examineeAction-result" name="page" onsubmit="return check()">   
				           跳转到<input name="curPage" size="1" value="1"/>页
				    <input type="submit"  value="跳转"/>
			    </form> 
    		</td>
    		<td id="font">
    			共：${maxPage }页&nbsp;&nbsp;当前：第${curPage }页
    		</td>
    	</tr>
    </table>
  </body>
</html>
