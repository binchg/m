<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vCDDW="",vTitle="�ֳе���λ���γ���Ʋ鿴��Ŀ";
	string[] ThePer=new string[]{"5%","30%","5%","25%","25%","10%"};
	string[] TheAlign=new string[]{"center","","right","","",""};
	string[] TheHeadStr=new string[]{"���","����","ѧ��","��Ŀ","����<br>��Ҫ��","��ע"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vCDDW=Request.Form["sel_cddw"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_jxsj(this))._akcsjcktm_rpt(vXNXQ,vCDDW,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
		
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>