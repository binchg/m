<%@ Page %>
<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System.Web.SessionState" %>
<%@ Import NameSpace="System.Web.UI" %>
<%@ Import NameSpace="System.Web.UI.WebControls" %>
<%@ Import NameSpace="System.Web.UI.HtmlControls" %>
<%

BLL.XSCJ.BLL_subPrivate_XSCJ SelObj =new BLL.XSCJ.BLL_subPrivate_XSCJ(this);
SelObj.DoorOnOff(this,"CJ_CJLR");
%>

<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
</head>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table width="99%" align=center border="0" cellspacing="0" cellpadding="0" height="100%" >
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>分课程按上课班级录入多个成绩</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>

<tr><td valign="top" align="center" ><br>
<DIV id=theHead style='display: none;width:100%;'></DIV>
</td></tr>  

<tr><td valign="top" align="center" height="100%" width="100%">
<iframe name=frmRpt src="Tea_DGKCCJLR_rpt.aspx" width=100% height=98% frameborder=0></iframe>
</td></tr>
</table>
</body>
</html>
