  <%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	 string vXNXQ="",vKS="",vCDDW="",vKC="",vTitle="�γ̼࿼����";
	 string[] ThePer=new string[]{"10%","50%","10%","10%","10%","10%"};
	 string[] TheAlign=new string[]{"center","","right","center","right","right"};
	 string[] TheHeadStr=new string[]{"���","�γ�","ѧ��","����","������","�࿼����"};

	 Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	 
	 try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	  try{ vKS=Request.Form["sel_lc"].ToString().Trim();}catch(Exception){};
	 try{ vCDDW=Request.Form["sel_cddw"].ToString().Trim();}catch(Exception){};
	 try{ vKC=Request.Form["Sel_KC"].ToString().Trim();}catch(Exception){};
	
	 try{
		Response.Output.Write((new BLL_kssw(this))._jkrs_rpt(vXNXQ,vKS,vCDDW,vKC,ThePer,TheAlign,TheHeadStr).ToString());
	 }catch(Exception ex){}
	
	 
	 Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>