<%@ Page language="c#" Codebehind="ADD_SYXM.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.JXJH.ADD_SYXM" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 

<html>
  <head>
    <title>�ύʵ����Ŀ��Ϣ</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
    <LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
	<script language="JavaScript" src="../include/scr/ind_HTML_hr.js"></script>
	<script language="JavaScript">
		function ChkValue(){
			var str,vID;
			var theForm=window.form1;
			vStr=theForm.syxmxs.value;
			if(theForm.user_dm.value==""){
			 alert('ʵ����Ŀ���벻��Ϊ�գ�');theForm.user_dm.focus();return false;
			}else if(vStr=='')
			{ alert('ʵ����Ŀʱ������Ϊ�գ�');theForm.syxmxs.focus();return false;}
			else if(isNaN(vStr))
			{ alert('ʵ����Ŀʱ������Ϊ���֣�');theForm.syxmxs.select();return false;}
			else if(parseInt(vStr)<=0)
			{ alert('ʵ����Ŀʱ���������0��');theForm.syxmxs.select();return false;}
			else if(theForm.syxmmc.value=="")
			{ alert('ʵ����Ŀ���Ʋ���Ϊ�գ�');theForm.syxmmc.focus();return false;}
			
			if (confirm('�Ƿ񱣴棿')){
				theForm.action='ADD_SYXM_Rpt.aspx?flag=add';
				theForm.method='post';
				theForm.submit();
				return true;
			}else{
				return false;
			}
		}

		function TestValue(theObj)
		{
			var i,bReg,vStr=theObj.value;
			bReg=isNaN(vStr); //bReg=vStr.match(/(\d)+/)!=null;
			if(vStr!='') if(bReg){ //alert('����Ϊ���֣�');
			theObj.value=vStr.substring(0,vStr.length-1);
			theObj.focus();return false;}
		}
		
		function addsyxm(){
			var divColl = window.form1.all.tags("input");		
			for (i=0;i<divColl.length; i++){    
				whichEl = divColl(i); 
				if(whichEl.type=='text'||whichEl.type=='hidden'){
					vChar=whichEl.val;
					if(typeof(vChar)=="undefined")vChar='';
					whichEl.value=vChar;
				}
			}
			window.form1.all.user_dm.focus();
			window.form1.all.tags("textarea")(0).value='';
			window.frmRpt.location.href='ADD_SYXM_Rpt.aspx';
		}

		function delsyxm(){
			if (confirm('�Ƿ�ɾ����')){
				window.frmRpt.location.href='ADD_SYXM_Rpt.aspx?flag=del&syxmdm='+form1.syxmdm.value;
				return true;
			}
			else{return false;}
		} 
	</script>
  </head>
  <body oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false leftmargin="0" topmargin="0" >
  <form name="form1" method="post" action="ADD_SYXM_Rpt.aspx" target="frmRpt" >
  <table width="665" border=0 cellspacing="0" cellpadding="0" height="100%" align="center">
	<tr><td valign="top" align="center">
		<table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
			<tr><td valign="bottom" align="center"><b>�ύʵ����Ŀ��Ϣ</b></td></tr>
		<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script></td></tr>
		</table>   
	</td></tr>
	
	<!--¼������-->
	<tr ><td valign="top" align="center" height="104px">
		
		<table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="104px"> 
		<tr height="26">
			<td width="12%" >ʵ����Ŀ����</td>
			<td width="13%" ><input type="text" size=10 name="user_dm" maxlength="10"><input type="hidden" name="syxmdm" ></td>
			<td width="12%" align="center" >ʵ����Ŀʱ��</td>
			<td width="8%" ><input type="text" name="syxmxs" size="5" value='0'  onkeyup=TestValue(this) maxlength=4 ></td>
			<td width="12%" align="center" >ʵ����Ŀ����</td>
			<td width="43%" ><input type="text" name="syxmmc" size="39" value="" maxlength=50 ></td>
		</tr>
		<tr height="78" >
			<td colspan="6">	
				<table width="100%" height="100%" border=0 cellspacing="0" cellpadding="0" align="center" > 
				<tr>
					<td width="12%" rowspan=2 align="center" >��&nbsp;��&nbsp;��&nbsp;��</td>
					<td width="88%" align=justify >
						<textarea rows="5" name="memo" cols="80" maxlength=100  style="overflow:auto"></textarea>
					</td>
				</tr>
				</table>
			</td>
		</tr>
		</table>
	</td></tr>
	
	<tr><td valign="top" align="center" height="5%">
		<table width="99%" border=0 cellspacing="0" cellpadding="0" align="center" height="26"><tr>
			<td width="60%" valign="center" id=theCount>&nbsp;</td>
			<td width="40%" valign="center" align="right">
			<input type="button"  value="����" name="addbut" class=button onclick="addsyxm()">  
			<input type="button"  value="����" name="button" class=button onclick="return ChkValue()" >
			<input type="button"  value="ɾ��" name="delbut" class=button disabled onclick='delsyxm()'></tr>  
		</table>
	</td></tr>
	
	<tr><td valign="bottom" align="center" height="3%">
		<DIV id=theHead style='display: none_;width:99%;'></DIV>
	</td></tr> 

	<tr><td valign="top" align="center" height="100%">
		<iframe name=frmRpt src="ADD_SYXM_Rpt.aspx" width=99% height=99% frameborder=1></iframe>
	</td></tr> 
	</table>
	</form>
	</body>
</html>