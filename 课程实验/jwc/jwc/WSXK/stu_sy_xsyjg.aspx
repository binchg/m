<%@ Page language="c#" Codebehind="stu_sy_xsyjg.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.WSXK.stu_sy_xsyjg" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>ѡʵ����</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
	</HEAD>
	<body onselectstart="window.event.returnValue=false" oncontextmenu="window.event.returnValue=false"
		ondragstart="window.event.returnValue=false" onsource="window.event.returnValue=false"
		leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
			<tr>
				<td vAlign="top" align="center" height="26">
					<table WIDTH="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td vAlign="bottom" align="center"><b>ѡʵ����</b></td>
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
							<td align="left" width="60" nowrap>ѧ��ѧ�ڣ�</td>
							<td align="left" width="135" nowrap><%=xnxqstr%><br>
							</td>
							<td align="left" width="60" nowrap>ʱ�����Σ�</td>
							<td align="left"><%=timestr%><br>
							</td>
							<td align="right" width="70" nowrap>&nbsp;
								<%if(seacher_flag=="show"){%>
								<input class="button" type="button" name="submit" value="��ѡ" onclick="return ChkVal()"
									disabled></td>
							<%}%>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td valign="bottom" align="center" height="100%">
					<iframe name="frmRpt" src="stu_sy_xsyjg_rpt.aspx" width="100%" height="98%" frameborder="0">
					</iframe>
				</td>
			</tr>
		</table>
	</body>
</HTML>
