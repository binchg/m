<%@ Page language="c#" Codebehind="Home_GLGD_Rpt.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.HOME.Home_GLGD_Rpt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 

<html>
  <head>
    <title>Home_GLGD_Rpt</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
    <link rel="stylesheet" href="../_style/styles_EditText.css" type="text/css">
    <script language="javascript">
		function getadd(){
			try{
				var url='./Home_GLGD_Rpt.aspx?type=add';
					document.location.href=url;
			}catch(e){alert(e);}
		}
		function ChkALL(theObj){
		try{
			var i,iR;
			//window.TheTable.rows.length-1
			try{iR=document.all.count.value;}catch(err){iR=0;}
			if(iR<1) return false;
			if(iR>1000) window.status="���ڽ���ȫѡ���������Ե�Ƭ��";
			if(theObj.title=='ȫѡ'){
				theObj.title='����ȫѡ';
				theObj.src='../images/button/rc/ChkAll_2.gif';
				for(i=1;i<=iR;i++){
					if(eval("document.all.Chk"+i+".disabled")==false)
						eval("document.all.Chk"+i+".checked=true"); 
				}
			}else{
				theObj.title='ȫѡ';
				theObj.src='../images/button/rc/ChkAll_1.gif';
				for (i=1;i<=iR;i++){
				 if(eval("document.all.Chk"+i+".disabled")==false)
				  eval("document.all.Chk"+i+".checked=false");
				}  
			}
			window.status=""
			}catch(e){alert(e);}
		}
		function getval(){
		 try{	
			var i,R,str='';
			try{R=document.all.count.value;}catch(e){R=0;}
			for(i=1;i<=R;i++)
			{ 
				if(eval("document.all.Chk"+i+".disabled")==false){
   					if(eval("document.all.Chk"+i+".checked")==true)
					{
					 if(str=='')
						{str=eval("document.all.Chk"+i+".value");}
					 else
						{str=str+';'+eval("document.all.Chk"+i+".value");}
					}  
				}
			}
			if(str==''){alert("��ѡ��Ҫɾ���ļ�¼��"); return false;}
			else{
				if(confirm('�Ƿ�ɾ��ѡ����¼��')){
					var url='./Home_GLGD_Rpt.aspx?type=del&ChkDel='+str;
					document.location.href=url;
				}
			}
		  }catch(e){alert(e);}
		}
		function ChkSave(){
			try{
				getIframeData();
				if(document.all._title.value==''){
					alert('��¼����⣡');
					document.all._title.focus();
				}else if(document.all.HtmlTextCode.value==''){
					alert('��¼�����ݣ�');
					document.all.HtmlEdit.focus();
				}else {
					window.Form1.action="./Home_GLGD_Rpt.aspx?type=save";
					window.Form1.method="post";
					window.Form1.submit();
				}
			}catch(e){alert(e);}
		}
		function ChkReturn(){
			try{
					document.location.href="./Home_GLGD_Rpt.aspx";
			}catch(e){alert(e);}
		}
    </script>
  </head>
  <body topmargin="0" leftmargin="0">
    <form id="Form1" method="post" runat="server">
		<asp:Panel ID="pageRpt" Runat="server"></asp:Panel>
     </form>	
  </body>
</html>

					