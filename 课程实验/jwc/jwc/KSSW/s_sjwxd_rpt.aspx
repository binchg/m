<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vKS="",vCDDW="",vTitle="δѡ���Ծ�γ�";
	string[]ThePer=new string[]{"22%","14%","14%","30%","5%","5%","10%"};
	string[]TheAlign=new string[]{"","right","right","","right","center","center"};
	string[]TheHeadStr=new string[]{"�е���λ","����<br>�γ̡�������","�Ծ�δѡ��<br>�γ̡�������","�γ�","ѧ��","����","��ע"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vKS=Request.Form["sel_lc"].ToString().Trim();}catch(Exception){};
	try{ vCDDW=Request.Form["sel_cddw"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_kssw(this))._sjwxd_rpt(vXNXQ,vKS,vCDDW,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){}

	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>