<%@Import NameSpace="BLL.include"%>
<%@Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vZJ="",vTitle="��ҵ���Ĵ�簲��[�����ר��]";
	string[] ThePer=new string[]{"4%","16%","15%","25%","4%","20%","4%","4%","4%","4%"};
	string[] TheAlign=new string[]{"center","","center","","center","","center","right","center","right"}; 
	string[] TheHeadStr=new string[]{"���","���ר��","���ʱ��","���ص�","�꼶","רҵ","ѧ��<br>���","ѧ��<br>����","ר��<br>���","ר��<br>����"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vZJ=Request.Form["txt_zj"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_jxsj(this))._zjbydbap_rpt(vXNXQ,vZJ,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>