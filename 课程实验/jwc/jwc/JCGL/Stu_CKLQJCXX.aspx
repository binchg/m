<%@ Page %>
<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System.Web.SessionState" %>
<%@ Import NameSpace="System.Web.UI" %>
<%@ Import NameSpace="System.Web.UI.WebControls" %>
<%@ Import NameSpace="System.Web.UI.HtmlControls" %>
<%@ Import NameSpace="BLL.JCGL" %>
<%@ Import NameSpace="BLL.include" %>
<%
BLL.JCGL.BLL_subPrivate_JCGL SelObj=new BLL.JCGL.BLL_subPrivate_JCGL(this);
SelObj.DoorOnOff(this,"JC_FBJCXX");
%>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" >

<tr><td valign="top" align="center">
      <table width="660px" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>��ȡ�̲���Ϣ</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>

<!--<form name="form1" method="post" action="Stu_CKLQJCXX_rpt.aspx" target="main" >              
<tr height=5%><td valign="top" align="center" height="26">
     <table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
      <tr> 
     <td width="95%" align="left"><input type="checkbox" value='0' name="chk" onClick=if(this.checked==true){this.value='0';}else{this.value='1';} checked>��δ��ȡ&nbsp;</td>
     <td width="5%" align="right" ><input type="submit" name="btn_search" value="����" class=button></td>
     </tr>
	 <input type="hidden" name="flag" value="">
     </table>     
</td></tr>
</form>-->

<tr><td valign="top" align="center" height="5%">
<DIV id=theHead style='display: none_;width:99%;'></DIV></td></tr> 


<tr><td valign="top" align="center" height="100%">
<iframe name=main src="Stu_CKLQJCXX_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr> 
</table>
</body>
</html>