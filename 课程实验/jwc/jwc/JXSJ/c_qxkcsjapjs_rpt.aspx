<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vTitle="ȫУʵϰ����";
	string[] ThePer=new string[]{"5%","15%","25%","5%","5%","25%","8%","6%","6%"};
	string[] TheAlign=new string[]{"center","","","right","right","","","right","center"};
	string[] TheHeadStr=new string[]{"���","ָ����ʦ","�γ����","ѧ��","����","�����༶","�ܴ�","����<br>����","��ע"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_jxsj(this))._qxkcsjapjs_rpt(vXNXQ,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>
