<%@ Import NameSpace="BLL.JXJH"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	//Define-Data
	string vNJ="",vZYStr="",vTitle="רҵ������������޿�ѧʱ�ֲ�";
	string [] ThePer=new string[]{"26%","6%","6%","6%","6%","6%","6%","6%","6%","6%","10%","10%"};
	string [] TheAlign=new string[]{"center","right","right","right","right","right","right","right","right","right","right","right"};
	string [] TheHeadStr=new string[]{"ѧ��ѧ��","��ѧ<br>����","��<br>ѵ","��<br>��","����<br>ѵ��","ʵ<br>ϰ","�γ�<br>���","��ҵ<br>���","��ҵ<br>����","��<br>��","ʵ����<br>������","���޿�<br>ѧʱ"};
	//object-class
	private_JXJH pJ=new private_JXJH(this);
	//Draw-page-Html-head
	Response.Output.Write(pJ.page_Head_HTML(vTitle,"styles_Rpt"));
	//Request-Data
	try{ vNJ=Request.Form["sel_NJ"].ToString().Trim();}catch(Exception){};
	try{ vZYStr=Request.Form["sel_zy"].ToString().Trim();}catch(Exception){};
	//Draw-Rpt
	try{
		Response.Output.Write(pJ.view_zsxsfb(vNJ,vZYStr,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	//Draw-page-Html-Bottom
	Response.Output.Write(pJ.page_Bottom_HTML());
}
</script>
