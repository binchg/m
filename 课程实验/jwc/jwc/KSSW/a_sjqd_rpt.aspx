<%@ Import NameSpace="BLL.KSSW"%>
<%@ Import NameSpace="BLL.include"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vKS="",vKSZS="",vKSXQ="",vKSSJ="",vJSZS="",vJSXQ="",vJSSJ="",vTitle="��ʱ�����β鿴���԰���";
	string[] ThePer=new string[]{"19%","3%","15%","3%","2%","3%","15%","3%","9%","15%","10%","3%"};
	string[] TheAlign=new string[]{"","right","","right","center","right","","right","","","","right"};
	string[] TheHeadStr=new string[]{"ʱ��","����<br>����","�γ�","ѧ<br>��","��<br>��","����<br>����","����","��������","���࿼","���࿼","�����༶","��������",};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	
	if (Request.ServerVariables["REQUEST_METHOD"]=="POST")
	{
		try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
		try{ vKS=Request.Form["sel_lc"].ToString().Trim();}catch(Exception){};
		try{ vKSZS=Request.Form["sel_kszs"].ToString().Trim();}catch(Exception){};
		try{ vKSXQ=Request.Form["sel_ksxq"].ToString().Trim();}catch(Exception){};
		
		try{ vKSSJ=Request.Form["sel_kssj"].ToString().Trim();}catch(Exception){};
		try{ vJSZS=Request.Form["sel_jszs"].ToString().Trim();}catch(Exception){};
		try{ vJSXQ=Request.Form["sel_jsxq"].ToString().Trim();}catch(Exception){};
		try{ vJSSJ=Request.Form["sel_jssj"].ToString().Trim();}catch(Exception){};
		
		try{
			Response.Output.Write((new BLL_kssw(this))._sjqd_rpt(vXNXQ,vKS,vKSZS,vKSXQ,vKSSJ,vJSZS,vJSXQ,vJSSJ,ThePer,TheAlign,TheHeadStr).ToString());
		}catch(Exception ex){}
	}
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>