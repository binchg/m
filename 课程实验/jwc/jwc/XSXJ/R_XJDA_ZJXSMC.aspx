<%@ Page language="c#" Codebehind="R_XJDA_ZJXSMC.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.XSXJ.R_XJDA_ZJXSMC" %>
<%@ Import NameSpace="BLL.XSXJ"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>�ڼ�ѧ������</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
		<script language="javascript">
			function ShowListValue(theID,vP)
			{
				var vNJ,vYX,vZY,vXZBJ,theURL;
				try{
					if(vP=="NJYXZY"){
						vYX=document.all.Sel_YX.value;
						vNJ=document.all.Sel_NJ.value;
						theURL="./Private/List_"+vP+".aspx?yx="+vYX+"&nj="+vNJ;
					}else if(vP=="ZYBJ"){
						vZY=document.all.Sel_ZY.value;
						vNJ=document.all.Sel_NJ.value;
						theURL="./Private/List_"+vP+".aspx?zy="+vZY+"&nj="+vNJ;
					}else if(vP=="XNXQ_NJ"){
						vXNXQ=document.all.Sel_XNXQ.value;
						theURL="./Private/List_"+vP+".aspx?xnxq="+vXNXQ+"&str=shownj";
					}
					window.frm.location.href=theURL;
				}
				catch(e){}
			}
			
			function ChkVal()
			{
				var vNJ,vYX,vZY,vBJ
				if(document.all.txtXS.value=="" || document.all.txtXS.value=="Nothing")
				{
					try{
						vNJ=document.all.Sel_NJ.value;
						vYX=document.all.Sel_YX.value;
						vZY=document.all.Sel_ZY.value;
						vBJ=document.all.Sel_BJ.value;
						if(vNJ==""||vNJ=="Nothing"){alert('��ѡ���꼶��');return false;}
						if(vYX==""||vYX=="Nothing"){alert('��ѡ��Ժ(ϵ)/����');return false;}
						if(vZY==""||vZY=="Nothing"){alert('��ѡ��רҵ��');return false;}
						if(vBJ==""||vBJ=="Nothing"){alert('��ѡ���༶��');return false;}
						return true;
					}
					catch(e){}				
				}
			}
		</script>
		<LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body onselectstart=window.event.returnValue=false oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false 
	 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<form name="form1" action="R_XJDA_ZJXSMC_Rpt.aspx" target="frmRpt" method="post" onsubmit='return ChkVal()'>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
				<tr>
					<td vAlign="top" align="center" height="26">
						<table WIDTH="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
							<tr>
								<td vAlign="bottom" align="center"><b>�ڼ�ѧ������</b></td>
							</tr>
							<tr>
								<td vAlign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td height="56">
						<table height="100%" cellSpacing="0" cellPadding="0" width="660" align="center" border="0">
							<tr>
								<td align="left" colspan=3  height="28px"><%=(new  XSXJ_Rpt().SetValue("NJYXZYBJ",XNXQ,USER_OPTYX))%></td>
							</tr>
							<tr>
								<td width="58%" align=left height="28px">ѧ��ѧ��&nbsp;<select name="Sel_XNXQ" style="WIDTH:165px" onchange=ShowListValue(this,"XNXQ_NJ")><%=(new XSXJ_Rpt().GetXNXQInfo())%></select>
								                                         �������&nbsp;<select name="Sel_PYCC" style="WIDTH:100px"><%=(new XSXJ_Rpt().GetPYCCInfo())%></select></td>
								<td width="36%" align=left height="28px">
									&nbsp;ѧ��/����&nbsp;<input type="text" name="txtXS" maxlength=20 size=15 >
								</td>
								<td align="right" width="6%" nowrap  height="28px"><input class="button" type="submit" name="submit" value="����"></td>
							</tr>
							
						</table>
					</td>
				</tr>
				<tr>
					<td valign="bottom" align="center" height="100%">
						<iframe name="frmRpt" src="R_XJDA_ZJXSMC_Rpt.aspx" width="100%" height="98%" frameborder="0"></iframe>
						<iframe name=frm  style='display:none;'></iframe>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
