<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#"%>
<%
BLL.KSSW.BLL_kssw pSub=new BLL_kssw(this);
%>
<html>
<head>
<title>�Ծ�����ӡ</title>
<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
<meta name="CODE_LANGUAGE" Content="C#">
<meta name="vs_defaultClientScript" content="JavaScript">
<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
</head>

<script language=javascript>
function selchk()
{
if (form1.sel_cddw.value=='' || form1.sel_cddw.value=='nothing' ){alert("��ѡ��е���λ��");return false;}
else {return true;}
}
</script>

<body oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false leftmargin="0" topmargin="0">

<table width="100%" border=0 cellspacing="0" cellpadding="0" height="100%">
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>����ӡ�Ծ���Ϣ</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>

<form name="form1" method="post" action="s_sjysy_rpt.aspx" target="main" >              
<tr  align="center"><td> 
<table width="660" align="center"><%try{   ind_subPrivate_KSSW ind_sp=new ind_subPrivate_KSSW(); %>
<tr align="center"><td valign="bottom" align="left" colspan=2><%=ind_sp.SetValue("xnxqkslc","")%></td></tr><tr>
<td valign="bottom" height=26 align="left">�е���λ&nbsp;<select name="sel_cddw" id="sel_cddw" style="width:165">
<%=ind_sp.SetValue("cddw",pSub.USER_OPTDW)%>
</select></td><td valign="bottom" align="right">
<input type="submit" name="btn_search" value="����" class=button onclick='return selchk()'>
</td></tr><%}catch(Exception ex){Response.Output.Write("���������쳣:"+ex.Message.ToString());}%>
</table>
</td></tr>
</form>

<!--tr><td valign="top" align="center" height="3%"><br>
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr--> 

<tr><td valign="top" align="center" height="100%">
<iframe name=main src="s_sjysy_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr> 
</table>

</body>
</html>

