<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vSXJD="",vTitle="ȫУʵϰ����";
	string[] ThePer=new string[]{"5%","25%","7%","30%","5%","5%","8%","9%","6%"};
	string[] TheAlign=new string[]{"center","","right","","right","right","","right","center"};
	string[] TheHeadStr=new string[]{"���","���а༶","����","ʵϰ","ѧ��","����","�ܴ�","�������","��ע"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vSXJD=Request.Form["sel_sxjd"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_jxsj(this))._qxsxap_rpt(vXNXQ,vSXJD,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){Response.Output.Write(ex.Message.ToString());}

	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>