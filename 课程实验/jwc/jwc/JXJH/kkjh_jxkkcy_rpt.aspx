<%@Import NameSpace="BLL.JXJH"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{	//Define-Data
	string vTitle="���μƻ����ѧ�ƻ��Ĳ���",vYX="",vNJ="",vZY="",vRpt="",vKCLB="",CUR_XNXQ="";
	string [] ThePer=new string[]{"5%","30%","17%","6%","6%","6%","6%","6%","6%","12%"};
	string [] TheAlign=new string[]{"center","","","right","right","right","right","right","right","center"};
	string [] TheHeadStr=new string[]{"���","�γ�","�γ����","ѧ��","��ѧʱ","����<br>ѧʱ","ʵ��<br>ѧʱ","�ϻ�<br>ѧʱ","����<br>ѧʱ","�������"};
	private_JXJH pJ=new private_JXJH(this);
	//Draw-HTML-Head
	Response.Output.Write(pJ.page_Head_HTML(vTitle,"styles_Rpt"));
	//Request-Data
	//if(Request.ServerVariables["REQUEST_METHOD"].ToString().Trim()=="POST")
	//{
		try{ vYX=Request.Form["Sel_XY"].ToString().Trim();}catch(Exception){}
		try{ vNJ=Request.Form["Sel_nj"].ToString().Trim();}catch(Exception){}
		try{ vZY=Request.Form["Sel_ZY"].ToString().Trim();}catch(Exception){}
		try{ vRpt=Request.Form["radCx"].ToString().Trim();}catch(Exception){}
		try{ vKCLB=Request.Form["radgs"].ToString().Trim();}catch(Exception){}
		try{ CUR_XNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){}
		
		if(vKCLB=="1"){
			ThePer=new string[]{"5%","47%","10%","6%","6%","30%"};
			TheAlign=new string[]{"center","","center","center","center","center"};
			TheHeadStr=new string[]{"���","ʵ������","�������","ѧ��","����","�������"};
		}
		//Draw-Rpt
		Response.Output.Write(pJ.JX_KK_CY(vYX,vNJ,vZY,vRpt,vKCLB,CUR_XNXQ,ThePer,TheAlign,TheHeadStr).ToString());
//	}
	//Draw-Html-Bottom
	Response.Output.Write(pJ.page_Bottom_HTML());
}
</script>
