<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>
	<script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>

	<div class=wrap>
	<div id=header>
	<h2><a title=九重天动漫论坛 href="">
		<img border=0 src="<%=path %>/images/logo1.gif"></a></h2>
	<div id=ad_headerbanner></div></div>
	<div id=menu>
	<ul>
		<c:if test="${empty sessionScope.user}">
		  <li><a class=notabs href="bbs/register.jsp">注册</a>
		  <li><a href="bbs/login.jsp">登录</a>
		</c:if>
		
	  	<c:if test="${not empty sessionScope.user}">
	  			<li><cite><a>${sessionScope.user.userName}</a></cite>
	  		<c:if test="${sessionScope.user.userType==0}">
  				<li><a href="<%=path %>/admin/login.jsp">管理员登录</a>
	  		</c:if>
		  		<li><a href="<%=path %>/userLogout.action">退出</a>
	  </c:if> 
	</ul>
	</div>