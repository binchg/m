<%@ Page %>
<html>
<head>
<title>�����ؼ�_��ʾ����</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<LINK href="./Calendar.css" rel=Stylesheet type=text/css>
<SCRIPT LANGUAGE="jscript.encode" src="./Calendar_Select.js"></SCRIPT>

<script language="vbscript">
function getWeekday(strdate)
getWeekday = Weekday(strdate,1) 
end function
</script>
</head>

<body ondragstart="window.event.returnValue=false" text="#000000" scroll="no" leftmargin=0 topmargin=0 marginwidth="0" marginheight="0">

<table class=tblBody border=0 cellspacing=0 cellpadding=0 width=100% height=100%>
<tr><td align=left valign=top>

<div style="position:absolute; width:20px; height:20px; z-index:1; left: 165px; top: 9px"> 
<table border=0 cellspacing=0 cellpadding=0>
<tr><td valign='top'><img src='./images/scrUp_0.gif'   id=top    border=0 onclick='doClick();' onmousedown="numScrollTop('mouse')"  onmouseup='return dokeyup(38)'></td></tr>
<tr><td valign='top'><img src='./images/scrDown_0.gif' id=bottom border=0 onclick='doClick();' onmousedown="numScrollBottom('mouse')"  onmouseup='return dokeyup(40)'></td></tr>
</table>
</div>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td width="90" style="padding:5 5"> 
      <select name="monthSelect" style="width:80" onchange="public_myGetdate(document.all.editSelect.value+'-'+document.all.monthSelect.value+'-'+document.all.hid_day.value)" >
        <option value="01">һ��</option>
        <option value="02">����</option>
        <option value="03">����</option>
        <option value="04">����</option>
        <option value="05">����</option>
        <option value="06">����</option>
        <option value="07">����</option>
        <option value="08">����</option>
        <option value="09">����</option>
        <option value="10">ʮ��</option>
        <option value="11">ʮһ��</option>
        <option value="12">ʮ����</option>
      </select>       
    </td>
    <td >
	<input type="text" name="editSelect" id="editSelect" style="height:21px;width:80" onkeydown="return dokeydown(event.keyCode)" onkeyup="return dokeyup(event.keyCode)">
        <input type="hidden" name="hid_day">
    </td>
  </tr>

  <tr> 
    <td colspan="2" style="padding:5 5">
      <table class=tblWeek width="175" id=tbl border="0" cellspacing="0" cellpadding="2" onclick="selectDay(event.srcElement)">
        <tr class=trWeek align="center"> 
          <td width="25">��</td>
          <td width="25">һ</td>
          <td width="25">��</td>
          <td width="25">��</td>
          <td width="25">��</td>
          <td width="25">��</td>
          <td width="25">��</td>
        </tr>
        <tr class=trDay align="center"> 
          <td width="25">&nbsp;</td>
          <td width="25">&nbsp;</td>
          <td width="25">&nbsp;</td>
          <td width="25">&nbsp;</td>
          <td width="25">&nbsp;</td>
          <td width="25">&nbsp;</td>
          <td width="25">&nbsp;</td>
        </tr>
        <tr class=trDay align="center"> 
          <td width="25">&nbsp;</td>
          <td width="25">&nbsp;</td>
          <td width="25">&nbsp;</td>
          <td width="25">&nbsp;</td>
          <td width="25">&nbsp;</td>
          <td width="25">&nbsp;</td>
          <td width="25">&nbsp;</td>
        </tr>
        <tr class=trDay align="center"> 
          <td width="25">&nbsp;</td>
          <td width="25">&nbsp;</td>
          <td width="25">&nbsp;</td>
          <td width="25">&nbsp;</td>
          <td width="25">&nbsp;</td>
          <td width="25">&nbsp;</td>
          <td width="25">&nbsp;</td>
        </tr>
        <tr class=trDay align="center"> 
          <td width="25">&nbsp;</td>
          <td width="25">&nbsp;</td>
          <td width="25">&nbsp;</td>
          <td width="25">&nbsp;</td>
          <td width="25">&nbsp;</td>
          <td width="25">&nbsp;</td>
          <td width="25">&nbsp;</td>
        </tr>
        <tr class=trDay align="center"> 
          <td width="25">&nbsp;</td>
          <td width="25">&nbsp;</td>
          <td width="25">&nbsp;</td>
          <td width="25">&nbsp;</td>
          <td width="25">&nbsp;</td>
          <td width="25">&nbsp;</td>
          <td width="25">&nbsp;</td>
        </tr>
        <tr class=trDay align="center"> 
          <td width="25">&nbsp;</td>
          <td width="25">&nbsp;</td>
          <td width="25">&nbsp;</td>
          <td width="25">&nbsp;</td>
          <td width="25">&nbsp;</td>
          <td width="25">&nbsp;</td>
          <td width="25">&nbsp;</td>
        </tr>
      </table>
    </td>
  </tr>
</table>

</td></tr>
</table>

</body>
</html>

