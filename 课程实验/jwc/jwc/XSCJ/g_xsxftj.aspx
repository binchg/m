<%@ Page %>
<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System.Web.SessionState" %>
<%@ Import NameSpace="System.Web.UI" %>
<%@ Import NameSpace="System.Web.UI.WebControls" %>
<%@ Import NameSpace="System.Web.UI.HtmlControls" %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Import NameSpace="BLL.include" %>
<%
BLL.XSCJ.BLL_subPrivate_XSCJ SelObj =new BLL_subPrivate_XSCJ(this);
SelObj.DoorOnOff(this,"CJ_CJFB");
string USER_OPTYX=SelObj.USER_OPTYX;
%>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
</head>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" >
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>分行政班级按学生查看学业进展[有效]</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
<form name="form" method="post" action="g_xsxftj_rpt.aspx" target="main" >              
  <tr><td valign="top" align="center" height="5%">
	<table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
	  <tr><td><%=SelObj.SetValue("yxzybj",USER_OPTYX)%></td>
	<td align=right><input type="submit" name="btn_search" value="检索" class=button></td></tr>
	<tr><td colspan=2>学年学期&nbsp;
	<select name=sel_xnxq disabled style=170><%=SelObj.SetValue("xnxq","")%></select>
	<input type=radio name=radCx checked value="0" onclick="document.all.sel_xnxq.disabled=true">入学以来
	<input type=radio name=radCx value="1" onclick="document.all.sel_xnxq.disabled=false">学年
	<input type=radio name=radCx value="2" onclick="document.all.sel_xnxq.disabled=false">学期
	</td></tr>
	</table>  
</td></tr>
</form>

<tr><td valign="top" align="center" height="5%">
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr>
 
<tr><td valign="top" align="center" height="100%">
<iframe name=main src="g_xsxftj_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr> 

</table>
</body>
