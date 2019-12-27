<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{	
	string vXNXQ="",vTitle="全校实习安排";
	string[] ThePer=new string[]{"5%","30%","5%","5%","25%","7%","10%","7%","6%"};
	string[] TheAlign=new string[]{"center","","right","right","","right","","right","center"};
	string[] TheHeadStr=new string[]{"序号","课程设计","学分","周数","行政班级","人数","周次","分组<br>个数","备注"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_jxsj(this))._qxkcsjap_rpt(vXNXQ,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>