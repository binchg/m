<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Import NameSpace="BLL.include"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vZS="",vZC="",vTitle="�ܴ�ʵϰ����";
	string[] ThePer=new string[]{"4%","10%","20%","5%","5%","17%","6%","8%","8%","17%"};
	string[] TheAlign=new string[]{"center","","","right","right","","right","left","left",""};
	string[] TheHeadStr=new string[]{"���","�ܴ�","ʵϰ","ѧ��","����","�����༶","����","ָ��<br>��ʦ1","ָ��<br>��ʦ2","ʵϰ����"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"Styles_Rpt"));
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vZS=Request.Form["sel_nj"].ToString().Trim();}catch(Exception){};
	try{ vZC=Request.Form["txt_zc"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_jxsj())._zcsxap_rpt(vXNXQ,vZS,vZC,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>