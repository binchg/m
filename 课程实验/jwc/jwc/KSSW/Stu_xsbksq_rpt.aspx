<%@ Page Language="C#" %>
<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<script language=javascript src=../include/Scr/ind_subPublic.js></script>
<script language=javascript>
function SQSet(theID){
  var nj,zy,kc,state,xh,cs,jfje;
  try{state=theID.value;hk=theID.SFHK;kc=theID.KC;jfje=theID.jfje;khfs=theID.KHFS;xh=document.all.xh.value;cs=theID.cs;}
  catch(e){alert("δ֪����,������ֹ��");return false;}

//if(state=="����"){//alert('HKYY.asp?vxh='+xh+'&vcs='+cs+'&vstate='+state+'&vkc='+kc+'&vxf='+xf+'&vzxs='+zxs+'&kclb='+kclb+'&khfs='+khfs);
//window.open('HKYY.asp?vxh='+xh+'&vcs='+cs+'&vstate='+state+'&vkc='+kc+'&vxf='+xf+'&vzxs='+zxs+'&kclb='+kclb+'&khfs='+khfs,'winKPT','width=250,height=200,scrollbars=yes');
//}
//else{
	//if(confirm('ȷ��Ҫ'+state+'��'))
   	//{
		document.all.kcdm.value=kc;
		document.all.sfhk.value=hk;
    	document.all.state.value=state;
		document.all.jfje.value=jfje;
		document.all.cs.value=cs;
		theID.disabled=true;
    	form1.submit();
   	//}
}
</script>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string errUrl="";
	string vTitle="���벹��";
	string[] ThePer=new string[]{"5%","29%","6%","13%","8%","8%","8%","8%","10%","5%"};
	string[] TheAlign=new string[]{"center","","right","center","center","center","right","right","center","center"};
	string[] TheHeadStr=new string[]{"���","�γ�","ѧ��","���","����<br>��ʽ","�޶�<br>����","��Ч<br>�ɼ�","�շ�<br>��׼(Ԫ)","״̬",""};
	BLL_kssw pSub=new BLL_kssw(this);
	ind_subPrivate_SetDoor PubObj=new ind_subPrivate_SetDoor();
	
	errUrl=PubObj.DoorXSBKSQ();
	if (errUrl!="") Response.Redirect(errUrl);
	
	string vXNXQ=BLL_kssw.CUR_XNXQ;
	//string vKSDM=BLL_kssw.CUR_KSDM;
	string USER_ID=pSub.USER_ID;
	//string vStr=pSub.GetStuInfo(vXNXQ,USER_ID);
	
	//int R=pSub._Stu_bksq_bkgd(vXNXQ,vKSDM);
	//if (R==0)Response.Redirect("../_help/Sorry.aspx?str=�����ò����涨��");
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	
	string SubmitStr="",vKCDM="",vKSDM="";
	try{SubmitStr=Request.Form["state"].ToString();}catch(Exception){}
	try{vKCDM=Request.Form["kcdm"].ToString();}catch(Exception){}
	try{vKSDM=Request.Form["cs"].ToString();}catch(Exception){}

	if (SubmitStr=="����")
	{
		try{pSub._Stu_bksq_SetSQQX(USER_ID,vXNXQ,vKCDM,vKSDM,"1");
		}catch(Exception){}
	}
	else if (SubmitStr=="ȡ��") 
	{
		try{pSub._Stu_bksq_SetSQQX(USER_ID,vXNXQ,vKCDM,vKSDM,"0");
		}catch(Exception){}
	}
	
	Response.Output.Write("<form name='form1' action='Stu_xsbksq_rpt.aspx' method='post'>");
	//Response.Output.Write(pSub.Stu_NEWDrawHead(vStr,ThePer,TheHeadStr));
	try{Response.Output.Write(pSub._Stu_bksq_rpt(vXNXQ,USER_ID,ThePer,TheAlign,TheHeadStr));
	}catch(Exception){}
	Response.Output.Write("</form>");
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>