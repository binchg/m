<%@ Page language="c#" Codebehind="kkjh_xqsyjxrw.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.JXJH.kkjh_xqsyjxrw" %>
<html>
  <head>
    <title>�鿴ѧ��ʵ���ѧ����(����)</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
    <LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
	<script language="JavaScript" src="../include/scr/ind_HTML_hr.js"></script>
	<script language="javascript" >
		function SeachSYXM()
		{
			var sysid;
			var theURL;
			sysid=document.all.Sel_SYS.value;
			if(sysid==""||sysid=="Nothing"){
				alert('��ѡ��ʵ��(��)�ң�');
			}else{
				window.form1.submit();
			}
		}
		
		function ShowListValue(theID,vP)
		{
			var vYX,theURL;
			try{
				vYX=document.all.Sel_YX.value;
				if(vYX!=""&&vYX!="Nothing")
				{
					theURL="../ZNPK/Private/List_"+vP+".aspx?yx="+vYX;
					window.vfrmRpt.location.href=theURL;
				}
			}
			catch(e){}
		}
	</script>
  </head>
  <body oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false  onselectstart=window.event.returnValue=false
	 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
	<form name="form1" id="form1" method="post" action="kkjh_xqsyjxrw_rpt.aspx" target="frmRpt">
	<table width="100%" border=0 cellspacing="0" cellpadding="0" height="100%" align="center" >
		<tr><td valign="top" align="center" >
			<table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
				<tr><td valign="bottom" align="center"><b>�鿴ѧ��ʵ���ѧ����(����)</b></td></tr>
				<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script></td></tr>
			</table>   
		</td></tr>

		<!--��ѯ����-->           
		<tr>
		<td valign="top" align="center" height="56px" width="100%" nowrap>
			<table width="660px" border=0 cellspacing="0" cellpadding="0" align="center" height="56px">
				<tr> 
					<td width="34%" align="left" height="28px">ѧ��ѧ��
						<select name="sel_xnxq" style="WIDTH:165px"><asp:Literal ID="opXNXQ" Text="" Runat="server"/></select>
					</td>
					<td width="66%" align="left"  height="28px"><%=(new BLL.ZNPK.Base().SetValue("YX_LAB",USER_OPTYX))%></td>
				</tr>
				<tr>
					<td width="100%" colspan=2 align=right  height="28px">
							<input type=button name=seach value="����" class="button" onclick="SeachSYXM()">
					</td>
				</tr>
			</table>     
		</td></tr>
		
		<tr><td valign="top"><br></td></tr>
		
		<tr><td  width="100%" align="center" height="95%" >
			<iframe name="frmRpt" src="kkjh_xqsyjxrw_rpt.aspx" width=99% height=99% frameborder=0></iframe></td>
			<iframe name="vfrmRpt" scr="" style="display:none;" frameborder=0></iframe>
		</tr>
	</table>
	</Form>
</body>
</html>
