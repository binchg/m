<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vKS="",vXH="",vNJ="",vYX="",vZY="",vBJ="",vTitle="ѧ�������γ�";
	string[] ThePer=new string[]{"4%","12%","6%","9%","12%","9%","5%","6%","21%","5%","6%","5%"};
	string[] TheAlign=new string[]{"","","right","right","center","","center","right","","right","center","right"};
	string[] TheHeadStr=new string[]{"�꼶","רҵ","����<br>��","�γ̡���<br>��ѧ����","ѧ��","����","��<br>��","����<br>��","�γ�","ѧ��","�޶�<br>����","�ɼ�"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vKS=Request.Form["sel_lc"].ToString().Trim();}catch(Exception){};
	try{ vXH=Request.Form["xh"].ToString().Trim();}catch(Exception){};
	try{ vNJ=Request.Form["sel_nj"].ToString().Trim();}catch(Exception){};
	try{ vYX=Request.Form["sel_yx"].ToString().Trim();}catch(Exception){};
	try{ vZY=Request.Form["Sel_zy"].ToString().Trim();}catch(Exception){};
	try{ vBJ=Request.Form["Sel_bj"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_kssw(this))._bkkc_rpt(vXNXQ,vKS,vXH,vNJ,vYX,vZY,vBJ,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){}
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>