<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vZY="",vNJ="",vTitle="��ҵ���Ĵ�簲��[���꼶/רҵ]";
	string[] ThePer=new string[]{"4%","5%","5%","25%","25%","5%","5%","26%"};
	string[] TheAlign=new string[]{"center","center","right","","","center","right",""};
	string[] TheHeadStr=new string[]{"���","ѧ��<br>���","ѧ��<br>����","���ʱ��","���ص�","ר��<br>���","ר��<br>����","���ר��"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vZY=Request.Form["sel_zy"].ToString().Trim();}catch(Exception){};
	try{ vNJ=Request.Form["sel_nj"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_jxsj())._bjbydbap_rpt(vXNXQ,vZY,vNJ,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>