<%@ Page language="c#" Codebehind="ADD_KCSYXM.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.JXJH.ADD_KCSYXM" %>

<html>
  <head>
    <title>�ύ�γ̡�ʵ����Ŀ</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
    <script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
	<LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
	<script language="JavaScript">
		function ChkValue(){
			try{
				var hid_kcdm;
				var hid_syxmdm;
				var xh;
				xh=document.all.xh;
				hid_kcdm=document.all.kcdm.value;
				hid_syxmdm=document.all.syxmdm.value;
				if(hid_kcdm=='')
				{ alert('��ѡ����Ӧ�Ŀγ̣�');return false;}
				if(hid_syxmdm=='')
				{ alert('��ѡ����Ӧ��ʵ����Ŀ��');return false;}
				if(xh.value=='')
				{ alert('ʵ����Ŀ��Ų���Ϊ��!');xh.focus();return false;}
				else if(isNaN(xh.value))
				{ alert('ʵ����Ŀ��ű���Ϊ������');xh.select();return false;}
				else if(parseInt(xh.value)<=0)
				{ alert('ʵ����Ŀ��ű������0��');xh.select();return false;}

				if(confirm('�Ƿ񱣴棿'))
				{
					window.form1.method="post";
					window.form1.target="frmRpt";
					window.form1.action="ADD_KCSYXM_rpt.aspx?flag=add";
					window.form1.submit();			
				}
			}catch(e){return false;}
		}

		function DelValue(){
			var hid_kcdm;
			var hid_syxmdm;
			hid_kcdm=document.all.kcdm.value;
			hid_syxmdm=document.all.syxmdm.value;
			if(hid_kcdm!=""&&hid_syxmdm!=""){
				if(confirm('�Ƿ�ȡ����'))
				{
					window.form1.method="post";
					window.form1.target="frmRpt";
					window.form1.action="ADD_KCSYXM_rpt.aspx?flag=del";
					window.form1.submit();				
				}
			}
		}
		
		function SeachLesson()
		{
			var sel_cddw;
			var txt_kcmc;
			sel_cddw=document.all.sel_cddw.value;
			txt_kcmc=document.all.txt_kcmc.value;
			if(sel_cddw==""||sel_cddw=="Nothing"){
				alert('��ѡ���е���λ��');
			}else{
				window.frmSYKC.location.href="ADD_KCSYXM_SYKC.aspx?cddw="+sel_cddw+"&kcmc="+txt_kcmc;
			}
		}
		
		function CleanObjectValue(){
			try{
				document.all.syxmdm.value='';
				document.all.syxmmc.value='';
				document.all.user_dm.value='';
				document.all.t_ycs.value='';
				document.all.xh.value='';
				document.all.memo.value='';
				document.all.type1.checked=false;
				document.all.type2.checked=false;
				document.all.type3.checked=false;
				document.all.type4.checked=false;
				document.all.type5.checked=false;
				document.all.type6.checked=false;
				
				document.all.savebut.disabled=true;
				document.all.delbut.disabled=true;
			}catch(e){}
		}
	</script>
  </head>
	<body oncontextmenu=window.event.returnValue=false onselectstart=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false topmargin='0' leftmargin='0'  >
		<form name="form1" id="form1" method="post" action="ADD_KCSYXM_rpt.aspx" target="frmKC" onsubmit='return ChkValue(this)'>         
			<table width="662px" height="100%" align="center" border=0 cellspacing="0" cellpadding="0"  >
			<tr><td valign="top" align="center" colspan="2">
				<table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
					<tr><td valign="bottom" align="center"><b>�ύ�γ̡�ʵ����Ŀ</b></td></tr>
					<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script></td></tr>
				</table>   
			</td></tr>
			<tr ><td align="center" height="26px" colspan=2 nowrap>
				<table width="99%" height="26" border=0 cellspacing="0" cellpadding="0" align="center" >
					<tr height="26"> 
						<td width="94%" align="left">
							�е���λ&nbsp;<select name="sel_cddw" style="width:160px">
								<%=new BLL.JXJH.private_JXJH().SetValue("CDDW",USER_OPTDW)%></select>
							�γ�����&nbsp;<input  name="txt_kcmc" size="20" maxlength=20 >
						</td>
						<td width="6%"  align="right">
							<input type="button" value="����" name="seach" class=button onclick="SeachLesson()">    
						</td>      
					</tr>
				</table>     
			</td></tr>

			<!--¼������-->
			<tr >
				<td width=45% align="center" height="20px" valign="bottom"  nowrap>
					<DIV id=theKCHead style='width:98%;align:center;'></DIV>
				</td>  
				<td width=55% align="center" height="145px" nowrap rowspan=2>
					
					<table width="100%"  height="145" border=0 cellspacing="0" cellpadding="0" align="center"> 
						<tr height="21">
							<td width="100%" align=left colspan=3>
								&nbsp;ʵ����Ŀ����&nbsp;<input type="text" name="syxmmc" style="width:275px;background-color:#e8e8e8;"  readonly>
							</td>
						</tr>  
						<tr height="21">
							<td width="45%" nowrap align=left >
								&nbsp;ʵ����Ŀ����&nbsp;<input type="text" name="user_dm" style="width:75px;background-color:#e8e8e8;"  readonly></td>
							<td width="25%" nowrap align=left>
								ʵ��ʱ��&nbsp;<input type="text" name="t_ycs" style="width:33px;background-color:#e8e8e8;"  readonly></td>
							<td width="30%" align=left >
								ʵ����Ŀ���&nbsp;<input type="text" name="xh" style="width:26px" maxlength="3"  ></td>
						</tr>
						<tr >
							<td width=100% colspan="3" height="21">
								<table width="100%" border=0 cellspacing="0" cellpadding="0" ><tr>
								<td width="16%" >&nbsp;��ʾ<input name="type1"  type="checkbox" value="1"></td>
								<td width="16%" >��֤<input name="type2"   type="checkbox"  value="1"></td>
								<td width="16%" >�ۺ�<input name="type3"   type="checkbox"  value="1"></td>
								<td width="16%" >���<input name="type4"   type="checkbox"  value="1"></td>
								<td width="20%" >����ѵ��<input name="type5"  type="checkbox"  value="1"></td>
								<td width="16%" >���<input name="type6"  type="checkbox"   value="1"></td>
								</tr></table>
							</td>
						</tr>
						<tr >
							<td width="100%" colspan="3" >
								<table width="100%" border=0 cellspacing="0" cellpadding="0" ><tr>
									<td width="23%" height="20" nowrap>&nbsp;��&nbsp;��&nbsp;Ҫ&nbsp;��</td>
									<td width="77%"  valign=bottom>
										<textarea  name="memo" cols="36" maxlength=100 style="overflow:auto;height:75px"></textarea>
									</td>
								</tr></table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td width=45% align="center" height="125px" nowrap>
					<iframe name="frmSYKC" src="ADD_KCSYXM_SYKC.aspx" width=98% height=100% frameborder=1></iframe>
				</td>  
			</tr>
			
			<tr><td align="center" colspan="2" height="24px" nowrap>
				<table width="99%" border=0 cellspacing="0" cellpadding="0" ><tr>
					<td width="13%" align="left" id="kctd">�γ�������0</td>
					<td width="72%" align="left" id="syxmtd">�γ̡�ʵ����Ŀ����0</td>
					<td width="15%" align="right">
						<input type="button" value="����" name="savebut" class=button disabled onclick="ChkValue()">    
						<input type="button" value="ȡ��" name="delbut" class=button disabled onclick="DelValue()" >  
					</td>
				</tr></table>
				  
			</td></tr> 
			
			<tr><td valign="bottom" align="center" colspan="2" height="3%">
				<DIV id=theHead style='display:none_;width:99%;align:center;'></DIV>
			</td></tr> 

			<tr height="60%" ><td valign="top" align="center" height="63%" colspan="2">
				<iframe name=frmRpt id="frmRpt" src="ADD_KCSYXM_rpt.aspx" width=99% height=99% frameborder=1></iframe>
			</td></tr> 
		</table>
		<input type="hidden" name="kcdm" >
		<input type="hidden" name="syxmdm" >
		</Form>
	</body>
</html>