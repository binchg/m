<%@ Page %>
<%@Import NameSpace="BLL.JXJH"%>
<%
BLL.JXJH.private_JXJH pSub=new BLL.JXJH.private_JXJH(this);
%>
<html>
<head>
<title>�鿴��ͬ�꼶ͬһרҵ���ۿγ̵�������������</title>
<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
<meta name="CODE_LANGUAGE" Content="C#">
<meta name="vs_defaultClientScript" content="JavaScript">
<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
</head>
<script language="JavaScript">

function ChkValue(theID){
if (document.all.sel_zy.value==''||document.all.sel_zy.value=='Nothing')
{alert('��ѡ��רҵ���м�����');return false;}
}

function Disrad()
{
  if (document.all.radgs3.checked)
   {
    document.all.radfx1.disabled=false;
    document.all.radfx2.disabled=false;
    document.all.radfx3.disabled=false;
    document.all.radCx1.disabled=true;
    document.all.radCx2.disabled=true;
    document.all.radCx3.checked=true;
    document.all.radCx4.disabled=true;		
   }
   else
   {
    document.all.radfx1.disabled=true;
    document.all.radfx2.disabled=true;
    document.all.radfx3.disabled=true;
    document.all.radCx1.disabled=false;
    document.all.radCx2.disabled=false;
    document.all.radCx4.disabled=false;
   }

}
function Dischk(){
if (document.all.radCx4.checked){document.all.Chkbq.disabled=true}else{document.all.Chkbq.disabled=false}
}

</script>
<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table align="center" width="660" border=0 cellspacing="0" cellpadding="0" height="100%" >
<tr><td>
<table width="100%" border=0 cellspacing="0" cellpadding="0" height="100%" >
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>�鿴��ͬ�꼶ͬһרҵ���ۿγ̵�������������</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>

<tr><td valign="top" align="center" height="5%" width="100%">
<form name="form1" method="post" action="jxjh_jhcy_rpt.aspx" target="main" onSubmit="return ChkValue(this)">              
<table width="660" border=0 cellspacing=0 cellpadding=0 >
	<tr><td colspan=2>
	<table border=0 cellspacing=0 cellpadding=0><tr>
	<td><%=(new private_JXJH()).SetValue("yxzy",pSub.USER_OPTYX)%></td>
	<td>&nbsp;&nbsp;�꼶&nbsp;<select name=sel_nj1><%=(new private_JXJH()).plannj()%></select>--><select name=sel_nj2><%=(new private_JXJH()).plannj()%>/select></td>
	</tr></table>
	</td></tr>
	<tr><td colspan=2>
	   <table border=0 cellspacing=0 cellpadding=0  bordercolorlight=#75A7AE bordercolordark=#FFFFFF><tr><td>
	   <input type=radio name=radgs id=radgs1 value="0" checked  onclick="Disrad()">���ۿγ�&nbsp;
	   <input type=radio name=radgs id=radgs2 value="1" onclick="Disrad()">ʵ������&nbsp;
	   <input type=radio name=radgs id=radgs3 value="2" onclick="Disrad()">��ҵѧ��Ҫ��&nbsp;
	   </td><td><table border=1 cellspacing=0 cellpadding=0 bordercolorlight=#75A7AE bordercolordark=#FFFFFF><tr><td>
           <input type=radio name=radfx id=radfx1 value="1" checked disabled>����&nbsp;
	   <input type=radio name=radfx id=radfx2 value="0" disabled>����&nbsp;
	   <input type=radio name=radfx id=radfx3 value="2" disabled>˫ѧλ&nbsp;
	   </td></tr>
	   </table>
	   </td><td>&nbsp;&nbsp;<input type="checkbox" name="Chkbq" id="Chkbq" value="1" checked>����ѧ�ڱ��
	   </td></tr>
	   </table>	   
	</td>
	<tr><td align=left>
	   <table border=1 cellspacing=0 cellpadding=0  bordercolorlight=#75A7AE bordercolordark=#FFFFFF>
	   <tr><td>
	   <input type=radio name=radCx id=radCx1 value="����" checked onclick="Dischk()">����&nbsp;
	   <input type=radio name=radCx id=radCx2 value="����" onclick="Dischk()">����&nbsp;
	   <input type=radio name=radCx id=radCx3 value="�޸�" onclick="Dischk()">�޸�&nbsp;
	   <input type=radio name=radCx id=radCx4 value="%" onclick="Dischk()">ȫ��&nbsp;
	   </td></tr>
	   </table>
	</td>
	<td align=right>
	<input type="submit" name="btn_search" value="����" class=button></td>
	</tr></table>
     </td></tr>
</form>

<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr> 

<tr><td valign="top" align="center" height="100%">
<iframe name=main src="jxjh_jhcy_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr> 
</table>
</td></tr> 
</table>
</body>
</html>