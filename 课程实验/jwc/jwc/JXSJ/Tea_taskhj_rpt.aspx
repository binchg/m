<%@ Page Language="C#"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Import NameSpace="BLL.include"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	//��ʦID
	string USER_ID=(new BLL_jxsj(this)).USER_ID;
	
	string vXNXQ="",vTitle="ָ������";
	string[] ThePer=new string[]{"5%","34%","10%","6%","7%","30%","8%"};
	string[] TheAlign=new string[]{"center","","center","right","right","","right"};
	string[] TheHeadStr=new string[]{"���","����","���","ѧ��","����","�����༶","ʵ������"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	
	try{	vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_jxsj())._tea_taskhj_rpt(vXNXQ,USER_ID,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>
<FONT face="����"></FONT>
