<%@ Page %>
<%@ Import NameSpace="DAL.JXJH" %>
<%@ Import NameSpace="BLL.JXJH" %>
<HTML>
	<HEAD>
		<title>��ѧ�ƻ�--¼�����ۿγ���Ϣ</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
		<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
		<script language="vbscript">
		Sub Chkxf(theID)
		 theID.value=formatnumber(theID.value,1,-1)
		End Sub
		</script>
		<script language="javascript">
		function chkNum(obj){
			var js=0,sy=0,sj=0,qt=0
			if(!isNaN(document.all.txtTeachTime.value) && document.all.txtTeachTime.value>=0 && document.all.txtTeachTime.value!=""){
				try{js=parseFloat(document.all.txtTeachTime.value);}catch(e){js=0;}
			}else{document.all.txtTeachTime.value=0;}
			
			if(!isNaN(document.all.txtLabTime.value) && document.all.txtLabTime.value>=0 && document.all.txtLabTime.value!=""){
				try{sy=parseFloat(document.all.txtLabTime.value);}catch(e){sy=0;}
			}else{document.all.txtLabTime.value=0;}
			
			if(!isNaN(document.all.txtComTime.value) && document.all.txtComTime.value>=0 && document.all.txtComTime.value!=""){
				try{sj=parseFloat(document.all.txtComTime.value);}catch(e){sj=0;}
			}else{document.all.txtComTime.value=0;}
			
			if(!isNaN(document.all.txtEtcTime.value) && document.all.txtEtcTime.value>=0 && document.all.txtEtcTime.value!=""){
				try{qt=parseFloat(document.all.txtEtcTime.value);}catch(e){qt=0;}
			}else{document.all.txtEtcTime.value=0;}
			
			document.all.txtAllStudTime.value=js+sy+sj+qt;
		}
		
		function chkValue(obj){
			try{
				var url="";
				var s=obj.name;
				if(s=="searchBtn"){
					url="?type=search"
				}else if(s=="NewAddBtn"){
					window.form1.reset();
					document.all.sel_cddw.focus();
					clearDblTxt();
				}else if(s=="SaveBtn"){
					if(document.all.sel_cddw.value==""){
						alert('��ѡ���е���λ��');
						document.all.sel_cddw.focus();
					}else if(document.all.txtNameCN.value==""){
						alert('��¼���������ƣ�');
						document.all.txtNameCN.focus();
					}else if(document.all.sel_classSmType.value==""){
						alert('��ѡ���γ����');
						document.all.sel_classSmType.focus();
					}else if(document.all.txtXF.value==""){
						alert('��¼��ѧ�֣�');
						document.all.txtXF.focus();
					}else if(isNaN(document.all.txtXF.value)){
						alert('ѧ����¼�����֣�');
						document.all.txtXF.focus();
					}else if(document.all.txtXF.value<=0||document.all.txtXF.value>20){
						alert("ѧ�ֱ������0��С�ڵ���20��")	
						document.all.txtXF.focus();							
					}else if(document.all.txtTeachTime.value==""){
						alert('��¼�뽲��ѧʱ��');
						document.all.txtTeachTime.focus();
					}else if(isNaN(document.all.txtTeachTime.value)){
						alert('����ѧʱ��¼�����֣�');
						document.all.txtTeachTime.focus();
					}else if(document.all.txtLabTime.value==""){
						alert('��¼��ʵ��ѧʱ��');
						document.all.txtLabTime.focus();
					}else if(isNaN(document.all.txtLabTime.value)){
						alert('ʵ��ѧʱ��¼�����֣�');
						document.all.txtLabTime.focus();
					}else if(document.all.txtComTime.value==""){
						alert('��¼���ϻ�ѧʱ��');
						document.all.txtComTime.focus();
					}else if(isNaN(document.all.txtComTime.value)){
						alert('�ϻ�ѧʱ��¼�����֣�');
						document.all.txtComTime.focus();
					}else if(document.all.txtEtcTime.value==""){
						alert('��¼������ѧʱ��');
						document.all.txtEtcTime.focus();
					}else if(isNaN(document.all.txtEtcTime.value)){
						alert('����ѧʱ��¼�����֣�');
						document.all.txtEtcTime.focus();
					}else if(confirm("�Ƿ񱣴��¼��")){
						url="?type=save"
					}
				}else if(s=="DelBtn"){
					if(document.all.hidcode.value!=""){
						if(confirm('�Ƿ�ɾ��ѡ����¼��'))
							url="?type=del";
					}
				}
				if(url!=""){
					window.form1.action="ADD_KC_Rpt.aspx"+url;
					window.form1.method="post";
					window.form1.submit();
				}
			}catch(e){alert(e);}
		}
		
		function clearDblTxt(){
			var PivID,PivColor,PivFontColor;
			try{
				PivID=main.document.all.PSTemp.ValueID;
				PivColor=main.document.all.PSTemp.PivColor;
				PivFontColor=main.document.all.PSTemp.PivFontColor;
				if(PivID!=""){
					eval("main."+PivID+".style.backgroundColor='"+PivColor+"';");
					eval("main."+PivID+".style.color='"+PivFontColor+"';");
				}
			}catch(e){};
		}
		function selValueChange(obj){
			try{
				document.all.sel_cddw.value=obj.value;
			}catch(e){alert(e);}
		}
		</script>
		<script language="C#" runat="server">
			private void Page_Load(object sender,System.EventArgs e){
				KingosoftFrame.BasePage myPage=new KingosoftFrame.BasePage();
				myPage.InitPage(false);
				try{
					BLL.JXJH.private_JXJH pSub=new BLL.JXJH.private_JXJH();
					DAL.JXJH.CourseTache data=new DAL.JXJH.CourseTache();
					pSub.JXJH_TimeArea(this,"JH_DW_KCHJXX");
					pSub.DoorOnOff(this,"JH_DW_KCHJXX");
					
					cddwStr.Text=pSub.SetValue("cddw",myPage.CUR_UserInfo.USER_OptDW);
					opSelCDDW.Text=pSub.SetValue("cddw",myPage.CUR_UserInfo.USER_OptDW);
					RxLBStr.Text=data.WRT_TheRxkLB();
					KCLB4Str.Text=data.WRT_TheKCLB4();
				}catch(Exception ex){
					myPage.ExceptionOutputStr(ex);
				}
			}
		</script>
	</HEAD>
	<body bgcolor="#ffffff" text="#000000" leftmargin="0" topmargin="0"
		 topmargin="0" leftmargin="0">
		<form name="form1" method="post" action="ADD_KC_Rpt.aspx" target="main">
			<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0" align="center">
				<tr><td valign="top" align="center">
					<table width="662px" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td valign="bottom" align="center"><b> ¼�����ۿγ���Ϣ</b></td>
						</tr>
						<tr>
							<td valign="bottom" align="center"><script language="javascript">Draw_HR('99.5%')</script></td>
						</tr>
						
					</table>
				</td></tr>
				<tr><td  align="center">
					<table width="660px" border="0" cellspacing="0" cellpadding="0" align="center">
						<tr ><td  align="center" style="height:3px"></td></tr>
						<tr ><td  align="center">
							<fieldset>
								<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
									<tr align="left">
										<td width="31%" >&nbsp;�е���λ&nbsp;<select name="search_cddw" style='WIDTH:140px;' onchange="selValueChange(this)">
												<asp:Literal ID="cddwStr" Text="" Runat="server"/>
											</select>
										</td>
										<td width="40%" >�γ�����&nbsp;<input type="text" name="search_className" value="" style="width:198px;">
										</td>
										<td width="29%"  align="center">
										<input type="button" name="searchBtn" onclick="chkValue(this)" value="����" class="but20">
										<input type="button" name="NewAddBtn" onclick="chkValue(this)" value="����" class="but20">
										<input type="button" name="SaveBtn" onclick="chkValue(this)" value="����" class="but20">
										<input type="button" name="DelBtn" onclick="chkValue(this)" value="ɾ��" class="but20">
										<input type="hidden" name="hidcode"><input type="hidden" name="hidFunction" value="" onclick="clearDblTxt()">
										</td>
									</tr>
								</table>
							</fieldset>
						</td></tr>
						<tr ><td  align="center" style="height:3px"></td></tr>
						<tr ><td valign="top" align="center">
							<fieldset>
								<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" height="142">
									<tr >
										<td width="31%" nowrap>&nbsp;�γ̴���&nbsp;<input name="txt_kcdm" value=""  style="width:137px;"></td>
										<td width="30%" nowrap>�е���λ&nbsp;<select name="sel_cddw" style="width:140px"><asp:Literal ID="opSelCDDW" Text="" Runat="server"/></select></td>
										<td width="39%" nowrap>&nbsp;�γ����&nbsp;<select name="sel_classBigType" style="width:110px;"><asp:Literal ID="RxLBStr" Text="" Runat="server"/></select><select name="sel_classSmType" style="width:80px;"><asp:Literal ID="KCLB4Str" Text="" Runat="server"/></select></td>
									</tr>
									<tr >
										<td colspan="3" align="left">
											<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
												<tr valign="top" align="left">
													<td width="335px" >&nbsp;��������&nbsp;<input type="text" name="txtNameCN" value="" style="width:260px;"></td>
													<td width="325px" >Ӣ������&nbsp;<input type="text" name="txtNameEN" value="" style="width:262px;"></td>
												</tr>
											</table>
										</td>
									</tr>
									<tr valign="top" align="left">
										<td width="30%" colspan="3">&nbsp;ѧ&nbsp;&nbsp;&nbsp;&nbsp;��&nbsp;<input name="txtXF" value=".0"  style="width:42px;text-align:right;">
											&nbsp;����ѧʱ
											<input name="txtTeachTime" onchange="chkNum(this)" value="0" style="width:42px;text-align:right;">
											&nbsp;ʵ��ѧʱ
											<input name="txtLabTime" onchange="chkNum(this)" value="0" style="width:44px;text-align:right;">
											&nbsp;�ϻ�ѧʱ
											<input name="txtComTime" onchange="chkNum(this)" value="0" style="width:42px;text-align:right;">
											&nbsp;����ѧʱ
											<input name="txtEtcTime" onchange="chkNum(this)" value="0" style="width:42px;text-align:right;">
											&nbsp;��&nbsp;ѧ&nbsp;ʱ
											<input name="txtAllStudTime"  readonly title="ֻ��" value="0" style="width:47px;text-align:right;color:blue;">
										</td>
									</tr>
									<tr ><td colspan="3">
										<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
											<tr >
												<td width="60px" nowrap>&nbsp;��ѧ���</td>
												<td width="92%" >
													<textarea name="txt_JXDG" style="OVERFLOW:auto;WIDTH:589px;HEIGHT:60px" maxlength="10000"></textarea>
												</td>
											</tr>
										</table>
									</td></tr>
								</table>
							</fieldset>
						</td></tr>
					</table>
				</td></tr>
				<tr><td valign="top" align="center" height="5%"><br>
					<DIV id="theHead" style='WIDTH: 99%'></DIV>
				</td></tr>
				<tr height="90%"><td valign="middle" align="center">
					<iframe name="main" src="ADD_KC_Rpt.aspx" width="99%" height="99%" frameborder="0"></iframe>
				</td></tr>
			</table>
		</form>
	</body>
</HTML>
