<%@ Page Language="C#" %>
<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%
string errUrl="";
ind_subPrivate_SetDoor PubObj=new ind_subPrivate_SetDoor();
errUrl=PubObj.DoorXSHKSQ();
if (errUrl!="") Response.Redirect(errUrl);
%>
<head>
<title>���뻺��</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
</head>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" >
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>���뻺��</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>

<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none;width:99%;'></DIV>
</td></tr>  

<tr><td valign="top" align="center" height="100%" width="100%">
<iframe name=main src="Stu_xshksq_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr>

</table>
</body>

