<%@ Page language="c#" Codebehind="ImgMag_main.aspx.cs" AutoEventWireup="false" Inherits="ImgMag.ImgMag_main" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>ImgMag_main</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link  type="text/css" rel="stylesheet" href="../../../_style/Styles_Qry.css">
		<script type="text/javascript">
			function upCheck()
			{
				var fileName="";
				fileName=document.getElementById("File1").value;
				if(fileName=="")
				{
					alert('��ѡ��Ҫ�ϴ���ͼƬ��');
					return false;		  
				}
				else
				{
					var typeName="";
					typeName=fileName.substring(fileName.lastIndexOf('.')+1,fileName.length);
					typeName=typeName.toLowerCase();
					if(typeName=='jpg'||typeName=='gif'||typeName=='bmp'||typeName=='tif'||typeName=='jpeg')
					{
						return true;
					}
					else
					{
						alert("��ѡ�����¸�ʽͼƬ��jpg,gif,bmp,tif,jpeg��");
						return false;
					}
				}
				return true;
			}
		</script>
		<style>
			td { font-family:"����"; font-size:12px; color:#000000;}
		</style>
	</HEAD>
	<body leftMargin="0" topMargin="0" rightMargin="0" scroll=no >
		<form id="Form1" method="post" runat="server">
			<TABLE style="WIDTH:530px;HEIGHT:99%" cellSpacing="1" cellPadding="1" border="0" align="center" bgcolor="#E5E3DF">
				<TR ><TD style="HEIGHT:20px">&nbsp;���ϴ�ͼƬ</TD></TR>
				<TR><TD height="90%" align=center>
						<iframe id="ifImg" src="ImgMag_Rpt.aspx" width="99%" height="100%" frameborder="0" scrolling=auto></iframe>
					</TD>
				</TR>
				<TR ><TD style="HEIGHT:30px" >&nbsp;<INPUT id="File1" style="WIDTH:365px;HEIGHT:22px" type="file" size="30" name="File1" runat="server">
						<asp:Button id="btnUp" runat="server" Text="�ϴ�"  style="width:70px;height:22px;"></asp:Button>
						<input type=button value="����" style="width:70px;height:22px;" onclick="window.close();"></TD>
				</TR>
				<TR ><TD style="HEIGHT:20px">&nbsp;����˵�����ӱ����ϴ�������ͼƬ�����ڣ����ϴ�ͼƬ��Ԥ������˫��ѡ����ӦͼƬ���ɡ�</TD></TR>
			</TABLE>
		</form>
	</body>
</HTML>
