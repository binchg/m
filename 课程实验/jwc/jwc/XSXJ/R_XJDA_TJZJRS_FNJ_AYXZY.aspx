<%@ Page language="c#" Codebehind="R_XJDA_TJZJRS_FNJ_AYXZY.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.XSXJ.R_XJDA_TJZJRS_FNJ_AYXZY" %>
<%@ Import NameSpace="BLL.XSXJ"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 
<HTML>
	<HEAD>
		<title>分年级按院(系)/部/专业统计在籍学生人数</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
		<LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body onselectstart=window.event.returnValue=false oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false 
		 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<form name="form1" action="R_XJDA_TJZJRS_FNJ_AYXZY_Rpt.aspx" target="frmRpt" method="post">
			<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
				<tr>
					<td vAlign="top" align="center" height="26">
						<table WIDTH="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
							<tr>
								<td vAlign="bottom" align="center"><b>分年级按院(系)/部/专业统计在籍学生人数</b></td>
							</tr>
							<tr>
								<td vAlign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td height="28">
						<table height="100%" cellSpacing="0" cellPadding="0" width="660" align="center" border="0">
							<tr>
								<td width="34%">学年学期&nbsp;<select name="Sel_XNXQ" style="WIDTH:165px"><%=(new XSXJ_Rpt().GetXNXQInfo())%></select></td>
								<td align="left" width="60%">
									<input name=rad value="3" type="radio"  checked>三年
									<input name=rad value="4" type="radio">四年
									<input name=rad value="5" type="radio">五年
									<input name=rad value="7" type="radio">七年														
								</td>
								<td align="right" width="6%" nowrap><input class="button" type="submit" name="submit" value="检索"></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td valign="bottom" align="center" height="100%">
						<iframe name="frmRpt" src="R_XJDA_TJZJRS_FNJ_AYXZY_Rpt.aspx" width="100%" height="98%" frameborder="0">
						</iframe>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
