<%@ Page Language="C#" %>
<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<script language=javascript src=../include/Scr/ind_subPublic.js></script>
<script language=javascript>
function SQSet(theID){
  var nj,zy,kc,state,xh,cs;
  try{state=theID.value;xh=document.all.xh.value;cs=theID.cs;kc=theID.KC;}
  catch(e){alert("δ֪����,������ֹ��");return false;}
//kclb=theID.KCLB;xf=theID.XF;khfs=theID.KHFS;
//if(state=="����"){//alert('HKYY.asp?vxh='+xh+'&vcs='+cs+'&vstate='+state+'&vkc='+kc+'&vxf='+xf+'&vzxs='+zxs+'&kclb='+kclb+'&khfs='+khfs);
//window.open('HKYY.aspx?vxh='+xh+'&vcs='+cs+'&vstate='+state+'&vkc='+kc+'&vxf='+xf+'&vzxs='+zxs+'&kclb='+kclb+'&khfs='+khfs,'winKPT','width=250,height=200,scrollbars=yes');
//}
//else{
		//if(confirm('��ȷ��Ҫ'+state+'��'))
   		//{
			document.all.kcdm.value=kc;
			//document.all.xf.value=xf;
			//document.all.zxs.value=zxs;
			//document.all.kclb.value=kclb;
			//document.all.khfs.value=khfs;
			document.all.state.value=state;
			document.all.cs.value=cs;
			theID.disabled=true;
    		form1.submit();
   		//}
}
</script>

<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vTitle="���뻺��";
	string[] ThePer=new string[]{"5%","35%","10%","15%","10%","10%","10%","5%"};
	string[] TheAlign=new string[]{"center","","right","center","center","center","center","center"};
	string[] TheHeadStr=new string[]{"���","�γ�","ѧ��","���","����<br>��ʽ","�޶�<br>����","״̬",""};
	BLL_kssw pSub=new BLL_kssw(this);
	
	string vXNXQ=BLL_kssw.CUR_XNXQ;
	//string vKSDM=BLL_kssw.CUR_KSDM;
	string USER_ID=pSub.USER_ID;
	//string vStr=pSub.GetStuInfo(vXNXQ,USER_ID);
	//pSub._Stu_hksq_SetQXSX(USER_ID,vKCDM,vKSDM);
	
	string SubmitStr="",vKCDM="",vKSDM="";
	try{SubmitStr=Request.Form["state"].ToString();}catch(Exception){}
	try{vKCDM=Request.Form["kcdm"].ToString();}catch(Exception){}
	try{vKSDM=Request.Form["cs"].ToString();}catch(Exception){}

	if (SubmitStr=="����")
	{
		pSub.HK_Stu_hksq_SetSQSX(USER_ID,vXNXQ,vKSDM,vKCDM,"1");
	}
	else if (SubmitStr=="ȡ��") 
	{
		pSub.HK_Stu_hksq_SetSQSX(USER_ID,vXNXQ,vKSDM,vKCDM,"0");
	}
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	Response.Output.Write("<form name='form1' action='Stu_xshksq_rpt.aspx' method='post'>");
	//Response.Output.Write(pSub.Stu_NEWDrawHead(vStr,ThePer,TheHeadStr));
	try{Response.Output.Write(pSub._Stu_hksq_rpt(vXNXQ,USER_ID,ThePer,TheAlign,TheHeadStr));
	}catch(Exception){}
	Response.Output.Write("</form>");
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>