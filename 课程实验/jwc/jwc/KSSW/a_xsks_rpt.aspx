<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vKS="",vXH="",vNJ="",vYX="",vZY="",vBJ="",vTitle="学生考试安排";
	string[] ThePer=new string[]{"15%","4%","13%","4%","2%","4%","12%","4%","10%","18%","9%","5%","3%"};
	string[] TheAlign=new string[]{"","right","","right","center","right","","right","","","center","",""};
	string[] TheHeadStr=new string[]{"考试时间","考试人数","课程","学分","批次","考试<br>人数","考场","考试<br>人数","主监考","辅监考","学号","姓名","性别"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vKS=Request.Form["sel_lc"].ToString().Trim();}catch(Exception){};
	try{ vXH=Request.Form["xh"].ToString().Trim();}catch(Exception){};
	try{ vNJ=Request.Form["sel_nj"].ToString().Trim();}catch(Exception){};
	try{ vYX=Request.Form["sel_yx"].ToString().Trim();}catch(Exception){};
	try{ vZY=Request.Form["Sel_zy"].ToString().Trim();}catch(Exception){};
	try{ vBJ=Request.Form["Sel_bj"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_kssw(this))._xsks_rpt(vXNXQ,vKS,vXH,vNJ,vYX,vZY,vBJ,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){}
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>