<%@ page language="java" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String imgPath = path+"/images";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title></title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<link id=css rel=stylesheet type=text/css href="<%=path %>/css/admincp.css">
	<link rel=stylesheet type=text/css href="<%=path%>/css/Index/Index.css">

	<script type=text/javascript src="<%=path %>/js/common.js"></script>
	<script type=text/javascript src="<%=path %>/js/iframe.js"></script>

	
</head>
<body style="width: 80%;margin: 0 auto;">
	<div class="nav">
		<div class="nav-logo">
			<img class="nav-logo-img" src="<%=imgPath%>/index/index-logo.jpg">
		</div>
		<div class="nav-link">
			<ul class="nav-link-ul">
				<li class="nav-link-item">
					<span>
						<a class="nav-link-item-home" href="<%=path %>">
							主页
						</a>
					</span>
				</li>
				<li class="nav-link-item">
					<span>
						<a href="index.jsp">
							主页
						</a>
					</span>
				</li>
				<li class="nav-link-item">
					<span>
						<a href="index.jsp">
							主页
						</a>
					</span>
				</li>
			</ul>
		</div>
		<div class="nav-user">

		</div>
	</div>

<%--<table class=leftmenulist style="margin-bottom: 5px" cellspacing=0 cellpadding=0 width=146 align=center border=0>--%>
<%--	<tbody>--%>
<%--	<div class=leftmenutext>--%>
<%--		<div>--%>
<%--			<div align=center>--%>
<%--				<a href="<%=path %>" target=_blank>论坛首页</a>&nbsp;&nbsp;--%>
<%--				<h1>--%>
<%--					Welcome ${sessionScope.user.userName}!--%>
<%--				</h1>--%>


<%--			</div>--%>
<%--		</div>--%>
<%--	</div>--%>
<%--	</div>--%>

<%--	</tbody>--%>
<%--</table>--%>

<%--<div id=forums>--%>


<%--	<table class=leftmenulist style="margin-bottom: 5px" cellspacing=0 cellpadding=0--%>
<%--		   width=146 align=center border=0>--%>
<%--		<tbody>--%>
<%--		<tr class=leftmenutext>--%>
<%--			<td><a onclick=collapse_change(2)><img--%>
<%--					id=menuimg_2 border=0 src="<%=imgPath %>/menu_reduce.gif"></a>&nbsp;--%>
<%--				<a onclick=collapse_change(2)>分区</a></td></tr>--%>
<%--		<tbody id=menu_2>--%>
<%--		<tr class=leftmenutd>--%>
<%--			<td>--%>
<%--				<table class=leftmenuinfo cellspacing=0 cellpadding=0 border=0>--%>
<%--					<tbody>--%>

<%--					<tr>--%>
<%--						<td><a href="<%=path %>/forumsMana.action?type=forum"--%>
<%--							   target=main>查看分区</a>--%>
<%--						</td></tr>--%>
<%--					<tr>--%>
<%--						<td><a href="${pageContext.request.contextPath}/topic/topiclist"--%>
<%--							   target=main>所有分区</a>--%>
<%--						</td>--%>
<%--					</tr>--%>
<%--					</tbody>--%>
<%--				</table></td></tr></tbody></table>--%>

<%--	<table class=leftmenulist style="margin-bottom: 5px" cellspacing=0 cellpadding=0--%>
<%--		   width=146 align=center border=0>--%>
<%--		<tbody>--%>
<%--		<tr class=leftmenutext>--%>
<%--			<td><a onclick=collapse_change(3)><img--%>
<%--					id=menuimg_3 border=0 src="<%=imgPath %>/menu_reduce.gif"></a>&nbsp;--%>
<%--				<a onclick=collapse_change(3)>帖子管理</a></td></tr>--%>
<%--		<tbody id=menu_3>--%>
<%--		<tr class=leftmenutd>--%>
<%--			<td>--%>
<%--				<table class=leftmenuinfo cellspacing=0 cellpadding=0 border=0>--%>
<%--					<tbody>--%>
<%--					<tr>--%>
<%--						<td><a href="<%=path %>/toAddForums.action?type=sub"--%>
<%--							   target=main>发布帖子</a></td></tr>--%>
<%--					<tr>--%>
<%--						<td><a href="<%=path %>/forumsMana.action?type=sub"--%>
<%--							   target=main>删除帖子</a></td></tr></tbody></table></td></tr></tbody></table>--%>

<%--	<table class=leftmenulist style="margin-bottom: 5px" cellspacing=0 cellpadding=0--%>
<%--		   width=146 align=center border=0>--%>
<%--		<tbody>--%>
<%--		<tr class=leftmenutext>--%>
<%--			<td><a onclick=collapse_change(5) ><img--%>
<%--					id=menuimg_5 border=0 src="<%=imgPath %>/menu_reduce.gif"></a>&nbsp;--%>
<%--				<a onclick=collapse_change(5)  >会员管理</a></td></tr>--%>
<%--		<tbody id=menu_5>--%>
<%--		<tr class=leftmenutd>--%>
<%--			<td>--%>
<%--				<table class=leftmenuinfo cellspacing=0 cellpadding=0 border=0>--%>
<%--					<tbody>--%>
<%--					<tr>--%>
<%--						<td><a  href='findme'>修改个人信息</a>--%>
<%--						</td>--%>
<%--					</tr>--%>
<%--					</tbody>--%>
<%--				</table>--%>
<%--			</td>--%>
<%--		</tr>--%>

<%--		</tbody>--%>
<%--	</table>--%>
<%--</div>--%>
</body>
</html>
