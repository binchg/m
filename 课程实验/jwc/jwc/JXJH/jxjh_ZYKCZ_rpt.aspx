<%@ Page Language="C#" %>
<%@ Import NameSpace="BLL.JXJH"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vTitle="רҵ�����б�",vYX="",vNJ="",vZY="",vRpt="",zfx_flag="";
	string [] ThePer=new string[]{"5%","8%","15%","26%","6%","6%","6%","6%","6%","6%","10%"};
	string [] TheAlign=new string[]{"center","center","","","right","center","center","center","center","center","center","center"};
	string [] TheHeadStr=new string[]{"���","�������","����","�γ�","ѧ<br>��","��<br>ѧʱ","����<br>ѧʱ","ʵ��<br>ѧʱ","�ϻ�<br>ѧʱ","����<br>ѧʱ","����ѧ��"};
	//object-class
	private_JXJH pJ=new private_JXJH(this);
	Response.Output.Write(pJ.page_Head_HTML(vTitle,"styles_Rpt"));
	try{vYX=Request.Form["Sel_XY"].ToString().Trim();}catch(Exception){}
	try{vNJ=Request.Form["Sel_nj"].ToString().Trim();}catch(Exception){}
	try{vZY=Request.Form["Sel_ZY"].ToString().Trim();}catch(Exception){}
	try{vRpt=Request.Form["radCx"].ToString().Trim();}catch(Exception){}
	try{zfx_flag=Request.Form["zfx_flag"].ToString().Trim();}catch(Exception){}
	//Draw Rpt
	try{
		Response.Output.Write(pJ.view_kcz_DrawRpt(vYX,vNJ,vZY,vRpt,zfx_flag,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	Response.Output.Write(pJ.page_Bottom_HTML());
}
</script>

