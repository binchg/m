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
string USER_ID=SelObj.USER_ID;
string USER_ZH=SelObj.USER_ZH;
string USER_NAME=SelObj.USER_NAME;
string USER_LVID=SelObj.USER_LVID;
string USER_BJID=SelObj.USER_BJID;
string USER_LEVEL=SelObj.USER_LEVEL;
string USER_OPTYX=SelObj.USER_OPTYX;
string USER_OPTDW=SelObj.USER_OPTDW;
%>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
<script language="JavaScript">
function ChkValue(theID){
if (document.all.sel_bj.value=='')
{alert('��ѡ�������༶��');return false;}
}

function Dissel(theID)
{
	if(theID.value=="0")
	{
		document.all.sel_xn.disabled=true;
		document.all.sel_xq.disabled=true;
	}
	else if(theID.value=="1")
	{
		document.all.sel_xn.disabled=false;
		document.all.sel_xq.disabled=true;
	}
	else
	{
		document.all.sel_xn.disabled=false;
		document.all.sel_xq.disabled=false;
	}
}
</script>
</head>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" >
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>�������༶���ɼ�����ͳ��ѧ���޶��γ�/������[��Ч]</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
<form name="form" method="post" action="g_xscjtjbj_rpt.aspx" target="main" onSubmit="return ChkValue(this)">              
  <tr><td valign="top" align="center" height="5%">
	<table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
	  <tr><td id=DISyxzybj><%=SelObj.SetValue("NJ_YXZYBJ",USER_OPTYX)%></td></tr> 
	  <tr><td> 
			<table width=100% border=0 cellpadding=0 cellspacing=0>
			<tr><td width=272>
				<%=SelObj.SetValue("CJFBXNXQ","")%>
			</td><td>
				<table border="1" cellpadding="0" cellspacing="0"  bordercolorlight=#89bfa7 bordercolordark=#FFFFFF><tr><td>
					<table border=0 cellpadding=0 cellspacing=0><tr>
					<td><input type="radio" value="0" name="SelXNXQ" onclick=Dissel(this)></td><td>��ѧ����</td>	
					<td><input type="radio" value="1" name="SelXNXQ" onclick=Dissel(this) ></td><td>ѧ��</td>
					<td><input type="radio" value="2" checked name="SelXNXQ" onclick=Dissel(this) ></td><td>ѧ��</td>
					</tr></table>
				</td></tr></table>
			</td></tr></table>
	  </td></tr>
	  <tr><td>
			<table width=100% border=0 cellpadding=0 cellspacing=0><tr><td>
				<table border="1" cellpadding="0" cellspacing="0"  bordercolorlight=#89bfa7 bordercolordark=#FFFFFF><tr><td>
					<table border=0 cellpadding=0 cellspacing=0><tr>
					<td><input type=radio name=radCx value="0" checked></td><td>�ۺϳɼ�</td>
					<td><input type=radio name=radCx value="1"></td><td>δ���ɼ�</td>
					<td><input type=radio name=radCx value="2"></td><td>�п��ɼ�</td>
					<td><input type=radio name=radCx value="3"></td><td>ƽʱ�ɼ�</td>
					</td></tr></table>
				</td></tr></table>
			</td><td align=right>
				<input type="submit" name="btn_search" value="����" class=button>
			</td></tr></table>
	  </td></tr></table>  
	  
</td></tr>
</form>

<tr><td valign="top" align="center" height="5%">
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr>
 
<tr><td valign="top" align="center" height="100%">
<iframe name=main src="g_xscjtjbj_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr> 

</table>
</body>