<%@ Page %>
<%@ Import NameSpace="BLL.include" %>
<%
BLL.JXJH.private_JXJH pSub=new BLL.JXJH.private_JXJH(this);
%>
<html>
<head>
<title>�鿴��ѧ�ƻ�ִ�����</title>
<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
<meta name="CODE_LANGUAGE" Content="C#">
<meta name="vs_defaultClientScript" content="JavaScript">
<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
</head>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table width="100%" border=0 cellspacing="0" cellpadding="0" height="100%" >
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>�鿴��ѧ�ƻ�ִ�����</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>

<tr><td valign="top" align="center" height="5%" width="100%">
<form name="form1" method="post" action="kkjh_jxjhzxqk_rpt.aspx" target="main" >              
<table width="660" border=0 cellspacing="0" cellpadding="0"><tr><td width=55%>
	ѧ��ѧ��&nbsp;<select name=sel_xnxq style="width:165"><%=(new ind_subPublic()).PutValue("xnxq","")%></select>
	�꼶&nbsp;<select name=sel_nj><%=(new ind_subPublic()).PutValue("xn","")%></select></td>
	<td><input type=radio name=radgs value="1" checked>��ʽһ&nbsp;
	    <input type=radio name=radgs value="2">��ʽ��</td>
        <td width=20% align="right"><input type="submit" name="btn_search" value="����" class=button></td>                                                  
	</tr></table>
     </td></tr>
</form>
<tr><td valign="top" align="center" height="100%">
<iframe name=main src="kkjh_jxjhzxqk_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr> 
</table>
</body>
</html>