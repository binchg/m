<%@ Page language="c#" Codebehind="Tea_DGKCCJLR_add.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.XSCJ.Tea_DGKCCJLR_add" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 
<HTML>
	<HEAD>
		<title>�ֿγ̰��Ͽΰ༶¼�����ɼ�</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
		<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
		<base target="frmRpt">
		<script language="vbscript">
			Sub SubmitDataOnclick()
				rs=cint(frmRpt.document.all("tabRows").value)
				allcj=""
				opener.window.status="���ڼ��ɼ�¼������������Ժ�"
				for ii= 1 to rs
					percj=""
					percj=percj&frmRpt.document.all("chkQMTSQKID"&ii).value
					if frmRpt.document.all("chkPSYL"&ii).value="0" then percj=percj&frmRpt.document.all("CHKPSCJ"&ii).value
					if frmRpt.document.all("chkQZYL"&ii).value="0" then percj=percj&frmRpt.document.all("CHKQZCJ"&ii).value
					if frmRpt.document.all("chkQMYL"&ii).value="0" then percj=percj&frmRpt.document.all("CHKQMCJ"&ii).value
					if frmRpt.document.all("chkJNYL"&ii).value="0" then percj=percj&frmRpt.document.all("CHKJNCJ"&ii).value
					if frmRpt.document.all("chkZHYL"&ii).value="0" then percj=percj&frmRpt.document.all("CHKZHCJ"&ii).value
					allcj=allcj&percj
					if percj<>"" and frmRpt.document.all("chkQMTSQKID"&ii).value="" then
						if frmRpt.document.all("CHKPSCJ"&ii).value="" and frmRpt.document.all("chkPSYL"&ii).value="0" then
							msgbox "�ɼ�û���ύ����!",64,"ϵͳ��ʾ"
							opener.window.status=""
							frmRpt.document.all("CHKPSCJ"&ii).focus()
							exit sub
						end if
						if frmRpt.document.all("CHKQZCJ"&ii).value="" and frmRpt.document.all("chkQZYL"&ii).value="0" then
							msgbox "�ɼ�û���ύ����!",64,"ϵͳ��ʾ"
							opener.window.status=""
							frmRpt.document.all("CHKQZCJ"&ii).focus()
							exit sub
						end if
						if frmRpt.document.all("CHKQMCJ"&ii).value="" and frmRpt.document.all("chkQMYL"&ii).value="0" then
							msgbox "�ɼ�û���ύ����!",64,"ϵͳ��ʾ"
							opener.window.status=""
							frmRpt.document.all("CHKQMCJ"&ii).focus()
							exit sub
						end if
						if frmRpt.document.all("CHKJNCJ"&ii).value="" and frmRpt.document.all("chkJNYL"&ii).value="0" then
							msgbox "�ɼ�û���ύ����!",64,"ϵͳ��ʾ"
							opener.window.status=""
							frmRpt.document.all("CHKJNCJ"&ii).focus()
							exit sub
						end if
						if frmRpt.document.all("CHKZHCJ"&ii).value="" and frmRpt.document.all("chkZHYL"&ii).value="0" then
							msgbox "�ɼ�û���ύ����!",64,"ϵͳ��ʾ"
							opener.window.status=""
							frmRpt.document.all("CHKZHCJ"&ii).focus()
						end if
					end if
					'if allcj<>"" then exit for
				next
			   
				opener.window.status=""
				if allcj="" then
				msgbox "û�гɼ������ύ!",64,"ϵͳ��ʾ"
				exit sub
				end if
				If MsgBox("�ύ��ĳɼ������ܱ��޸ģ�"&vbCrLf&vbCrLf&"��ȷ���ύ��ǰ�ɼ���",vbYesNo+vbQuestion+vbDefaultButton2,"ϵͳ��ʾ")=vbYes Then
				frmRpt.form1.submit
				End If
			End Sub
		</script>
		<script language=javascript>
			function ChkValue()           //
			{
				var psbl,sybl,zkbl,mkbl,sjbl,tlbl,jsbl,llbl;
				try{
 					if((document.all.CJBXXS.value=='')||(document.all.CJBXXS.value=='Nothing')){alert('�ɼ�������ʽ����Ϊ�գ�');return false;}
 					psbl=parseInt(document.all.chkPSBFB.value);
 					sybl=parseInt(document.all.chkSYBFB.value);
 					zkbl=parseInt(document.all.chkZKBFB.value);
 					mkbl=parseInt(document.all.chkMKBFB.value);
 					sjbl=parseInt(document.all.chkSJBFB.value);
 					tlbl=parseInt(document.all.chkTLBFB.value);
 					jsbl=parseInt(document.all.chkJSBFB.value);
 					llbl=parseInt(document.all.chkLLBFB.value);
					if(psbl+sybl+zkbl+mkbl+sjbl+tlbl+jsbl+llbl!=100){alert('�Ƿ��ɼ�������');return false;}
				}
				catch(e){return false;}
			}
			
			function OnSel(theID)
			{
			if(isNaN(theID.value)){
				theID.value=0;
				theID.focus;}
			else{
				if(theID.value<0){alert('�ɼ������������0!');theID.value=0;theID.focus;}
				if(theID.value==""){theID.value=0;theID.focus;}
				
				}
			}
		</script>
		<style>
			input.BL{text-align:right;border-style:solid; border-width:1;width:25px;}
		</style>
	</HEAD>
	<body bgcolor="#ffffff" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=no>
		<table width="99%" border="0" cellspacing="0" cellpadding="0" height="100%" align=center>
			<tr>
				<td valign="top" align="center">
					<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td valign="bottom" align="center"><b>�ֿγ̰��Ͽΰ༶¼�����ɼ�</b></td>
						</tr>
						<tr>
							<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<form name="form1" method="post" action="DG_KCCJ_ADD_rpt.aspx" onSubmit="return ChkValue()" target="frmRpt">
				<tr>
					<td>
						<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
							<tr>
								<td height="26" colspan="2" >
									<table border="0" width="100%" align="center" cellpadding="0" cellspacing="0">
										<tr>
											<td width=210px align=left>
												�����༶&nbsp;<select name=sel_xzbj style="width:150" ><%=GetN.Sel_XSBJ(vXNXQ,USER_ID,vSKBJ)%></select>
											</td>
											<td align=right >�ɼ�������
												ƽʱ&nbsp;<input name="chkPSBFB" type="text" value=0 maxlength="3"  onBlur="OnSel(this)" class="BL" >%
												�п�&nbsp;<input name="chkZKBFB" type="text" value=0 maxlength="3"  onBlur="OnSel(this)"  class="BL" >%
												ĩ��&nbsp;<input name="chkMKBFB" type="text" value=0 maxlength="3"  onBlur="OnSel(this)"  class="BL" >%
												ʵ��&nbsp;<input name="chkSYBFB" type="text" value=0 maxlength="3"  onBlur="OnSel(this)"  class="BL" >%
												�ϻ�&nbsp;<input name="chkSJBFB" type="text" value=0 maxlength="3"  onBlur="OnSel(this)"  class="BL" >%
												����&nbsp;<input name="chkTLBFB" type="text" value=0 maxlength="3"  onBlur="OnSel(this)"  class="BL" >%
												����&nbsp;<input name="chkJSBFB" type="text" value=0 maxlength="3"  onBlur="OnSel(this)"  class="BL" >%
												����&nbsp;<input name="chkLLBFB" type="text" value=0 maxlength="3"  onBlur="OnSel(this)"  class="BL" >%
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="26"  align=left >
									�ɼ�������ʽ&nbsp;<select name=CJBXXS style="width:125" ><%=GetN.GetCJBXXS()%></select>
								</td>
								<td height="26" align=right >
									<input name=Submit01 type=submit value=���� class=button onclick='document.all.SubmitData.disabled=true'>
									<input type=button value=���� disabled name=SubmitData onclick='SubmitDataOnclick()' class=button>
									<input type=button value=����  name=close onclick='window.close()' class=button>
									<input type=hidden name=hid_user value='<%=USER_ID%>'>
									<input type=hidden name=hid_xnxq value='<%=vXNXQ%>'>
									<input type=hidden name=sel_kc value='<%=vKCDM%>'>
									<input type=hidden name=sel_skbj value='<%=vSKBJ%>'>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</form>
			<tr>
				<td valign="top" align="center" height="90%">
					<iframe name="frmRpt" src="DG_KCCJ_ADD_rpt.aspx" width="100%" height="98%" frameborder="1"></iframe>
				</td>
			</tr>
		</table>
		</TR></TABLE>
	</body>
</HTML>
