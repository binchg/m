// ------------------弹出window.open窗口--------------------
function dialogwin(fileName,str_dialogWidth,str_dialogHeight)
{ 
    window.showModalDialog(fileName,null,"dialogWidth:"+str_dialogWidth+"px;dialogHeight:"+str_dialogHeight+"px;center:1;scroll:0;help:0;status:0");
}

/*function dialogwin_one(fileName,str_dialogWidth,str_dialogHeight,control_name)
{ 
    var name=fob(control_name); // 获得：document.forms(0).控件id
    var newwindow=window.showModalDialog(fileName,"",";dialogWidth:"+str_dialogWidth+"px;dialogHeight:"+str_dialogHeight+"px;center:1;scroll:0;help:0;status:0");
    name.value=newwindow;
}*/
function opendialog(fileName,str_dialogWidth,str_dialogHeight,property)
{ 
    var newwindow=window.showModalDialog(fileName,null,"dialogWidth:"+str_dialogWidth+"px;dialogHeight:"+str_dialogHeight+"px;"+property);
    return newwindow;
}

// ------------------弹出window.open窗口--------------------
function openwin(fileName,type,window_width,window_height,property)
{ 
    var top = (window.screen.availHeight-window_height)/2;
    var left = (window.screen.availWidth-window_width)/2;
    if (window_width=="" && window_height=="")
    {
       if (type=="0")
       {
           newWindow=window.open(fileName,"","left="+left+",top="+top+","+property);
       }
       else
       {
           newWindow=window.open(fileName,"","left=0,top=0,"+property);
       }
    }
    else
    {
	    if (type=="0")
		{
		    newWindow=window.open(fileName,"","left=0,top=0,height="+window_height+",width="+window_width+","+property);
		}
		else
		{
			newWindow=window.open(fileName,"","left="+left+",top="+top+",height="+window_height+",width="+window_width+","+property);
		}
       
    }
    
    //newWindow=window.open(fileName,"","resizable=yes,scrollbars=yes,status=yes,toolbar=no,menubar=no,location=no");
    newWindow.focus();
}

// ---------------------弹出无边窗口--------------------------

minimizebar="js/images/minimize.gif";
minimizebar2="js/images/minimize.gif";
closebar="js/images/close.gif"; 
closebar2="js/images/close.gif";
icon="js/images/ie.gif";

function noborderwin(fileName,w,h,titleBg,moveBg,titleColor,titleWord,scr)
{
  var contents="<html>"+
               "<head>"+
         "<title>"+titleWord+"</title>"+
      "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\">"+
      "<object id=hhctrl type='application/x-oleobject' classid='clsid:adb880a6-d8ff-11cf-9377-00aa003b7a11'><param name='Command' value='minimize'></object>"+
      "</head>"+
               "<body topmargin=0 leftmargin=0 scroll=no onselectstart='return false' ondragstart='return false'>"+
      "  <table height=100% width=100% cellpadding=0 cellspacing=1 bgcolor="+titleBg+" id=mainTab>"+
      "    <tr height=18 style=cursor:default; onmousedown='x=event.x;y=event.y;setCapture();mainTab.bgColor=\""+moveBg+"\";' onmouseup='releaseCapture();mainTab.bgColor=\""+titleBg+"\";' onmousemove='if(event.button==1)self.moveTo(screenLeft+event.x-x,screenTop+event.y-y);'>"+
      "      <td width=22 align=center><img  border=0 src="+icon+">&nbsp;</td>"+
      "      <td width="+w+"><span style=font-size:12px;color:"+titleColor+";font-family:宋体;font-weight:bold;position:relative;top:1px;>"+titleWord+"</span></td>"+
      "      <td width=14><img border=0  src="+minimizebar+" onmousedown=hhctrl.Click(); onmouseover=this.src='"+minimizebar2+"' onmouseout=this.src='"+minimizebar+"'></td>"+
      "      <td width=14><img border=0  src="+closebar+" onmousedown=self.close(); onmouseover=this.src='"+closebar+"' onmouseout=this.src='"+closebar+"'></td>"+
 
     
      "    </tr>"+
      "    <tr height=*>"+
      "      <td colspan=4>"+
      "        <iframe name=nbw_v6_iframe src="+fileName+" scrolling="+scr+" width=100% height=100% frameborder=0></iframe>"+
      "      </td>"+
      "    </tr>"+
      "  </table>"+
      "</body>"+
      "</html>";

  pop=window.open("","_blank","fullscreen=yes");
  pop.resizeTo(w,h);
  pop.moveTo((screen.width-w)/2,(screen.height-h)/2);
  pop.document.writeln(contents);

  if(pop.document.body.clientWidth!=w||pop.document.body.clientHeight!=h)
  {
    temp=window.open("","nbw_v6");
 temp.close();
 window.showModalDialog("about:<"+"script language=javascript>window.open('','nbw_v6','fullscreen=yes');window.close();"+"</"+"script>","","dialogWidth:0px;dialogHeight:0px");
 pop2=window.open("","nbw_v6");
    pop2.resizeTo(w,h);
    pop2.moveTo((screen.width-w)/2,(screen.height-h)/2);
    pop2.document.writeln(contents);
 pop.close();
  }
}

