<%@ Page %>
<html>
<head>
<title>�һ�����</title>
<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
<meta content="C#" name="CODE_LANGUAGE">
<meta content="JavaScript" name="vs_defaultClientScript">
<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
<link href="../_style/styles_home.css" rel="stylesheet" type="text/css">
<script language="JavaScript">
function chkvalid(){
 	if (document.form.user.value == "") 
    	{ alert('�û��ʺŲ���Ϊ�գ�');document.form.user.focus();return false }
	
 	str=document.form.email.value;if ( str== "")
	{ alert('�������䲻��Ϊ�գ�');document.form.email.focus();return false}
	  
	var bflag=true;
	if (str.indexOf("'")!=-1) bflag=false;	
	if (str.indexOf('.')==-1) bflag=false;	
	if (str.indexOf('@')==-1) bflag=false;
	else if(str.charAt(0)=='@') bflag=false;
	
 	if (bflag==false){
 	alert('����д��ȷ�������ַ��');
	document.form.email.select();
 	return bflag;}

	//window.returnValue = str;window.close();return false;
}
</script>
</head>

<body oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false topmargin="0" leftmargin="0">
<form name="form1" onsubmit="return chkvalid()">
<table width="260" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#00CCFF">
  <tr valign="top">
        <td width="260" height="150" valign="top" bgcolor="#FFFFFF"> 
          <table width="96%" height="150" border=0 align="center" cellpadding="0" cellspacing="0">
            <tr> 
              <td width="71">�û��ʺţ�</td>
              <td width="175"><input type="text" name="user" id=user size=25 maxlength=25></td>
            </tr>
            <tr> 
              <td>�������䣺</td>
              <td><input type="text" name="email" id='email' size=25 maxlength=25></td>
            </tr>

            <tr> 
              <td colspan="2"><FONT face=webdings color=#fe7302>4</FONT>����д��ѧ�������е�EMail���Ա�ȷ�ϣ�</td>
            </tr>

            <tr> 
              <td><br></td>
	      <td>
<INPUT type=image name=image src='../images/button/sure.gif' width="40" height="19" border=0>
<IMG src='../images/button/cancel.gif' onclick="form1.user.value='';form1.email.value='';" style='CURSOR: hand' border=0> </td>
            </tr>
          </table>
        </td>
	  </tr>
    </table>
    </form>
</body>
</html>


