<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vNJ="",vZC="",vTitle="�ܴογ���ư���";
	string[] ThePer=new string[]{"5%","10%","25%","5%","5%","25%","5%","10%","10%"};
	string[] TheAlign=new string[]{"center","","","right","right","","right","",""};
	string[] TheHeadStr=new string[]{"���","�ܴ�","����","ѧ��","����","�����༶","����","ָ����ʦ1","ָ����ʦ2"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vNJ=Request.Form["sel_nj"].ToString().Trim();}catch(Exception){};
	try{ vZC=Request.Form["txt_zc"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_jxsj())._zckcsjap_rpt(vXNXQ,vNJ,vZC,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>