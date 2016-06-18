<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>考生登录</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<STYLE type="text/css">
	#candidateNo{position: absolute; right: 550px; top: 350px;height: 30px;width: 200px;font-size: 20px;}
	#candidateNa{position: absolute; right: 759px; top: 350px;font-size:x-large;font-weight: bold;}
	#res{position: absolute; right: 460px; top: 424px;}
	#sub{position: absolute; right: 700px; top: 425px;}
	#dirs{position: absolute; right: 530px; top: 543px;font:15px Arial, Helvetica, sans-serif;
	color: #000;}
	#im{
	position: absolute; right: 810px; top: 542px;
	}
	</STYLE>
	<script>
		function check()
		{
		 if(loginform.candidateNo.value == "")
		  {
		  alert("请输入准考证号！");
		  return false;
		  }
		}
	</script>
  </head>

  <body background="images/head511.jpg">
  ${success }
  ${error }
    <div id="candidateNa">考生登录</div>
		<s:form name="loginform" method="post"
			action="/cet4/examinee_getexaminee.action">
				<s:textfield name="candidateNo" id="candidateNo"></s:textfield>
			    <s:submit type="image" src="images/w11.jpg" id="sub" onclick="return check()"></s:submit>
			    <input type="image" src="images/w22.jpg" id="res" onclick="this.form.reset();return false;"/>
		</s:form>
		<s:a href="adminLogin.jsp">点击进入后台</s:a>
		<s:div id="im">
		  <img src="images/gantan.png"/>
		</s:div>
		<s:div id="dirs">
		
		考生输入准考证号，单击[Enter]按钮继续<br/>
		 如果输入有误，单击[Reset]按钮重新输入
		</s:div>
     </body>
</html>
