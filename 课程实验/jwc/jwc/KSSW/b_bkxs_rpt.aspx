<%@ Import NameSpace="BLL.KSSW"%>
<%@ Import NameSpace="BLL.include"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vKS="",vCDDW="",vKC="",vTitle="�鿴����ѧ�����",vCK="",vYX="",vZY="";
	string[] ThePer=new string[]{"21%","5%","5%","6%","5%","18%","13%","10%","4%","5%","7%"};
	string[] TheAlign=new string[]{"","right","right","right","center","","","","center","center","right"};
	string[] TheHeadStr=new string[]{"�γ�","ѧ��","����<br>����","������","�꼶","רҵ","ѧ��","����","�Ա�","�޶�<br>����","�ɼ�"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_Rpt"));
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vKS=Request.Form["sel_lc"].ToString().Trim();}catch(Exception){};
	try{ vCK=Request.Form["ckjs"].ToString().Trim();}catch(Exception){};
	try{ vYX=Request.Form["sel_xy"].ToString().Trim();}catch(Exception){};
	try{ vZY=Request.Form["sel_zy"].ToString().Trim();}catch(Exception){};
	
	try{ vCDDW=Request.Form["sel_cddw"].ToString().Trim();}catch(Exception){};
	try{ vKC=Request.Form["Sel_KC"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_kssw(this))._bkxs_rpt(vXNXQ,vKS,vCDDW,vKC,ThePer,TheAlign,TheHeadStr,vCK,vYX,vZY).ToString());
	}catch(Exception ex){}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>