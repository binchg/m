<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Import NameSpace="BLL.include"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vCDDW="",vTitle="�е���λʵϰ����";
	string[] ThePer=new string[]{"5%","30%","10%","10%","25%","10%","10%"};
	string[] TheAlign=new string[]{"center","","right","right","","right","center"};
	string[] TheHeadStr=new string[]{"���","����","ѧ��","����","�����༶","�ܴ�","��ϸ"};
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_Rpt"));
	try{vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{vCDDW=Request.Form["sel_cddw"].ToString().Trim();}catch(Exception){};
	try{
		Response.Output.Write((new BLL_jxsj(this))._cddwsxap_rpt(vXNXQ,vCDDW,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>