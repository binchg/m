<%@ Import NameSpace="BLL.JXJH"%>
<%@ Import NameSpace="BLL.include" %>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vRpt="",vXNXQ="",vCDDW="",vKC="";
	string [] ThePer=new string[]{"4%","24%","5%","5%","17%","16%","5%","4%","4%","4%","4%","4%","4%"};
	string [] TheAlign=new string[]{"center","","right","center","","","center","right","right","right","right","right","right"};
	string [] TheHeadStr=new string[]{"���","�γ�","ѧ��","�꼶","רҵ","�γ����","����<br>��ʽ","��<br>ѧʱ","����<br>ѧʱ","ʵ��<br>ѧʱ","�ϻ�<br>ѧʱ","����<br>ѧʱ","��<br>ѧʱ"};
	Response.Output.Write((new ind_subPublic()).page_Head_HTML("���ۿγ̶�Ӧ�꼶/רҵ","Styles_Rpt"));
	try{ vRpt=Request.Form["chkCxfs"].ToString().Trim();}catch(Exception){};
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vCDDW=Request.Form["sel_cddw"].ToString().Trim();}catch(Exception){};
	try{ vKC=Request.Form["sel_kc"].ToString().Trim();}catch(Exception){};
	
	if(vRpt.Trim()=="1"){
	    try{ vKC=Request.Form["sel_hj"].ToString().Trim();}catch(Exception){};
		ThePer=new string[]{"5%","12%","20%","6%","12%","23%","12%","6%"};
		TheAlign=new string[]{"center","","","right","center","","center","right"};
		TheHeadStr=new string[]{"���","�������","����","ѧ��","�꼶","רҵ","���˷�ʽ","����"};
	}
	try{
		//Draw-Rpt
		Response.Output.Write((new private_JXJH()).KCJHNJZY_Rpt(vRpt,vXNXQ,vCDDW,vKC,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>
