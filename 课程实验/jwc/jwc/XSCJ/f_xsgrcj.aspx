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
%>
<head>
<title>�鿴����ѧ���ɼ�[ԭʼ/��Ч]</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
<script language="JavaScript">
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
        <tr><td valign="bottom" align="center"><b>�鿴����ѧ���ɼ�[ԭʼ/��Ч]</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
<form name="form1" method="post" action="f_xsgrcj_rpt.aspx" target="main" >              
      <tr><td valign="top" align="center" height="5%">
        <table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
          <tr> 
            <td width="30%" align="" height="26" id=vis_xnxq>
			<%=SelObj.SetValue("CJFBXNXQ",USER_ID)%>
            <td width="50%" align="" height="26">
				<table border=0 cellpadding=0 cellspacing=0><tr>
					<td><input type="radio" value="0" name="SJ" ></td><td width=55>ԭʼ�ɼ�</td>	
					<td><input type="radio" value="1" checked name="SJ" ></td><td>��Ч�ɼ�</td>		
				</tr></table>
            </td>          
            <td width="6%" align="right" height="26"><input type="submit" name="btn_search" value="����" class=button></td>            
          </tr>
		  <tr>
		  	<td colspan="3" align="left" >
		  	<table border=0 cellspacing="0" cellpadding="0" align="left"  bordercolorlight="#89bfa7" bordercolordark="#FFFFFF">
		  	<tr><td width=190>
		  		<table border=1 width=172 align="left" cellspacing="0" cellpadding="0"  bordercolorlight="#89bfa7" bordercolordark="#FFFFFF">
		  		<tr><td>
		  			<table border=0 cellpadding=0 cellspacing=0><tr>
					<td><input type="radio" value="0" name="SelXNXQ" onclick=Dissel(this)></td><td>��ѧ����</td>	
	    			<td><input type="radio" value="1" name="SelXNXQ" onclick=Dissel(this) ></td><td>ѧ��</td>
					<td><input type="radio" value="2" checked name="SelXNXQ" onclick=Dissel(this) ></td><td>ѧ��</td>
					</tr></table>
					<input type=hidden name="txt_xm" value=<%=USER_ID%>>
				</td></tr>
				</table>
			</td><td width=110>
				<table border=1 width=100 align="left" cellspacing="0" cellpadding="0"  bordercolorlight="#89bfa7" bordercolordark="#FFFFFF">
		  		<tr><td>
		  			<table border=0 cellpadding=0 cellspacing=0><tr>
					<td><input type="radio" value="0" name="zfx_flag" checked></td><td>����</td>
	    			<td><input type="radio" value="1" name="zfx_flag" ></td><td>����</td>
	    			</tr></table>
				</tr></td>
				</table>
				</td><td><%=SelObj.SetValue("xs","")%></td></tr>
			</table>
		  </tr>
        </table>     
</form>

<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none;width:99%;'></DIV>
</td></tr>   

<tr><td valign="top" align="center" height="100%">
<iframe name=main src="f_xsgrcj_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr> 
</table>

</body>
</html>