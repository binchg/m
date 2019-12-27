<%@ Page Language="C#"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Import NameSpace="BLL.include"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vKSZS="",vKSXQ="",vKSSJ="",vJSZS="",vJSXQ="",vJSSJ="",vXNXQ="",vKS="",vTitle="δ��ӡ�Ծ���Ϣ";
	string[] ThePer1=new string[]{"10%","18%","4%","4%","16%","4%","4%","20%","10%","10%"};
	string[] ThePer2=new string[]{"4%","6%","4%","6%","4%","6%","4%","6%"};
	string[] TheAlign=new string[]{"","","right","center","","right","right","right","right","right"};
	string[] TheHeadStr1=new string[]{"����ʱ��","�γ�","ѧ��","����","�Ծ�","����<br>����","��ӡ<br>�Ծ�<br>����","�Ծ�(��16K)","����ֽ<br>(��16K)","�ݸ�ֽ<br>(��16K)"};
	string[] TheHeadStr2=new string[]{"ҳ��","��ҳ��","����","������","����","������","����","������"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	
	//Request
	try{ vKSZS=Request.Form["sel_kszs"].ToString().Trim();}catch(Exception){};
	try{ vKSXQ=Request.Form["sel_ksxq"].ToString().Trim();}catch(Exception){};
	try{ vKSSJ=Request.Form["sel_kssj"].ToString().Trim();}catch(Exception){};
	try{ vJSZS=Request.Form["sel_jszs"].ToString().Trim();}catch(Exception){};
	
	try{ vJSXQ=Request.Form["sel_jsxq"].ToString().Trim();}catch(Exception){};
	try{ vJSSJ=Request.Form["sel_jssj"].ToString().Trim();}catch(Exception){};
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vKS=Request.Form["sel_lc"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_kssw(this))._sjwsy_rpt(vKSZS,vKSXQ,vKSSJ,vJSZS,vJSXQ,vJSSJ,vXNXQ,vKS,ThePer1,ThePer2,TheAlign,TheHeadStr1,TheHeadStr2).ToString());
	}catch(Exception ex){}
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>