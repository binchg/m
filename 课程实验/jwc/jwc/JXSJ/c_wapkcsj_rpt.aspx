<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vYX="",vXNXQ="",vTitle="δ���ſγ���Ƶ�ѧ������";
	string[] ThePer=new string[]{"5%","20%","20%","20%","15%","15%","5%"};
	string[] TheAlign=new string[]{"center","left","left","left","center","left","center"};
	string[] TheHeadStr=new string[]{"���","Ժϵ","רҵ","�༶","ѧ��","����","�Ա�"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	
	try{ vYX=Request.Form["sel_kcsj"].ToString().Trim();}catch(Exception){};
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_jxsj(this))._wapkcsj_rpt(vXNXQ,vYX,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>