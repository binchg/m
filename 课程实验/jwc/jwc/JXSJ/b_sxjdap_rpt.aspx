<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vSXJD="",vJD="",vTitle="ʵϰ����ʵϰ����";
	string[]ThePer=new string[]{"4%","18%","20%","4%","4%","18%","5%","4%","9%","9%","5%"};
	string[]TheAlign=new string[]{"center","","","right","right","","right","center","right","","",""};
	string[]TheHeadStr=new string[]{"���","ʵϰ����","����","ѧ��","����","�����༶","����","���","ָ��<br>��ʦ1","ָ��<br>��ʦ2","�ܴ�"};
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"Styles_Rpt"));
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString();}catch(Exception){};
	try{ vSXJD=Request.Form["sel_nj"].ToString();}catch(Exception){};
	try{ vJD=Request.Form["txt_jd"].ToString();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_jxsj(this))._sxjdap_rpt(vXNXQ,vSXJD,vJD,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>