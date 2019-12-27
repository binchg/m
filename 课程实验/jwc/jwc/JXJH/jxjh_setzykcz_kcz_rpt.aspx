<%@ Import NameSpace="BLL.JXJH" %>
<%@ Import NameSpace="DAL.JXJH"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vRpt="02";
	
	string [] ThePer=new string[]{"15%","20%","14%","14%","14%","23%"};
	string [] TheAlign=new string[]{"center","","center","center","","center"};
	string [] TheHeadStr=new string[]{"���","����","ѡ������<br>����","ѡ��ѧ��<br>����","��ѡ�γ�<br>����","�����γ�<br>ģ��"};
	
	private_JXJH pJ=new private_JXJH(this);
	CourseTache cT=new CourseTache();
	
	Response.Output.Write(pJ.page_Head_HTML("�ύרҵ�γ���","styles_rpt"));
	
	try{vRpt=Request["radCx"].ToString().Trim();}catch(Exception){}
	
	if(vRpt=="01")
	{
		ThePer=new string[]{"15%","28%","19%","19%","19%"};
		TheAlign=new string[]{"center","","center","center",""};
		TheHeadStr=new string[]{"���","����","ѡ������<br>����","ѡ��ѧ��<br>����","��ѡ�γ�<br>����"};
	}
	
	Response.Output.Write("<form action=\"jxjh_setzykcz_kcz_rpt.asp\" method=\"post\" name=\"form1\">");
	Response.Output.Write(pJ.DrawHead_Local(ThePer,TheAlign,TheHeadStr,"170"));
	
	if(Request.ServerVariables["REQUEST_METHOD"].ToString().Trim()=="POST"){
		string vState="";
		try{
			vState=Request["button"].ToString().Trim();
		}catch(Exception){}
		
		string vYX=Request["Sel_XY"].ToString().Trim();
		string vNJ=Request["Sel_nj"].ToString().Trim();
		string vZY=Request["Sel_ZY"].ToString().Trim();
		string zfx_flag=Request["zfx_flag"].ToString().Trim();
		
			string kczdm="";
			string kczname="";
			string kczkcs="";
			string kczxf="";
			string kczhx="";
			string kcmk="";
			
			try{
			 kczdm=Request.Form["Tkczdm"].ToString().Trim();
			 kczname=Request.Form["Tkczname"].ToString().Trim();
			 kczkcs=Request.Form["Tkczkcs"].ToString().Trim();
			 kczxf=Request.Form["Tkczxf"].ToString().Trim();
			 kczhx=Request.Form["Tkczhx"].ToString().Trim();
			 kcmk=Request.Form["Tkcmk"].ToString().Trim();
			}catch(Exception){}
		
			if(vState=="edit"){
			//updatekcz()
				try{
						cT.updatekcz(kczname,kczkcs,kczxf,kczhx,kczdm,kcmk);
					}catch(Exception ex){Response.Write("<center><font color=red>�������ش���<br>����ʧ�ܣ�<br></font></center>"+ex.Message.ToString());}
			}else if(vState=="add"){
			//addkcz()
				try{
						cT.addkcz(vNJ,vZY,kczdm,kczname,kczkcs,kczxf,kczhx,vRpt,zfx_flag,kcmk);
				}catch(Exception ea){
					Response.Output.Write("<center><font color=red>�������ش���<br>���ӱ���ʧ�ܣ�<br></font></center>"+ea.Message.ToString());
				}
			}else if(vState=="del"){
			//delkcz()
				try{
						cT.delkcz(kczdm);
				}catch(Exception ea){
					Response.Output.Write("<center><font color=red>�������ش���<br>ɾ��ʧ�ܣ�<br></font></center>"+ea.Message.ToString());
				}
			}
			
			DrawInput(vNJ,vYX,vZY,vRpt,zfx_flag);
			//try{
				Response.Output.Write(pJ.SET_ZYKC_KCZ_Rpt(vNJ,vZY,vRpt,zfx_flag,ThePer,TheAlign,TheHeadStr,"170").ToString());
			//}catch(Exception ex){
			//	Response.Write(ex.Message.ToString());
			//}
	
	}
	Response.Output.Write("</form>");
	Response.Output.Write(pJ.page_Bottom_HTML());
}
</script>

<script language="C#" runat="server">
private void DrawInput(string vNJ,string vYX,string vZY,string vRpt,string zfx_flag){
	Response.Output.Write("\n<input type=hidden YS='' valueID='' name='PSTemp' kczname='' kczkcs='' kczxf='' kczhx='' kczdm=''>\n");       //��¼ǰһ�α�ѡ�еĿ�����Ϣ
	Response.Output.Write("<input type=hidden name=sel_nj value='"+vNJ.Trim()+"'>\n");							  //��¼��ѯ����
	Response.Output.Write("<input type=hidden name=sel_xy value='"+vYX.Trim()+"'>\n");
	Response.Output.Write("<input type=hidden name=sel_zy value='"+vZY.Trim()+"'>\n");
	Response.Output.Write("<input type=hidden name=radCx value='"+vRpt.Trim()+"'>\n");							  
	Response.Output.Write("<input type=hidden name=zfx_flag value='"+zfx_flag+"'>\n");							  //end
	Response.Output.Write("<input type=hidden name=sfxz value=0 XZID='' XZDM=''>\n");							  //��¼��ѡ�еĿ������,���Ƿ�ѡ��

	Response.Output.Write("<input type=hidden name=Tkczdm  id=Tkczdm value=''>\n");		/////////��¼Ҫ����Ŀ�������
	Response.Output.Write("<input type=hidden name=Tkczname id=Tkczname value=''>\n");
	Response.Output.Write("<input type=hidden name=Tkczkcs id=Tkczkcs value=''>\n");
	Response.Output.Write("<input type=hidden name=Tkczxf id=Tkczxf value=''>\n");
	Response.Output.Write("<input type=hidden name=Tkczhx id=Tkczhx value=''>\n");
	Response.Output.Write("<input type=hidden name=Tkcmk id=Tkcmk value=''>\n");	/////////end
}
</script>

<script language="JavaScript">
function SubmitKc(theID){        //�γ��鱻ѡ�д���
var YS,YID,vNU,YIDtxt1,YIDtxt2,YIDtxt3,YIDtxt4;
YS=document.all.PSTemp.YS;
YID=document.all.PSTemp.valueID;


if( addkcz.sfdj!='1'){parent.document.all.delkcz.disabled=false;}
///////////////////////////////////////////////////��ԭֵ������ɫ����¼�ϴ�ѡ�е�������
if(YID=="" || addkcz.sfdj=='1')
{   try{
    document.all.PSTemp.kczname=document.all("T1"+theID.value).value;
    document.all.PSTemp.kczkcs=document.all("T2"+theID.value).value;
    document.all.PSTemp.kczxf=document.all("T3"+theID.value).value;
    document.all.PSTemp.kczhx=document.all("T4"+theID.value).value;}
    catch(e){;}
    if(addkcz.sfdj=='1'){addkcz.sfdj=''}else{addkcz.style.display='none';addkcz.sfdj='';parent.document.all.addkcz.disabled=false;parent.document.all.savekcz.disabled=true;document.all.sfxz.value="1"}
    if (YID!="")
    { try{eval(YID+".style.backgroundColor='"+YS+"';");
    document.all.PSTemp.YS=theID.style.backgroundColor;
    document.all.PSTemp.valueID=theID.id;
    theID.style.backgroundColor='#89bfa7';}catch(e){;}
    }
    else{
    document.all.PSTemp.YS=eval("theID.style.backgroundColor");
    document.all.PSTemp.valueID=theID.id;
    theID.style.backgroundColor='#89bfa7';
    }
}
else
{   
    if(document.all.sfxz.XZID!=theID.id)
    {
      try{
        YIDtxt1='T1'+YID.substr(1);document.all(YIDtxt1).value=document.all.PSTemp.kczname;
        YIDtxt2='T2'+YID.substr(1);document.all(YIDtxt2).value=document.all.PSTemp.kczkcs;
        YIDtxt3='T3'+YID.substr(1);document.all(YIDtxt3).value=document.all.PSTemp.kczxf;
     	YIDtxt4='T4'+YID.substr(1);document.all(YIDtxt4).value=document.all.PSTemp.kczhx;
    	document.all.PSTemp.kczname=document.all("T1"+theID.value).value;
    	document.all.PSTemp.kczkcs=document.all("T2"+theID.value).value;
    	document.all.PSTemp.kczxf=document.all("T3"+theID.value).value;
    	document.all.PSTemp.kczhx=document.all("T4"+theID.value).value;
    	}
    catch(e){addkcz.style.display='none';addkcz.sfdj='';parent.document.all.addkcz.disabled=false;parent.document.all.savekcz.disabled=true;document.all.sfxz.value="1"}
    
    eval(YID+".style.backgroundColor='"+YS+"';");
    document.all.PSTemp.YS=theID.style.backgroundColor;
    document.all.PSTemp.valueID=theID.id;
    theID.style.backgroundColor='#89bfa7';
    }
}
////////////////////////////////////////////////////////////////////// end

/////////////////////////////////////////////////////////////////////��ʾ�γ���Ϣ�ύ
if(document.all.sfxz.XZID!=theID.id){
	document.all.sfxz.value="1";
	document.all.sfxz.XZID=theID.id;
	document.all.sfxz.XZDM=theID.value;
	parent.main2.form1.action="jxjh_setzykcz_kc_rpt.aspx?KCZ="+theID.value;
	parent.main2.form1.submit();
	//alert("jxjh_setzykcz_kc_rpt.aspx?KCZ="+theID.value);
}

/////////////////////////////////////////////////////////////////////end

}
</script>