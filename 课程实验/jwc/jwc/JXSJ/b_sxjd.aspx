<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#"%>
<%
BLL.JXSJ.BLL_jxsj pSub=new BLL.JXSJ.BLL_jxsj(this);
string USER_ID=pSub.USER_ID;
string USER_ZH=pSub.USER_ZH;
string USER_NAME=pSub.USER_NAME;
string USER_LVID=pSub.USER_LVID;
string USER_BJID=pSub.USER_BJID;
string USER_LEVEL=pSub.USER_LEVEL;
string USER_OPTYX=pSub.USER_OPTYX;
string USER_OPTDW=pSub.USER_OPTDW;
%>
<html>
<head>
<title>�ύʵϰ����</title>
<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
<meta name="CODE_LANGUAGE" Content="C#">
<meta name="vs_defaultClientScript" content="JavaScript">
<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
<script language='javascript'>
 function BtnAdd(){
    document.all.form1.del.disabled=true;
    main.location.href="b_sxjd_rpt.aspx"

 }

 function ChkValue(TheForm){
   if (document.all.form1.vmc.value==''){
     alert('������ʵϰ��������!');document.all.form1.vmc.focus();return false;
   }
  if (document.all.form1.vdz.value==''){
    alert('�������ַ!');document.all.form1.vdz.focus();return false;
  }

  if (document.all.form1.vyb.value==''){
    alert('�������ʱ�!');document.all.form1.vyb.focus();return false;
  }

  if (document.all.form1.vyb.value.length!=6){
    alert('�ʱ��λ��Ӧ��Ϊ��λ!');document.all.form1.vyb.focus();return false;
  }
 if (document.all.form1.vyx.value==''){
   alert('��ѡ������Ժ(ϵ)/��!');document.all.form1.vyx.focus();return false;
 }

 }
</script>
</head>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" >
<table width="660" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
<tr><td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>�ύʵϰ����</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>
</td></tr>
<iframe name=frmSXJD src='' style='width=0px ;height=0' ></iframe>
<form name="form1" method="post" action="b_sxjd_rpt.aspx" target="main" >
	<tr>
      <td valign="top" align="center" height="117" >
        <table width="660" border=0 cellspacing="0" cellpadding="0" height="102">
          <tr>
            <td width=34% height="18"> &nbsp;��&nbsp;&nbsp;&nbsp;&nbsp;��
              <input name="vmc" type="text" id="vmc" size="20"> </td>
            <td width="31%">&nbsp;��&nbsp;ϵ&nbsp;��
              <input name="vlxr" type="text" size="15"> </td>
            <td width="35%">&nbsp;��&nbsp;&nbsp;&nbsp;&nbsp;��
              <input name="vtel" type="text" id="vtel" size="13" maxlength="11"></td>
          </tr>
          <tr>
            <td height="21">&nbsp;��&nbsp;&nbsp;&nbsp;&nbsp;ַ
              <input name="vdz" type="text" id="vdz" size="20"></td>
            <td>&nbsp;��&nbsp;&nbsp;&nbsp;&nbsp;��
              <input name="vyb" type="text" id="vyb" size="15" maxlength="6"></td>
            <td>&nbsp;��&nbsp;&nbsp;&nbsp;&nbsp;��
              <input name="vtax" type="text" id="vtax2" size="13" maxlength="11"></td>
          </tr>
          <tr>
            <td height="21">&nbsp;��������
              <input name="vjlsj" type="text" id="vtax4" size="20" maxlength="11"></td>
            <td>&nbsp;��������
              <input name="vdzyx" type="text" id="vdzyx2" size="15"></td>
            <td colspan="2">&nbsp;�������
              <select name="vjdlb"    size="1" style="width:105">
			  <%=(new ind_subPrivate_JXSJ()).SetValue("jdlb","%")%>
              </select></td>
          </tr>
          <tr>
            <td height="21">&nbsp;��ϵ����
              <input name="vlxbm" type="text" id="vlxbm" size="20"></td>
            <td colspan="3"> &nbsp;����Ժ/(ϵ)��
              <select name="vyx" size="1">
                <%=(new ind_subPublic()).PutValue("yx",USER_OPTYX) %>
              </select></td>
          </tr>
          <tr>
            <td height="21">&nbsp;</td>
            <td colspan="3"><div align="right">
                <input name="add" type="reset" id="add" value="����"   class=button onclick=BtnAdd()>

                <input name="save" type="submit" id="save" value="����"  onclick='return ChkValue(this)'  class=button>

                <input type="submit" name="del" value="ɾ��"  class=button disabled  onclick='return confirm("��ȷ��Ҫɾ����?")'>&nbsp;&nbsp;
                <input type="hidden" name="vdm" value="">
         </div></td>
          </tr>
        </table>

</td></tr>
</form>
<tr><td valign="top" align="center" height="100%">
<iframe name=main src="b_sxjd_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr>
</table>
</td></tr>
</table>
</body>
</html>