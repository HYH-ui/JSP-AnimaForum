<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page isELIgnored="false" %>
<%
String path = request.getContextPath();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title></title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<link rel=stylesheet type=text/css href="<%=path %>/css/admincp.css">
  </head>

  <body>
<div id=append_parent></div>
<table cellspacing=6 cellpadding=2 width="100%" border=0>
  <tbody>
  <tr>
    <td>
      <table class=guide cellspacing=0 cellpadding=0 width="100%" border=0>
        <tbody>
        <tr>
          <td>系统设置首页 » ${txt }</td></tr></tbody></table><br>

		<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tableborder">
				<tr class="header">
					<td>用户id</td>
					<td>用户账号</td>
					<td>用户密码</td>
					<td>用户真实姓名</td>
					<td>用户邮箱</td>
					<td>用户生日</td>
					<td>操作</td>
				</tr>


		 	<c:forEach items="${requestScope.users}" var="user" varStatus="sta">

				<tr class="row1">

					<td>${user.id}</td>
					<td>${user.userName}</td>
					<td>${user.userPw}</td>
					<td>${user.realName}</td>
					<td>${user.email}</td>
					<td>${user.birthday}</td>
					<td>
						<a href="javascript:;" onclick="del()">删除</a>
						<script type="">
							function del() {
								if(window.confirm('确定要删除这个用户吗？')){
									location.href = "${pageContext.request.contextPath}/admin/deluser?id=${user.id}";
								}

							}
						</script>
						<a href="${pageContext.request.contextPath}/admin/updateuser?id=${user.id}">更新</a>
					</td>

				</tr>
		 	</c:forEach>
		</table>

          </table>
  </body>
</html>
