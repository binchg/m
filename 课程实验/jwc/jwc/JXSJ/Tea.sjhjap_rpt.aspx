<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	//��ʦID
	string USER_ID=(new BLL_jxsj(this)).USER_ID;
	string vXNXQ="",vTitle="��ѧ����(����)";
	string[] ThePer=new string[]{"6%","10%","30%","5%","5%","5%","5%","7%","21%","6%"};
	string[] TheAlign=new string[]{"center","center","","right","right","right","right","center","","center"};
	string[] TheHeadStr=new string[]{"���","�������","����","ѧ��","����","���","��������","�ܴ�","�ص�","��ע"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_jxsj())._tea_sjhjap_rpt(vXNXQ,USER_ID,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>
