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
    <title>更新用户信息</title>
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
</head>

<body>

<DIV id=nav>
    <A href="<%=path %>">九重天动漫论坛 </A>»修改个人信息
</DIV>
<FORM onsubmit=this.regsubmit.disabled=true; method=post name=findme
      action="${pageContext.request.contextPath}/user/me">
    <INPUT type=hidden value=vHPrGggt name=formhash>
    <DIV class="mainbox formbox">
				<SPAN class=headactions>
				</SPAN>
        <H1>
            更新用户
        </H1>
        <TABLE cellSpacing=0 cellPadding=0 summary=更新>
            <THEAD>
            <TR>
                <TH>
                    用户信息
                </TH>
                <TD>
                    &nbsp;
                </TD>
            </TR>
            </THEAD>
            <TBODY>
            <TR>
                <TH>
                    <LABEL for=id>
                        id
                    </LABEL>
                </TH>
                <TD>
                    <INPUT tabIndex=3 id=id
                           maxLength=15 size=25 name=id value="${user.id}" readonly/>
                </TD>
            </TR>
            <TR>
                <TH>
                    <LABEL for=username>
                        用户名
                    </LABEL>
                </TH>
                <TD>
                    <INPUT tabIndex=3 id=userName
                           maxLength=15 size=25 name=userName value="${user.userName}" />
                </TD>
            </TR>
            <TR>
                <TH>
                    <LABEL for=userPw>
                        密码
                    </LABEL>
                </TH>
                <TD>
                    <INPUT tabIndex=4 id=userPw size=25
                           type=password name=userPw value="${user.userPw}" />
                </TD>
            </TR>
            <TR>
                <TH>
                    <LABEL for=realName>
                        真实姓名
                    </LABEL>
                </TH>
                <TD>
                    <INPUT tabIndex=6 id=realName size=25
                           name=realName value="${user.realName}" />
                    <SPAN id=checkemail></SPAN>
                </TD>
            </TR>
            <TR>
                <TH>
                    <LABEL for=email>
                        Email
                    </LABEL>
                </TH>
                <TD>
                    <INPUT tabIndex=6 id=email size=25
                           name=email value="${user.email}" />
                </TD>
            </TR>
            <TR>
                <TH>
                    <LABEL for=birthday>
                        生日
                    </LABEL>
                </TH>
                <TD>
                    <INPUT tabIndex=6 id=birthday size=25
                           name=birthday value="${user.birthday}" />
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

                    <input  name="reset" type="submit" onclick="return clearbuttom()" value="修改">
                    <script type="text/javascript">
                        function clearbuttom(){
                            if(!confirm("确定要修改吗"))
                                return false;

                        }
                    </script>

                </TD>
            </TR>
            </TBODY>
        </TABLE>
    </DIV>
</FORM>
</DIV>
</body>
</html>