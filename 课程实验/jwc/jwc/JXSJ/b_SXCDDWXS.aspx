<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vTitle="ʵϰѧ��",vXNXQ="",vKC="",vBJ="";
	string[]ThePer=new string[]{"5%","5%","5%","14%","14%","24%","13%","8%","5%","7%"};
	string[]TheAlign=new string[]{"center","center","right","","","","center","","center",""};
	string[]TheHeadStr=new string[]{"���","���","����","ָ����ʦ1","ָ����ʦ2","�ص�","ѧ��","����","�Ա�","�鳤"};
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	//Request-data
	try{ vXNXQ=Request["xnxq"].ToString().Trim();}catch(Exception){};
	try{ vKC=Request["kc"].ToString().Trim();}catch(Exception){};
	try{ vBJ=Request["bj"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new ind_subPrivate_JXSJ())._sxcddwxs_Rpt(vXNXQ,vKC,vBJ,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>
