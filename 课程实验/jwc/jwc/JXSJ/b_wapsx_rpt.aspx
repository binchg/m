<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vSX="",vXNXQ="",vNJ="",vSFAP="0",vTitle="δ����ʵϰ��ѧ������";
	string[] ThePer=new string[]{"5%","20%","20%","20%","12%","10%","5%","8%"};
	string[] TheAlign=new string[]{"center","left","left","left","center","left","center",""};
	string[] TheHeadStr=new string[]{"���","Ժ(ϵ)/��","רҵ","�����༶","ѧ��","����","�Ա�","�ܴ�"};
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"Styles_Rpt"));
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vSX=Request.Form["sel_sx"].ToString().Trim();}catch(Exception){};
	try{ vNJ=Request.Form["sel_nj"].ToString().Trim();}catch(Exception){};
	
	//rpt
	try{
		Response.Output.Write((new BLL_jxsj(this))._wapsx_rpt(vNJ,vXNXQ,vSX,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>
