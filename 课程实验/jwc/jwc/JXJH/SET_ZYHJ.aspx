<%@ Page %>
<%@ Import NameSpace="BLL.JXJH"%>
<%@ Import NameSpace="BLL.include" %>
<%
BLL.JXJH.private_JXJH pSub=new BLL.JXJH.private_JXJH(this);
pSub.JXJH_TimeArea(this,"JH_YX_NJZY-KCHJ");
pSub.DoorOnOff(this,"JH_YX_NJZY-KCHJ");
%>
<HTML>
	<HEAD>
		<title>����רҵʵ������</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
		<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
		<script language="JavaScript">
		function SaveME(theID){
			if (theID.value=="����")
			{
				form1.action="SET_ZYHJ_Save.aspx?p=upd";
			}
			else 
			{form1.action="SET_ZYHJ_Save.aspx?p=del";}
		}
		function OnSaveBtn(){
			if (document.all.kkxq.value!="" && (document.all.zx_flag.checked || document.all.fx_flag.checked))
			{document.all.submit.disabled=false;}
			else
			{document.all.submit.disabled=true;}
		}
		function ChkValue(theForm){try{
		if(theForm.kcdm.value == '')
		{ alert('��ѡ�����ڣ�');theForm.kcmc.focus();return false;}
		try{vID=theForm.kkxq.options[theForm.kkxq.selectedIndex].value;}catch(e){vID='';}
		if(vID == ""){ alert('��ѡ������ѧ�ڣ�');theForm.kkxq.focus();return false;}
		//if(confirm('��ȷ��Ҫ������?'))
		//{return true;}return false;
		return true;
		}catch(e){return false;}}

		function QryKC(theID){
			var s=theID.value;//alert(s);
			if(theID.checked){document.all.txtKC.disabled=false;document.all.txtKC.focus();}
			else{document.all.txtKC.disabled=true;
			if(document.all.txtKC.value!='')Ex_ZYKC(document.all.sel_zy);
			document.all.txtKC.value='';
		}}

		function window.onresize(){
			try{var bHide=window.top.frmbody.mfr.cols=="0,*";}catch(e){var bHide='Nothing'} //alert(bHide);
			if (bHide=='Nothing'){return false;}
			if(bHide) document.all.sel_zy.style.width='300';
			else document.all.sel_zy.style.width='200';
		}
		</script>
	</HEAD>
	<body onselectstart="window.event.returnValue=false" bgcolor="#ffffff" text="#000000"
		leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<center>
			<table align="center" width="660" border="0" cellspacing="0" cellpadding="0" height="100%">
				<tr>
					<td>
						<table width="660" border="0" cellspacing="0" cellpadding="0" height="100%">
							<tr>
								<td valign="top" align="center" colspan="2">
									<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
										<tr>
											<td valign="bottom" align="center"><b>����רҵʵ������</b></td>
										</tr>
										<tr>
											<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<form name="form1" id="form1" method="post" action="SET_ZYHJ_Save.aspx?p=upd" target="frmKC"
								onsubmit='return ChkValue(this)'>
								<!--��ѯ����-->
								<tr id="Dis1">
									<td valign="top" align="center" height="5%" colspan="2">
										<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
											<tr height="20">
												<td width="17%" align="left">��&nbsp;&nbsp;��&nbsp;<select name="sel_xn" style="width:55px;" onchange='showListZY(document.all.sel_yx.options[document.all.sel_yx.selectedIndex].value,this,1)'><%=(new ind_subPublic()).WRT_nj()%></select></td>
												<td width="30%" align="left"><iframe name="frmZY" src='' frameborder="0" style='DISPLAY: none;WIDTH: 0px;HEIGHT: 0px'></iframe>
													<!-- USER_Level="SYS" //-->
													&nbsp;Ժ(ϵ/��)&nbsp;<select name="sel_yx" onchange="showListZY(this,document.all.sel_xn.options[document.all.sel_xn.selectedIndex].value,0)"
														style='WIDTH:120px'>
														<%=(new ind_subPublic()).PutValue("yx",pSub.USER_OPTYX)%>
													</select></td>
												<td width="58%" align="left">
													<input type="checkbox" name="chkKC" onclick="QryKC(this)">�����ڴ�������Ƽ��� <input type="text" name="txtKC" style="WIDTH:191px" size="26" maxlength="25" title='���뻷�ڴ�������Ƽ���ģ������'
														val='' disabled onchange="Ex_ZYKC(document.all.sel_zy)"> 
													<!--<td width="30%" align="center" id=theCCDX>������Σ�____&nbsp;��������____</td> --></td>
											</tr>
										</table>
									</td>
								</tr>
								<!--¼������-->
								<tr>
									<td width="30%" align_="center" valign="top" id="theZY">
										<select name="sel_zy" id='sel_zy' OnChange="Ex_ZYKC(this)" size='6' multiple style="WIDTH:200px">
										</select>
									<td valign="top" width="70%" align="center"><iframe name="frmKC" src='' frameborder="1" style='Display:none;WIDTH:0px;HEIGHT:0px'></iframe>
										<table id="Dis3" width="100%" border="0" cellspacing="0" cellpadding="0" align="center"
											height="26">
											<tr class="B" height="20">
												<td  nowrap>���ڴ���</td>
												<td>
													<table border="0" cellspacing="0" cellpadding="0">
														<tr>
															<td><input type="text" name="kcdm" size="15" val='' disabled><input type="hidden" name="kcid" val=''></td>
															<td>&nbsp;��������&nbsp;</td>
															<td><input type="text" name="kcmc" style="WIDTH:223px" size="30" val='' disabled></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr class="H" height="20">
												<td width="10%" nowrap>�������</td>
												<td>
													<table border="0" cellspacing="0" cellpadding="0">
														<tr>
															<td><select name="kclb" style='WIDTH:119px' disabled onchange="OnSaveBtn()"><%=(new ind_subPublic()).PutValue("hjlb","all","")%></select></td>
															<td>&nbsp;ѧ��&nbsp;</td>
															<td><input type="text" name="zxf" size="6" val='' disabled onblur="OnSaveBtn()"></td>
															<td>&nbsp;����&nbsp;</td>
															<td><input type="text" name="zs" size="6" val='' disabled onblur="OnSaveBtn()"></td>
															<td>&nbsp;����ѧ��&nbsp;</td>
															<td><select name="kkxq" style='WIDTH:42px' onchange="OnSaveBtn()"><%=(new private_JXJH()).SetValue("kkxq","all")%></select></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr class="H">
												<td width="10%" height="20" nowrap>����Ҫ��</td>
												<td width="90%">
												<input type="text" name="memo" value=''style="width:290" maxlength=50>
												<input type=checkbox name=zx_flag value='1'checked onclick="OnSaveBtn()">����&nbsp;
												<input type=checkbox name=fx_flag value='1' onclick="OnSaveBtn()">����
												</td>
											</tr>
										</table>
										<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" height="22">
											<input type="hidden" name="RowXH">
											<TR>
												<td width="45%" valign="middle" id="theCount" value="0"><br>
												</td>
												<td width="35%" valign="middle" align="right" id="radState" value='0'>
												<td width="20%" valign="middle" align="right">
													<br>
													<input type="submit" value="ȡ��" name="delbtn" class="button" disabled onclick="if(confirm('�Ƿ�ȡ��ѡ����¼��')){SaveME(this)}else{return false;}">
													<input type="submit" value="����" name="submit" class="button" disabled onclick="if(confirm('�Ƿ񱣴��¼��')){SaveME(this);}else{return false;}"></td>
											</TR>
										</table>
									</td>
								</tr>
							</form>
							<tr>
								<td valign="top" align="center" height="5%" colspan="2">
									<DIV id="theHead" style='WIDTH: 100%'></DIV>
								</td>
							</tr>
							<tr>
								<td valign="top" align="center" height="100%" colspan="2">
									<iframe name="frmRpt" src="SET_ZYHJ_Rpt.aspx" width="100%" height="95%" frameborder="1">
									</iframe>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</center>
		<script language="javascript">
			function showListZY(yx,nj,vf){
				var vnj;
				var vID;
				if(vf==0){vID=yx.value;vnj=nj;}else{vID=yx;vnj=nj.value;}
				vURL='./Private/LIST_JHSet_YXZY.aspx?id='+vID+'&nj='+vnj+'&zy='+document.all.sel_zy.value;
				window.frmZY.document.location.href=vURL;
				Ex_ZYKC(document.all.sel_zy);
				KC_Cls();
			}
			function Ex_ZYKC(theID){
				var s,vNJ,vID,vKC=''; try{s=theID.value;}catch(e){s='';} if(s=='')return false;
				if(document.all.chkKC.checked) vKC=document.all.txtKC.value; //alert(vKC);
				vNJ=document.all.sel_xn.options[document.all.sel_xn.selectedIndex].value
				vID=s.substring(0,4);//theCCDX.innerHTML=s.substring(4,s.length);
				window.frmRpt.location.href='SET_ZYHJ_Rpt.aspx?nj='+vNJ+'&id='+vID+'&kc='+vKC; 
				document.all.submit.disabled=true;document.all.delbtn.disabled=true;
				//alert(window.frmRpt.location.href);
				KC_Cls();
			}

			function KC_Cls(){
				document.all.kcdm.value='';document.all.kcmc.value='';
				document.all.zxf.value='';document.all.zs.value='';
				document.all.kclb.value='';document.all.kkxq.value='';
				document.all.memo.value='';
			}
		</script>
	</body>
</HTML>
