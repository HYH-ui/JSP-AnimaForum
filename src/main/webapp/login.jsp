<%@ page language="java" pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>登录</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta content="ie=7.0000" http-equiv="x-ua-compatible">
		<meta name=generator content="mshtml 11.00.9600.16428">
		<meta name=mssmarttagspreventparsing content=true>
		<meta content=yes http-equiv=msthemecompatible>
		<meta content=ie=7 http-equiv=x-ua-compatible>
		<link rel=stylesheet type=text/css href="<%=path%>/css/style_5.css ">
		<link rel=stylesheet type=text/css href="<%=path%>/css/style_5_append.css">
		<script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>		
		<script type=text/javascript src="<%=path%>/js/common.js"></script>
		<script type=text/javascript src="<%=path%>/js/menu.js"></script>
		<script type=text/javascript src="<%=path%>/js/ajax.js"></script>

	</head>
	<body>
		<jsp:include page="incTop.jsp" />
		<DIV id=nav>
			<A href="<%=path %>">九重天动漫论坛</A> » 会员登录
		</DIV>
		<FORM action="${pageContext.request.contextPath}/user/login" method=post name=ThisForm>
			<INPUT type=hidden name=referer>
			<DIV class="mainbox formbox">
				<SPAN class=headactions></SPAN>
				<h1>
					login------->${param.msg}
				</h1>
				<H1>
					会员登录
				</H1>
				<TABLE cellSpacing=0 cellPadding=0 summary=会员登录>
					<TBODY>
						<TR>
							<TH onclick=document.login.username.focus();>
								<LABEL>
									用户名
								</LABEL>
							</TH>
							<TD>
								<INPUT tabIndex=4 id=userName maxLength=40 size=25 name=userName type="userName">

							</TD>
						</TR>
						<TR>
							<TH>
								<LABEL for=userPw>
									密码
								</LABEL>
							</TH>
							<TD>
								<INPUT tabIndex=5 id=userPw size=25 type=userPw
									name=userPw>
							</TD>
						</TR>
						<TR>
					    <TD>
							<input type="submit" class="button" value="登录"  >
							<input type="button" class="button" value="注册"  style="margin-right:10px" onclick="location.href='./register.jsp' ">
							<input type="button"class="button" value="管理员登录"  onclick="location.href='./admin/login.jsp'"></TD></TR>
					</TBODY>
				</TABLE>
			</DIV>
		</FORM>
		</DIV>
		<jsp:include page="incButtom.jsp" />
	</body>
</html>
