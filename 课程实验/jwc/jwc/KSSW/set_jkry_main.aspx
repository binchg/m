<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vFLAG="",flag="",vXNXQ="",vKSLC="",vCDDW="",vKCID="",vTitle="�ύ�γ̡��������࿼��Ա";
	string[]ThePer=new string[]{"12%","4%","7%","7%","7%","7%","7%","7%","7%","7%","7%","7%","7%"};
	string[]TheAlign=new string[]{"left","right","center","center","center","center","center","center","center","center","center","center","center"};
	string[]TheHeadStr=new string[]{"����","��������","���࿼","���࿼һ","���࿼��","���࿼��","���࿼��","���࿼��","���࿼��","���࿼��","���࿼��","���࿼��","���࿼ʮ"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	try{ vFLAG=Request.QueryString["p"].ToString().Trim();}catch(Exception){};
	try{ flag=Request.QueryString["flag"].ToString().Trim();}catch(Exception){};
	try{ vXNXQ=Request.QueryString["xnxq"].ToString().Trim();}catch(Exception){};
	try{ vKSLC=Request.QueryString["kslc"].ToString().Trim();}catch(Exception){};
	try{ vCDDW=Request.QueryString["sel_cddw"].ToString().Trim();}catch(Exception){};
	try{ vKCID=Request.QueryString["sel_kc"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_kssw(this))._setJkryMain(vFLAG,flag,vXNXQ,vKSLC,vCDDW,vKCID,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>
<script language=javascript>
function seljs(vK,vKSKC,vJSDM,vPC,vNum,vKsrq,vKsc,theID)
{
  var theURL,jsid;
  try{	
	 if((chkC.value=='')&&(ID.value=='')){             //��һ��˫�������ʱ��ʼ��.
	   chkC.value=eval(vK+".style.backgroundColor");    //��¼��ǰ��������ɫ
	   chkC1.value=eval(vK+".style.color");             //��¼��ǰ�����������ɫ
	   ID.value=vK;                                
	   eval(vK+".style.backgroundColor='darkblue';");   //��ǰ��������ɫ�������
	   eval(vK+".style.color='white';");                //¼��ǰ�����������ɫ��ɰ�ɫ
	 }else{                                             
	     if(ID.value!=vK){                             //�Ƿ�˫��ͬһ�����
		     eval(ID.value+".style.backgroundColor='"+chkC.value+"'");  //
			 eval(ID.value+".style.color='"+chkC1.value+"'"); 
			 ID.value=vK;
			 chkC1.value=eval(vK+".style.color");
			 chkC.value=eval(vK+".style.backgroundColor");
			 eval(vK+".style.backgroundColor='darkblue'");
			 eval(vK+".style.color='white'");
		  }
	 }
	 jsid=parent.document.all.jsid.value;
	 if(jsid!=''){parent.document.all.arrage.disabled=false;}
	 else{parent.document.all.arrage.disabled=true;}
	 parent.document.all.cancel.disabled=false;
	 parent.document.all.kskc.value=vKSKC;
	 parent.document.all.jsdm.value=vJSDM;
	 parent.document.all.pc.value=vPC;
	 parent.document.all.num.value=vNum;
	 parent.document.all.ksrq.value=vKsrq;
	 parent.document.all.ksc.value=vKsc;
	 parent.document.all.yapjs.value=theID;
   }catch(e){}
}
</script>