<%@ Page %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 

<html>
  <head>
    <title>Home_Links</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
	<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
	<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
	<script language="javascript">
	function clearText(){
		try{
			window.Form1.reset();
			var PivID=window.RptFrm.document.all.PSTemp.ValueID;
			var PivColor=window.RptFrm.document.all.PSTemp.PivColor;
			var PivFontColor=window.RptFrm.document.all.PSTemp.PivFontColor;
			if(PivID!=""){
			eval("window.RptFrm.document.all."+PivID+".style.backgroundColor='"+PivColor+"';");
			eval("window.RptFrm.document.all."+PivID+".style.color='"+PivFontColor+"';");
			}
			window.RptFrm.document.all.PSTemp.PivColor="Noting";
			window.RptFrm.document.all.PSTemp.PivFontColor="Noting";
			window.RptFrm.document.all.PSTemp.ValueID="";
		}catch(e){alert(e);}
	}
	function subAdd(){
		try{
			clearText();
			document.all.linkName.focus();
		}catch(e){alert(e);}
	}
	function subSave(){
		try{
			var hidcode=document.all.hidcode.value;
			if(document.all.linkName.value==""){
				alert("��¼�����ƣ�");
				document.all.linkName.focus();
			}else if(document.all.linkAddr.value==""){
				alert("��¼����ַ��");
				document.all.linkAddr.focus();
			}else{
				var url="?type=addSave";
				if(hidcode!="")
					url="?type=editSave"
				window.Form1.action="./Home_Links_Rpt.aspx"+url;
				window.Form1.method="post";
				window.Form1.submit();
			}
		}catch(e){alert(e);}
	}
	function subDel(){
		try{
			if(document.all.hidcode.value!=""){
				if(confirm("�Ƿ�ɾ��ѡ����¼��")){
					window.Form1.action="./Home_Links_Rpt.aspx?type=del";
					window.Form1.method="post";
					window.Form1.submit();
				}
			}
		}catch(e){alert(e);}
	}
    </script>
	</head>
	<body onselectstart=window.event.returnValue=false  oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false topmargin="0" leftmargin="0">		
	<form id="Form1" name="Form1" action="./Home_Links_Rpt.aspx" method="post" target="RptFrm">
		<table align="center" width="660px" border=0 cellspacing="0" cellpadding="0" height="100%">
		<tr><td valign="top" align="center">
			<table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
				<tr><td valign="bottom" align="center"><b>��������</b></td></tr>
			<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
			</td></tr>
			</table>   
		</td></tr>
		<tr><td valign="middle" align="center">
			<table align="center" width="660px" border="0" cellpadding="0" cellpadding="0" bordercolorlight="#75A7AE" bordercolordark="#FFFFFF">
			<tr valign="middle" align="left">
				<td width="39%">����&nbsp;<input type="text" name="linkName" value="" style="width:220px;"></td>
				<td width="40%">��ַ&nbsp;<input type="text" name="linkAddr" value="" style="width:220px;">&nbsp;</td>
				<td width="21%"  align=right>
					<input type="button" name="add" value="����" class="but20" onclick="subAdd()">
					<input type="button" name="save" value="����" class="but20" onclick="subSave()">
					<input type="button" name="del" value="ɾ��" class="but20" onclick="subDel()">
					<input type="hidden" name="hidcode">
				</td>
			</table>
		</td></tr>
		<tr><td valign="top" align="center" height="5%"><br>
		<DIV id=theHead style='display: none_;width:99%;'></DIV>
		</td></tr> 

		<tr><td valign="top" align="center" height="99%">
		<iframe name=RptFrm src="./Home_Links_Rpt.aspx" style="width:99%;height:99%;" frameborder="0"></iframe>
		</td></tr> 

		</table>	
	</form>
	</body>
</html>