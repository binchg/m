<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vKS="",vYX="",vTitle="��ʱ��鿴�࿼����";
	string[] ThePer=new string[]{"20%","4%","20%","4%","4%","3%","15%","4%","8%","18%"};
	string[] TheAlign=new string[]{"","right","","right","center","right","","right","",""};
	string[] TheHeadStr=new string[]{"ʱ��","�࿼<br>����","�γ�","ѧ��","����","�࿼<br>����","����","����<br>����","���࿼","���࿼"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vKS=Request.Form["sel_lc"].ToString().Trim();}catch(Exception){};
	try{ vYX=Request.Form["sel_yx"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_kssw(this))._jksjqd_rpt(vXNXQ,vKS,vYX,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>