<%@ Page Language="C#" %>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Import NameSpace="BLL.include"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vKS="",vCK="",vKCDM="",vTitle="ͳ�Ƽ࿼���";
	string[] ThePer=new string[]{"25%","15%","15%","15%","15%","15%",};
	string[] TheAlign=new string[]{"","right","right","right","right","right"};
	string[] TheHeadStr=new string[]{"�е���λ","���Կγ�<br>����","����<br>��(��)","���࿼<br>��(��)","���࿼<br>��(��)","�࿼<br>��(��)"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_Rpt"));
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vKS=Request.Form["sel_lc"].ToString().Trim();}catch(Exception){};
	try{ vCK=Request.Form["ckjs"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_kssw(this))._tjjkqk_rpt(vXNXQ,vKS,vCK,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>
<FONT face="����"></FONT>
