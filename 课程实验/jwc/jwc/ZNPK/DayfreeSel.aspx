<%@ Page language="c#" Codebehind="DayfreeSel.aspx.cs" AutoEventWireup="false" Inherits="JWNET.ZNPK.DayfreeSel" %>
<%@ Import NameSpace="BLL.ZNPK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>�鿴���н���</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
		<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
		<script language=javascript>
		function showZNPKJXL1(theID)
		{
			var vURL;
			vURL=theID.value;
			window.frmZNPKJXL.document.location.href='../ZNPK/Private/LIST_ZNPK_JXL1.aspx?id='+vURL;
		}
		</script>
	</HEAD>
	<body oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false
	leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
			<tr>
				<td valign="top" align="center">
					<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td valign="bottom" align="center"><b>�鿴���н���</b></td>
						</tr>
						<tr>
							<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
								<FONT face="����"></FONT>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td><form name="form1" method="post" action="DayfreeSel_Rpt.aspx" target="frmRpt">
					<table width="660" border="0" align="center" cellpadding="0" cellspacing="0">
						<TR>
							<td width="15" >
									<tr>
										<td width="320" height=26px>ѧ��ѧ��&nbsp;<select id="select2" name="SelXN" style="WIDTH:165px"><%=(new Base().SetValue("xnxq"))%></select></td>
										<td width="350" height=26px colspan="2" align="right">
											<%=(new Base().SetValue("ZC"))%>
											����
											<select name="selxqs">
												<option value="1" selected>����һ</option>
												<option value="2">���ڶ�</option>
												<option value="3">������</option>
												<option value="4">������</option>
												<option value="5">������</option>
												<option value="6">������</option>
												<option value="7">������</option>
											</select>
											<%=(new Base().SetValue("JC"))%>
										</td>
									</tr>
									<tr>
										<td height=26px><%=(new Base().SetValue("ZNPK_JXL"))%></td>
										<td height=26px>&nbsp;&nbsp;&nbsp;&nbsp;��������&nbsp;<select name="sel_jslx"><%Response.Output.Write((new BLL.include.ind_subPublic()).PutValue("jslx","ALL"));%></select></td>
										<td height=26px align="right"><input name="Submit01" type="submit" value="����" class="button"></td>
							</td>
						</TR>
						</table>
						</FORM>
				</td>
			</tr>
			<tr>
				<td align="center"><div id="theHead" style="WIDTH:99%"></div>
				</td>
			</tr>
			<tr>
				<td valign="top" align="center" height="100%">
					<iframe name="frmRpt" src="DayfreeSel_Rpt.aspx" width="99%" height="98%" frameborder="0">
					</iframe>
				</td>
			</tr>
		</table>
	</body>
</HTML>
