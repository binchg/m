<%@ Page language="c#" Codebehind="SQTZJXAP.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.ZNPK.SQTZJXAP" %>
<%@ Import NameSpace="BLL.ZNPK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 
<HTML>
  <HEAD>
		<title>���������ѧ����</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
		<LINK href="../_style/styles_Qry.css" type=text/css rel=stylesheet >		
  </HEAD>
		
	<body  oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false
	 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<form name="form1" action="SQTZJXAP_rpt.aspx" target="frmRpt" method="post" >
		<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align=center>
			<tr>
				<td vAlign="top" align="center" height="26">
					<table WIDTH="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td vAlign="bottom" align="center"><b>���������ѧ����</b></td>
						</tr>
						<tr>
							<td vAlign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script></td>
						</tr>
					</table>
				</td>
			</tr>
		
			<tr>
				<td height="28px">
					<table height="100%" cellSpacing="0" cellPadding="0" width="660" align="center" border="0">
						<tr>
							<td width="34%" >ѧ��ѧ��&nbsp;<select name='Sel_XNXQ'  style='WIDTH:165px'><%=(new Base().SetValue("XNXQ"))%></select></td>
							<td align="left" width="34%" >�е���λ&nbsp;<select id="Sel_CDDW" name="Sel_CDDW" style="width:163px"><%=(new Base().SetValue("CDDW",USER_OPTDW))%></select></td>
							<td align="left" width="26%" ><br></td> 
							<td align="right" width="6%" nowrap>
							<input name="Submit01" type="submit" value="����" class="button"></td>
						</tr>
					</table>
				</td>
			</tr>
			
			<tr>
				<td valign="bottom" align="center" height="100%">
					<iframe name="frmRpt" src="SQTZJXAP_rpt.aspx" width="100%" height="98%" frameborder="0">
					</iframe>
				</td>
			</tr>
		</table>
		</form>
	</body>
</HTML>