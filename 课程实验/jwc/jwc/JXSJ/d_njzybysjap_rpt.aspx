<%@ Page Language="C#"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Import NameSpace="BLL.include"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vZY="",vNJ="",vTitle="��ҵ��ư���[���꼶/רҵ]",vZFX="";
	string[] ThePer=new string[]{"5%","5%","5%","15%","10%","10%","5%","20%","25%"};
	string[] TheAlign=new string[]{"center","center","right","","center","","center","",""};
	string[] TheHeadStr=new string[]{"���","���","����","ָ����ʦ","ѧ��","����","�Ա�","�����༶","��ҵ�����Ŀ"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vZY=Request.Form["sel_zy"].ToString().Trim();}catch(Exception){};
	try{ vNJ=Request.Form["sel_nj"].ToString().Trim();}catch(Exception){};
	try{ vZFX=Request.Form["radCx"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_jxsj(this))._njzybysjap_rpt(vXNXQ,vZY,vNJ,vZFX,ThePer,TheAlign,TheHeadStr).ToString().Trim());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>
<FONT face="����"></FONT>
