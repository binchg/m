<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string  vXNXQ="",vSJ="",vTitle="��ҵ���Ĵ�簲��[��ʱ��]";
	string[] ThePer=new string[]{"4%","14%","5%","20%","4%","4%","25%","4%","4%","16%"};
	string[] TheAlign=new string[]{"center","center","center","","center","right","","center","right",""};
	string[] TheHeadStr=new string[]{"���","���ʱ��","�꼶","רҵ","ѧ��<br>���","ѧ��<br>����","���ص�","ר��<br>���","ר��<br>����","���ר��"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vSJ=Request.Form["txt_sj"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_jxsj())._sjbydbap_rpt(vXNXQ,vSJ,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>