<%@ Page Language="C#" %>
<HTML>
	<HEAD>
		<title>���ÿ���Ⱥ��</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
		<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
		<script language="JavaScript">
			function ChkValue(theObj){
				var s=theObj.value;
				if (s=="ɾ��" && document.all.hidcode.value==""){return false;}
				if (document.all.txtID.value==''){
				alert('���벻��Ϊ�գ�');
				document.all.txtName.focus();return false;
				}
				if (document.all.txtName.value==''){
					alert('���Ʋ���Ϊ�գ�');
					document.all.txtName.focus();return false;
				}
				if (!confirm('��ȷ��Ҫ'+s+'��ǰ��¼��?')){return false;}
				return true;
			}

			function BtnAdd(){
				var PivID,PivColor,PivFontColor;

				document.all.txtID.value="";
				document.all.txtName.value="";
				document.all.hidcode.value="";
				try{
					PivID=frmRpt.document.all.PSTemp.ValueID
					PivColor=frmRpt.document.all.PSTemp.PivColor
					PivFontColor=frmRpt.document.all.PSTemp.PivFontColor
				}catch(e){return false}
				try{
					eval("frmRpt."+PivID+".style.backgroundColor='"+PivColor+"';");
					eval("frmRpt."+PivID+".style.color='"+PivFontColor+"';");
				}catch(e){return false}
			}
		</script>
	</HEAD>
	<body oncontextmenu="window.event.returnValue=false" ondragstart="window.event.returnValue=false"
		onsource="window.event.returnValue=false" leftmargin="0" topmargin="0">
		<table width="295" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
			<tr>
				<td valign="top" align="center">
					<table width="295" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td valign="bottom" align="center"><b>���ÿ���Ⱥ��</b></td>
						</tr>
						<tr>
							<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<form name="form1" method="post" action="set_ksqz_rpt.aspx" target="frmRpt">
				<tr>
					<td valign="middle" align="center" height="5%">
						<table width="295" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
							<tr>
								<td align="left" nowrap>����&nbsp;<input type="text" id="txtID" name="txtID" style="WIDTH:35px" maxlength="10">
									&nbsp;����&nbsp;<input type="text" id="txtName" name="txtName" size="25" maxlength="25">
								</td>
							<tr>
								<td align="right" nowrap height="22" valign="bottom">
									<input type="hidden" name="hidcode"> <input type="button" name="button" value="����" class="but20" onclick='BtnAdd()'>
									<input type="submit" name="button" value="����" class="but20" onclick='return ChkValue(this)'>
									<input type="submit" name="button" id="bntDel" disabled value="ɾ��" class="but20" onclick='if(confirm("��ȷ��Ҫ������?")){return true}else{return false}'>
									<input type="button" name="close" value="����" class="but20" onclick='window.close()'>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td valign="bottom" align="center" height="18">
						<DIV id="theHead" style='WIDTH: 99%'></DIV>
					</td>
				</tr>
				<tr>
					<td valign="top" align="center" height="100%">
						<iframe name="frmRpt" src="set_ksqz_rpt.aspx?id=0" width="99%" height="99%" frameborder="0">
						</iframe>
					</td>
				</tr>
			</form>
		</table>
	</body>
</HTML>
