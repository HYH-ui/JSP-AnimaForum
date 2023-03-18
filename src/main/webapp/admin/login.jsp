<%@ page language="java" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" >
<HTML xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>九重天动漫论坛后台管理---用户登录</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<LINK rel=stylesheet type=text/css href="<%=path %>/css/blue.css">
		<LINK rel=stylesheet type=text/css href="<%=path %>/css/login.css">
		<link rel=stylesheet type=text/css href="<%=path%>/css/style_5_append.css">
		<script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>			
		<script type="text/javascript">

		</script>
	</head>

	<body>
		<DIV id=l_logo>
			<IMG border=0 src="<%=path %>/images/login_logo.jpg" width=568 height=68>
			</A>
		</DIV>
		<DIV id=l_cbox>
			<DIV id=l_box>
				<h1>
					login------->${param.msg}
				</h1>
				<FORM action="${pageContext.request.contextPath}/admin/adminlogin" id=ThisForm method=post name=ThisForm>
					<INPUT value=CheckLogin type=hidden name=Action>
					<INPUT type=hidden name=ComeUrl>
					<TABLE border=0 cellSpacing=0 cellPadding=0 width=250 align=center
						valign="top">
						<TBODY>
							<TR>
								<TD height=50 align=right style="color: black;">
									用户名：
								</TD>
								<TD>
									&nbsp;&nbsp;
									<INPUT name=username>
								</TD>
							</TR>
							<TR>
								<TD height=50 align=right style="color: black;">
									密码：
								</TD>
								<TD>
									&nbsp;&nbsp;
									<INPUT type=password name=password>
								</TD>
							</TR>
							<TR>
								<TD height=50 colSpan=2 align=middle >
									<INPUT type="submit"  class="button" value="登录" >
									&nbsp;&nbsp;&nbsp;&nbsp;
									<INPUT class="button" value="重置" type="reset" name=set style="color: black;">
								</TD>
							</TR>
						</TBODY>
					</TABLE>
				</FORM>
			</DIV>
		</DIV>
	</body>
</html>
