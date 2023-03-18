<%@ page language="java" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>注册</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta content="ie=7.0000" http-equiv="x-ua-compatible">
		<meta name=generator content="mshtml 11.00.9600.16428">
		<meta name=mssmarttagspreventparsing content=true>
		<meta content=yes http-equiv=msthemecompatible>
		<meta content=ie=7 http-equiv=x-ua-compatible>

		<link rel=stylesheet type=text/css href="<%=path%>/css/style_5.css ">
		<link rel=stylesheet type=text/css
			href="<%=path%>/css/style_5_append.css">
		<script type=text/javascript src="<%=path%>/js/common.js"></script>
		<script type=text/javascript src="<%=path%>/js/menu.js"></script>
		<script type=text/javascript src="<%=path%>/js/ajax.js"></script>

	<body>
		<jsp:include page="incTop.jsp" />
		<DIV id=nav>
			<A href="<%=path %>">九重天动漫论坛 </A>» 注册
		</DIV>
		<FORM onsubmit=this.regsubmit.disabled=true; method=post name=register
			action="${pageContext.request.contextPath}/user/register">
			<INPUT type=hidden value=vHPrGggt name=formhash>
			<DIV class="mainbox formbox">
				<SPAN class=headactions>
				</SPAN>
				<H1>
					注册
				</H1>
				<TABLE cellSpacing=0 cellPadding=0 summary=注册>
					<THEAD>
						<TR>
							<TH>
								基本信息 ( * 为必填项)
							</TH>
							<TD>
								&nbsp;
							</TD>
						</TR>
					</THEAD>
					<TBODY>
						<TR>
							<TH>
								<LABEL for=username>
									用户名 *
								</LABEL>
							</TH>
							<TD>
								<INPUT tabIndex=3 id=userName
									maxLength=15 size=25 name=userName>
							</TD>
						</TR>
						<TR>
							<TH>
								<LABEL for=userPw>
									密码 *
								</LABEL>
							</TH>
							<TD>
								<INPUT tabIndex=4 id=userPw size=25
									type=password name=userPw>
							</TD>
						</TR>
						<TR>
							<TH>
								<LABEL for=realName>
									真实姓名 *
								</LABEL>
							</TH>
							<TD>
								<INPUT tabIndex=6 id=realName size=25
									   name=realName>
								<SPAN id=checkemail></SPAN>
							</TD>
						</TR>
						<TR>
							<TH>
								<LABEL for=email>
									Email *
								</LABEL>
							</TH>
							<TD>
								<INPUT tabIndex=6 id=email size=25
									name=email>
							</TD>
						</TR>
						<TR>
							<TH>
								<LABEL for=birthday>
									生日 *
								</LABEL>
							</TH>
							<TD>
								<INPUT tabIndex=6 id=birthday size=25
									   name=birthday>
							</TD>
						</TR>
					</TBODY>
				</TABLE>
				<TABLE cellSpacing=0 cellPadding=0 summary="Submit Button">
					<TBODY>
						<TR>
							<TH>
								&nbsp;
							</TH>
							<TD>
								<BUTTON tabIndex=100 class=submit type=submit name=regsubmit
									value="true" onclick="return check()">
									提交
								</BUTTON>
							</TD>
						</TR>
					</TBODY>
				</TABLE>
			</DIV>
		</FORM>
		</DIV>
		<jsp:include page="incButtom.jsp" />
	</body>
</html>
