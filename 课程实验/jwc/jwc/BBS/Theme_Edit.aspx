<%@ Page language="c#" Codebehind="Theme_Edit.aspx.cs" AutoEventWireup="false" Inherits="JWNET.BBS.Theme_Edit" %>
<script language="JavaScript" type="text/JavaScript">
<!--
function checkSubmit()
{
if ((document.frmWrite.Title.value)=="")
{
window.alert ('������д���⣡');
document.frmWrite.Title.select();
document.frmWrite.Title.focus();
return false;
}
else if ((document.frmWrite.content.value)=="")
{
window.alert ('������д���ݣ�');
document.frmWrite.content.select();
document.frmWrite.content.focus();
return false;
}
else if(document.frmWrite.Title.value.length>100){
window.alert ('���ⲻҪд��̫������');
document.frmWrite.Title.select();
document.frmWrite.Title.focus();
return false;
}
else if(document.frmWrite.content.value.length>500){
window.alert ('���ݲ�Ҫд��̫�డ��');
document.frmWrite.content.select();
document.frmWrite.content.focus();
return false;
}
else
{
return true;
}
}
//-->
</script>
<script language='JavaScript' src='returnfunction.js'></script>
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
<html>
	<head>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>
			<%
		if (iParentId=="-1") 
		{
			Response.Output.Write (strDis + " - " + sAreaName);
		}
		else
		{
			Response.Output.Write (strDis + " - " + sThemeTitle);
		}
		%>
		</title>
		<link href="../_style/Styles_Qry.css" rel="stylesheet" type="text/css">
	</head>
	<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=auto>
		<center>
			<table width="100%" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
				<tr><td valign="bottom" align="center"><b><font color=#000000> �༭����	</font></b></td></tr>
				<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
			</td></tr>
			
			</table> 
			<form method="POST" action="Theme_Edit.aspx" name="frmWrite" id="frmWrite" onSubmit='return checkSubmit();'>
			<table border="0" width="600" cellspacing="1" bgcolor="#89bfa7">
				<tr class="T"><td width="21%" align="right" height=20 colspan=2><b><font COLOR="#000000"></font></b></td></tr>
					<tr> 
		
						<td width="21%" bgcolor="#f4fef9" height="25" align="right">����</td>
						<td width="79%" bgcolor="#FFFFFF" height="25">
							<input type="text" name="Title" size="67" value="<%=sThemeTitle%>" style="border: 1 solid #000000"></td>
					</tr>
					<tr>
						<td width="21%" bgcolor="#f4fef9" height="25" align="right">������</td>
						<td bgcolor="#FFFFFF" height="25"><%=sAreaName%>
						</td>
					</tr>
					<td width="21%" bgcolor="#f4fef9" height="25" align="right">������</td>
					<td bgcolor="#FFFFFF" height="25">
						<%
						if (uid=="") 
						{
							Response.Output.Write ("<img src='images/question.gif'>");
						}
						else
						{
							Response.Output.Write (realname);
						}
						%>
						<input type="hidden" name="Area" value="<%=iArea%>"> <input type="hidden" name="ParentId" value="<%=iParentId%>">
						<input type="hidden" name="tid" value="<%=iThemeId%>">
					</td>
					</tr>
					<tr>
						<td width="21%" bgcolor="#f4fef9" height="25" align="right">����</td>
						<td width="79%" bgcolor="#FFFFFF" height="25">
							&nbsp;
							<table border="0" width="480" cellspacing="0" cellpadding="0">
								<tr>
									<td width="25%">
										<input type="radio" name="face" value="0" checked>(��)</td>
									<td width="25%"><input type="radio" name="face" value="1"> <img border="0" src="images/titleicon/f001.gif">
									</td>
									<td width="25%"><input type="radio" name="face" value="2"> <img border="0" src="images/titleicon/f002.gif">
									</td>
									<td width="25%"><input type="radio" name="face" value="3"> <img border="0" src="images/titleicon/f003.gif">
									</td>
								</tr>
								<tr>
									<td width="25%"><input type="radio" name="face" value="4"> <img border="0" src="images/titleicon/f004.gif"></td>
									<td width="25%"><input type="radio" name="face" value="5"> <img border="0" src="images/titleicon/f005.gif"></td>
									<td width="25%"><input type="radio" name="face" value="6"> <img border="0" src="images/titleicon/f006.gif"></td>
									<td width="25%"><input type="radio" name="face" value="7"> <img border="0" src="images/titleicon/f007.gif"></td>
								</tr>
								<tr>
									<td width="25%"><input type="radio" name="face" value="8"> <img border="0" src="images/titleicon/f008.gif"></td>
									<td width="25%"><input type="radio" name="face" value="9"> <img border="0" src="images/titleicon/f009.gif"></td>
									<td width="25%"><input type="radio" name="face" value="10"> <img border="0" src="images/titleicon/f010.gif"></td>
									<td width="25%"><input type="radio" name="face" value="11"> <img border="0" src="images/titleicon/f011.gif"></td>
								</tr>
								<tr>
									<td width="25%"><input type="radio" name="face" value="12"> <img border="0" src="images/titleicon/f012.gif"></td>
									<td width="25%"><input type="radio" name="face" value="13"> <img border="0" src="images/titleicon/f013.gif"></td>
									<td width="25%"><input type="radio" name="face" value="14"> <img border="0" src="images/titleicon/f014.gif"></td>
									<td width="25%"><input type="radio" name="face" value="15"> <img border="0" src="images/titleicon/f015.gif"></td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td width="21%" bgcolor="#f4fef9" height="25" align="right" valign="top"><br>
							����</td>
						<td width="79%" bgcolor="#FFFFFF" height="25">
							<textarea rows="14" name="content" id="content" cols="66" style="border: 1 solid #000000;overflow:auto"><%=sThemeContent%></textarea>
						</td>
					</tr>
					<tr>
						<td width="21%" bgcolor="#f4fef9" height="35" align="right">����</td>
						<td width="79%" bgcolor="#FFFFFF" height="35">&nbsp; <a href="javascript:void(0);" onclick="Insert('���������ӵ�����URL��','[LINK]','[/LINK]');">
								��������</a> | <a href="javascript:void(0);" onclick="Insert('������ͼƬ������URL��','[IMG]','[/IMG]');">
								��ͼƬ</a> | <a href="javascript:void(0);" onclick="Insert('������ý���ļ�������URL��','[EMB]','[/EMB]');">
								����ý���ļ�</a>
						</td>
					</tr>
					<tr>
						<td width="21%" bgcolor="#f4fef9" height="85" align="right">����</td>
						<td width="79%" bgcolor="#FFFFFF" height="85" valign="bottom">
							<table border="0" width="490" bgcolor="#E0E0E0" cellspacing="1">
		<%
			int x=0;
			int y=0;
			int iNum=0;
				
			for (x=1;x<= 2;x++)
			{
				Response.Output.Write ("<tr>");
				for (y=1;y<=14;y++)
				{
					iNum=iNum+1;
						
		%>
								<td bgcolor="#FFFFFF">
									<a href="javascript:void(0);" onclick="InsertFace('<%=iNum%>')"><img border="0" src="images/face/<%=iNum%>.gif" alt="<%=iNum%>" width="26" height="26">
									</a>
								</td>
		<%
				}
				Response.Output.Write ("</tr>");
			}	
		%>
							</table>
						</td>
					</tr>
				</table>
	<%
	if (bLock=="1") 
	{
		Response.Output.Write ("<img src='images/notice.gif'>  ");
		Response.Output.Write ("�����ⲻ�ܻظ���");
	}
	else
	{
		Response.Output.Write ("<input type='submit' value='����' name='CmdSubmit' class=but20>");
	}
	%>
					&nbsp;&nbsp;<input type='submit' value='����' name='CmdSubmit' class="but20" onClick="history.go(-1);return false;">
				</p>
			</form>
		</center>
	</body>
</html>
<script language="javascript">
function Insert(sPrompt,sPrefix,sPostfix)
{
	var sURL   = prompt(sPrompt, "");
	if (sURL)
	{
		var sTmp;
		sTmp=sPrefix + sURL + sPostfix;
		document.frmWrite.content.value+=sTmp;
		document.frmWrite.content.focus();
	}
	return;
}

function InsertFace(inum)
{
	var sTmp;
	sTmp='[FACE]' + inum + '[/FACE]';
	document.frmWrite.content.value+=sTmp;
	document.frmWrite.content.focus();
	return;
}
</script>
