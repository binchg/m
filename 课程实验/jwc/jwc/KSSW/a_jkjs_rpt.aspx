<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vKS="",vYXDM="",vTitle="����ʦ�̸���Ա�鿴�࿼����";
	string[] ThePer=new string[]{"13%","26%","4%","4%","25%","16%","6%","6%"};
	string[] TheAlign=new string[]{"","","right","center","","","center","center"};
	string[] TheHeadStr=new string[]{"�࿼","�γ�","ѧ<br>��","��<br>��","ʱ��","����","�࿼���"};
	string [] TheHeadStr2=new string[]{"���࿼","���࿼"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vKS=Request.Form["sel_lc"].ToString().Trim();}catch(Exception){};
	try{ vYXDM=Request.Form["sel_yx"].ToString().Trim();}catch(Exception){};
	//if(vYXDM!="")
	//{
		try{
			Response.Output.Write((new BLL_kssw(this))._jkjs_rpt(vXNXQ,vKS,vYXDM,ThePer,TheAlign,TheHeadStr,TheHeadStr2).ToString());
		}catch(Exception ex){}
	//}
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>