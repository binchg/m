<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vCDDW="",vTitle="��Ժ(ϵ)/����רҵ�鿴��ҵ�����Ŀ";
	string[] ThePer=new string[]{"5%","20%","35%","25%","15%"};
	string[] TheAlign=new string[]{"center","","","",""};
	string[] TheHeadStr=new string[]{"���","רҵ","��Ŀ","����<br>��Ҫ��","��ע"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	
	try{ vCDDW=Request.Form["sel_yx"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_jxsj(this))._azybysjcktm_rpt(vXNXQ,vCDDW,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
		
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>