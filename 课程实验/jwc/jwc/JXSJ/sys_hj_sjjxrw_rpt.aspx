<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vYX="",vCDDW="",vXNXQ="",zfx_flag="",vTitle="δ���ű�ҵ���Ĵ��";
	string vRpt="",fzc="",tzc="";
	string[] ThePer;
	string[] TheAlign;
	string[] TheHeadStr;

	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));	
	if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
	{
		try{ vYX=Request.Form["sel_yx"].ToString().Trim();}catch(Exception){};
		try{ vCDDW=Request.Form["sel_cddw"].ToString().Trim();}catch(Exception){};
		try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
		try{ vRpt=Request.Form["radCx"].ToString().Trim();}catch(Exception){};
		try{ zfx_flag=Request.Form["zfx"].ToString().Trim();}catch(Exception){};
		try{ fzc=Request.Form["txtF"].ToString().Trim();}catch(Exception){};
		try{ tzc=Request.Form["txtT"].ToString().Trim();}catch(Exception){};
		
		if(vRpt=="0")
		{
			 ThePer=new string[]{"5%","5%","16%","16%","5%","19%","8%","5%","5%","14%"};	
			 TheAlign=new string[]{"center","center","left","left","right","left","center","right","right","left"};
			 TheHeadStr=new string[]{"�ܴ�","�꼶","רҵ","�����༶","����","����","�������","ѧ��","����","�е���λ"};
		}
		else
		{
			 ThePer=new string[]{"5%","5%","18%","18%","18%","5%","20%","5%","5%"};	
			 TheAlign=new string[]{"center","center","left","left","left","right","left","right","right"};
			 TheHeadStr=new string[]{"�ܴ�","�꼶","Ժ(ϵ)/��","רҵ","�����༶","����","����","ѧ��","����"};
		}
		
		try{
			Response.Output.Write((new BLL_jxsj(this))._SJJXRW_rpt(vXNXQ,vYX,vCDDW,fzc,tzc,zfx_flag,vRpt,ThePer,TheAlign,TheHeadStr));
		}catch(Exception ex){
			Response.Output.Write(ex.Message.ToString());
		}
	}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>