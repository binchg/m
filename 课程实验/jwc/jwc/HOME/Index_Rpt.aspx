<%@ Page language="c#" Codebehind="Index_Rpt.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.HOME.Index_Rpt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Index_Rpt</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel="stylesheet" href="../_style/styles_EditText.css" type="text/css">

		<script language="JavaScript">
		<!--
			function SelSubmit(thisID)
			{
				var id,cs,lx,dsn;
				id=thisID.value;
				lx=document.all.hlx.value;
				if(id=="����"){parent.main.location.href='index_rpt.aspx?type=add&id='+lx;}
			}
			
			function getval(){
				var i,R,str,vZL,dsn;
				dsn=document.all.delsn.value;
				str='';
				try{R=document.all.count.value;}catch(e){R=0;}
				for(i=1;i<=R;i++)
				{ 
   					if(eval("document.all.Chk"+i+".checked")==true)
					{
						if(str==''){
							str=eval("document.all.Chk"+i+".value");}
						else{
							str=str+';'+eval("document.all.Chk"+i+".value");}
					}  
				}
				if(str==''){alert("��ѡ��Ҫɾ���ļ�¼��"); return false;}
				else{
					if(confirm('�Ƿ�ɾ��ѡ����¼��')){
					parent.main.location.href='Index_Rpt.aspx?type=del&ChkDel='+str+'&id='+document.all.hlx.value;}
				}
			}

			function ChkALL(theObj){
				var i,iR;
				//window.TheTable.rows.length-1
				try{iR=document.all.count.value;}catch(err){iR=0;}
				if(iR<1) return false;
				if(iR>1000) window.status="���ڽ���ȫѡ���������Ե�Ƭ��";
				if(theObj.title=='ȫѡ'){
					theObj.title='����ȫѡ';
					theObj.src='../images/button/rc/ChkAll_2.gif';
					for(i=1;i<=iR;i++) eval("document.all.Chk"+i+".checked=true"); 
				}else{
					theObj.title='ȫѡ';
					theObj.src='../images/button/rc/ChkAll_1.gif';
					for (i=1;i<=iR;i++) eval("document.all.Chk"+i+".checked=false");  
				}
				window.status=""
			}
			
			function ChkContent(){
				getIframeData();
				if(document.all.HtmlTextCode.value==""){
					alert('��¼�����ݣ�');
					document.all.HtmlEdit.focus();
					 return false;
				 }
				 else{
					return true;
				 }
			}
			//-->
		</script>
	</HEAD>
	<body  leftMargin="0" topMargin="0">
	<form id="Form1" method="post" runat="server" onsubmit="return ChkContent()">
			<asp:Literal ID="pageRpt" Runat="server"></asp:Literal>
	</form>
	</body>
</HTML>
