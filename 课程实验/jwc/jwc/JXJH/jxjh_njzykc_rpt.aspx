<%@ Page Language="C#" %>
<%@ Import NameSpace="BLL.JXJH"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string [] ThePer=new string[]{"4%","13%","19%","4%","4%","4%","4%","4%","4%","3.2%","3.2%","3.2%","3.2%","3.2%","3.2%","3.2%","3.2%","3.2%","3.2%","6%"};
	string [] TheAlign=new string[]{"center","","","center","center","center","center","center","center","center","center","center","center","center","center","center","center","center","center","left"};
	string [] TheHeadStr=new string[]{"���","�γ����","�γ�","ѧ<br>��","��<br>ѧ<br>ʱ","��<br>��<br>ѧ<br>ʱ","ʵ<br>��<br>ѧ<br>ʱ","��<br>��<br>ѧ<br>ʱ","��<br>��<br>ѧ<br>ʱ","1","2","3","4","5","6","7","8","9","10","��ע"};
	string [] THStr1=new string[]{"һ","��","��","��","��"};
	//BLL object 
	private_JXJH pJ=new private_JXJH(this);
	//Draw html head
	Response.Output.Write(pJ.page_Head_HTML("���ۿγ̰��ű�","styles_Rpt"));
	
	string vRpt="",vNJ="",vZYStr="",vRptCx="0",zfx_flag="";
	//Request parameter
	try{vRpt=Request.Form["sel_kchjby"].ToString().Trim();}catch(Exception){};
	try{vNJ=Request.Form["sel_NJ"].ToString().Trim();}catch(Exception){};
	try{vZYStr=Request.Form["sel_zy"].ToString().Trim();}catch(Exception){};
	try{vRptCx=Request.Form["radCx"].ToString().Trim();}catch(Exception){};
	try{zfx_flag=Request.Form["zfx_flag"].ToString().Trim();}catch(Exception){};
	//DrawHread and DrawBody
	try{
		Response.Output.Write(pJ.view_ZYKC_DrawBody(vRpt,vNJ,vZYStr,vRptCx,zfx_flag,ThePer,TheAlign,TheHeadStr,THStr1).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	
	//Draw html bottom
	Response.Output.Write(pJ.page_Bottom_HTML());
}
</script>
