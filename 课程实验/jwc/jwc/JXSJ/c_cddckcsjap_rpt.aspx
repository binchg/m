<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vCDDW="",vTitle="�е���λ�γ���ư���";
	string[] ThePer=new string[]{"6%","35%","5%","5%","35%","6%","8%"};
	string[] TheAlign=new string[]{"center","","center","center","","right","right"};
	string[] TheHeadStr=new string[]{"���","����","ѧ��","����","�����༶","����","�ܴ�"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vCDDW=Request.Form["sel_cddw"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_jxsj(this))._cddckcsjap_rpt(vXNXQ,vCDDW,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
		
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>