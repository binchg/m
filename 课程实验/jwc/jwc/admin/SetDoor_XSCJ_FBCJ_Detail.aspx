<%@ Page language="c#" Codebehind="SetDoor_XSCJ_FBCJ_Detail.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.admin.SetDoor_XSCJ_FBCJ_Detail" %>
<HTML>
	<HEAD>
		<title>���ÿɷ����ĳɼ�</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
		<LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body  onselectstart=window.event.returnValue=false oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false 
		 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<form name="form1" action="SetDoor_XSCJ_FBCJ_Detail.aspx" target="_self" method="post">
			<table width="98%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
				<tr><td width=100% ><br></td></tr>
				<tr><td width=100% height=26 nowrap><b>���ÿɷ����ĳɼ���</b></td></tr>
				<tr><td width=100% height=82 nowrap>
						<fieldset>
							<table width="98%" border="0" cellspacing="0" cellpadding="0" height="82" align="center">
								<%if(fbflag==""){%>
								<tr><td ><input name="radfb" type=radio value="0">&nbsp;������ԭʼ�ɼ�</td>
								</tr>
								<tr><td ><input name="radfb" type=radio value="1">&nbsp;��������Ч�ɼ�</td>
								</tr>
								<tr><td ><input name="radfb" type=radio value="2" checked>&nbsp;����ԭʼ����Ч�ɼ�</td>
								</tr>
								<%}else if(fbflag=="0"){%>
								<tr><td ><input name="radfb" type=radio value="0" checked>&nbsp;������ԭʼ�ɼ�</td>
								</tr>
								<tr><td ><input name="radfb" type=radio value="1">&nbsp;��������Ч�ɼ�</td>
								</tr>
								<tr><td ><input name="radfb" type=radio value="2" >&nbsp;����ԭʼ����Ч�ɼ�</td>
								</tr>
								<%}else if(fbflag=="1"){%>
								<tr><td ><input name="radfb" type=radio value="0">&nbsp;������ԭʼ�ɼ�</td>
								</tr>
								<tr><td ><input name="radfb" type=radio value="1" checked>&nbsp;��������Ч�ɼ�</td>
								</tr>
								<tr><td ><input name="radfb" type=radio value="2" >&nbsp;����ԭʼ����Ч�ɼ�</td>
								</tr>
								<%}else if(fbflag=="2"){%>
								<tr><td ><input name="radfb" type=radio value="0">&nbsp;������ԭʼ�ɼ�</td>
								</tr>
								<tr><td ><input name="radfb" type=radio value="1">&nbsp;��������Ч�ɼ�</td>
								</tr>
								<tr><td ><input name="radfb" type=radio value="2" checked>&nbsp;����ԭʼ����Ч�ɼ�</td>
								</tr>
								<%}%>
							</table>
						</fieldset>
					</td>
				</tr>
				<tr><td width=100% height=26 align=right >
					<input type=submit class=but20 value="����">
					<input type=button class=but20 value="����" onclick="window.close();">
					</td>
				</tr>
				<tr><td width=100% ><br></td></tr>
			</table>
		</form>
	</body>
</HTML>