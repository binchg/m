<%@ Page language="c#" Codebehind="KKJH_KKBG_SetZzxsFrame.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.JXJH.KKJH_KKBG_SetZzxsFrame" %>
<HTML>
	<HEAD>
		<title>
			<asp:Literal ID="titleStr" Text="" Runat="server" /></title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<LINK href="../_style/styles_rpt.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../include/Scr/ind_HTML_hr.js"></script>
		<script language="javascript">
			
		 function closeFunction(){
			try{   		
				window.close();	 
			}catch(e){}
		  }
		  
		  function TrueFunction()
		  {	
			try{	    
				var i=document.all.pj.value;				
				var kclb1=document.all.sel_kclb1.value;
				var kclb2=document.all.sel_kclb2.value;
				var khfs=document.all.sel_khfs.value;
				var zzxs=document.all.txtZxs.value;
				
				if(document.all.sel_kclb1.value=="")
				{	alert("��ѡ���γ����һ��");	
					document.all.sel_kclb1.focus();	
					}	
				else if(document.all.sel_kclb2.value=="")
				{
					alert("��ѡ���γ�������");
					document.all.sel_kclb2.focus();	
					}				
				else if(document.all.sel_khfs.value=="")
				{
					alert("��ѡ�����˷�ʽ��");
					document.all.sel_khfs.focus();	
				}
				else if(isNaN(zzxs))
				{ 
					alert('��ѧʱ��Ϊ���֣�');
					document.all.txtZxs.focus();}
				else if(zzxs<=0)
				{ 
					alert('��ѧʱ��Ϊ����0��');
					document.all.txtZxs.focus();}
				else if(zzxs>50)
				{ 
					alert('��ѧʱ��ΪС��50��');
					document.all.txtZxs.focus();
				}
				else if(document.all.txtZxs.value==".0")
				{
					alert("��¼����ѧʱ��");
					document.all.txtZxs.focus();		
				}			
				else{	
					try{
						if(i==0)
							opener.document.all.checkBoxId[i].checked=true;
						else	
						    opener.document.all.checkBoxId[i-1].checked=true; 
					}catch(e){
						opener.document.all.checkBoxId.checked=true; 
					}	
					eval("opener.document.all.hidKCLB1"+i+".value=kclb1");				
					eval("opener.document.all.hidKCLB2"+i+".value=kclb2");
					eval("opener.document.all.hidKHFS"+i+".value=khfs");
					eval("opener.document.all.hidZXS"+i+".value=zzxs");										
					opener.AddNewLessonInfo(i);//����SET_BGSQ_NewAddRpt_Rptҳ����¼�			
					window.close();		
				}
			}catch(e){alert(e);}	
		  }
		</script>
	</HEAD>
	<body onselectstart=window.event.returnValue=false oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false 
	leftmargin="0" topmargin="5" marginwidth="0" marginheight="0">
		<form id="Form1" method="post" runat="server">
		<table width="99%" height="100%" cellSpacing="0" cellPadding="0" align="center" border="0">
			<tr><td height="26px"><fieldset>
				<table width="100%" height="25px" cellSpacing="0" cellPadding="0" align="center" border="0">
					<tr>
						<td align="left">�γ̣�<%=vKCMC%></td>
						<td align="right">ѧ�֣�<%=Request.QueryString["xf"].ToString().Trim()%></td>
					</tr>
				</table>
			</fieldset></td></tr>
			
			<tr><td height="52px"><fieldset>
				<table width="100%" height="52px" cellSpacing="0" cellPadding="0" align="center" border="0">
					<tr>
						<td align="left">�γ����һ&nbsp;<select style="WIDTH:100px" name="sel_kclb1"><%=mydata.WRT_TheJHKCLB1Info()%></select></td>
						<td align="right">�γ�����&nbsp;<select style="WIDTH:100px" name="sel_kclb2"><%=mydata.WRT_TheJHKCLB2Info()%></select></td>
					</tr>
					<tr>
						<td align="left">���˷�ʽ&nbsp;&nbsp;&nbsp;<select style="WIDTH:100px" name="sel_khfs"><%=mydata.WRT_TheKHFS()%></select></td>
						<td align="left">��&nbsp;&nbsp;ѧ&nbsp;&nbsp;ʱ&nbsp;<input style="WIDTH:60px;TEXT-ALIGN:right" value=".0" name="txtZxs"></td>
					</tr>
				</table>
			</fieldset></td></tr>
			
			<tr><td height="26px">
				<table width="100%" height="26px" cellSpacing="0" cellPadding="0" align="center" border="0">
					<tr>
						<td width=100% align="right">
							<input type="hidden" name="pj" style="width: 100px" value=<%=vPJ%>> 
							<input class="but20" onclick="TrueFunction()" type="button" value="ȷ��" name="buttomBtn">
							<input class="but20" onclick="closeFunction()" type="button" value="����" name="Btn"></td>
					</tr>
				</table></td></tr>
		</table>
		</form>
	</body>
</HTML>
