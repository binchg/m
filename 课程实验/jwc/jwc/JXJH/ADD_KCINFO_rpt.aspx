<%@Import NameSpace="BLL.JXJH"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	BLL.JXJH.private_JXJH pSub=new BLL.JXJH.private_JXJH(this);
	
	string vTitle="�鿴�γ���Ϣ",vRpt="",vCDDW="",vKC="";
	string[] ThePer=new string[]{"5%","37%","22%","6%","6%","6%","6%","6%","6%"};
	string[] TheAlign=new string[]{"center","","center","right","right","right","right","right","right"};
	string[] TheHeadStr=new string[]{"���","�γ�","�γ����","ѧ��","��ѧʱ","����<br>ѧʱ","ʵ��<br>ѧʱ","�ϻ�<br>ѧʱ","����<br>ѧʱ"};
				
	Response.Output.Write(pSub.page_Head_HTML(vTitle,"styles_Rpt"));
	try{vCDDW=Request.Form["sel_cddw"].ToString();}catch(Exception){}
	try{vKC=Request.Form["kc"].ToString();}catch(Exception){}
	Response.Output.Write(pSub.rpt_KCXX(this,vCDDW,vKC,ThePer,TheAlign,TheHeadStr,vTitle));
	Response.Output.Write(pSub.page_Bottom_HTML());
}
</script>

