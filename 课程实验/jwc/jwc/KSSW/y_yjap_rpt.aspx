<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vCK="",vXNXQ="",vKS="",vDW="",vKC="",vYX="",vJS="",vTitle="�ľ���Ϣ";
	string[] ThePer=new string[]{"18%","4%","4%","15%","4%","7%","5%","14%","14%","25%"};
	string[] TheAlign=new string[]{"","center","center","","right","","center","center","center",""};
	string[] TheHeadStr=new string[]{"�γ�","ѧ<br>��","��<br>��","�ľ�<br>��ʦ","�Ա�","ְ��","�ľ�<br>����","�ľ���ʼ����","�ľ��������","�������"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	try{ vCK=Request.Form["ckjs"].ToString().Trim();}catch(Exception){};
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vKS=Request.Form["sel_lc"].ToString().Trim();}catch(Exception){};
	try{ vDW=Request.Form["sel_cddw"].ToString().Trim();}catch(Exception){};
	
	try{ vKC=Request.Form["sel_kc"].ToString().Trim();}catch(Exception){};
	try{ vYX=Request.Form["sel_yx"].ToString().Trim();}catch(Exception){};
	try{ vJS=Request.Form["sel_yxjs"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_kssw(this))._yjap_rpt(vCK,vXNXQ,vKS,vDW,vKC,vYX,vJS,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>