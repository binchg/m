<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vNJ="",vZY="",vKC="",vYX="",vCDDW="",vXNXQ="",vTitle="δ����ʵϰ";
	string vRpt="";
	string[] ThePer;
	string[] TheAlign;
	string[] TheHeadStr;

	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));	
	if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
	{
		try{ vYX=Request.Form["sel_xy"].ToString().Trim();}catch(Exception){};
		try{ vCDDW=Request.Form["sel_cddw"].ToString().Trim();}catch(Exception){};
		try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
		try{ vRpt=Request.Form["radCx"].ToString().Trim();}catch(Exception){};
		try{ vZY=Request.Form["sel_zy"].ToString().Trim();}catch(Exception){};
		try{ vKC=Request.Form["txt_kc"].ToString().Trim();}catch(Exception){};
		try{ vNJ=Request.Form["sel_nj"].ToString().Trim();}catch(Exception){};
		if(vRpt=="0")
		{
			 ThePer=new string[]{"20%","5%","5%","16%","5%","16%","16%","5%","12%"};	
			 TheAlign=new string[]{"left","right","right","left","center","left","left","right","left"};
			 TheHeadStr=new string[]{"����","ѧ��","����","Ժ(ϵ)/��","�꼶","רҵ","�����༶","����","�ܴ�"};
		}
		else
		{
			 ThePer=new string[]{"5%","16%","16%","16%","20%","5%","5%","5%","12%"};	
			 TheAlign=new string[]{"center","left","left","left","left","right","right","right","left"};
			 TheHeadStr=new string[]{"�꼶","רҵ","�����༶","�е���λ","����","ѧ��","����","����","�ܴ�"};
		}
		try{
			Response.Output.Write((new BLL_jxsj(this))._WAPXS_rpt(vXNXQ,vNJ,vCDDW,vKC,vYX,vZY,vRpt,ThePer,TheAlign,TheHeadStr));
		}catch(Exception ex){
			Response.Output.Write(ex.Message.ToString());
		}
	}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>