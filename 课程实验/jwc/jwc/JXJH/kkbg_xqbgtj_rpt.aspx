<%@Import NameSpace="BLL.JXJH"%>
<%@ Page Language="C#" %>

<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string CUR_XNXQ="",vYX="";
	private_JXJH pJ=new private_JXJH(this);
	Response.Output.Write(pJ.page_Head_HTML("���α�����ͳ�Ʊ�","styles_Rpt"));
	try{ CUR_XNXQ=Request["sel_xnxq"].ToString().Trim();}catch(Exception){}
	try{ vYX=Request["sel_yx"].ToString().Trim();}catch(Exception){}
	string[] ThePer=new string[]{"6%","16%","10%","20%","8%","8%","8%","8%","8%","8%"};
	string[] TheAlign=new string[]{"center","","center","","center","center","center","center","center","center"};
	string[] TheHeadStr1=new string[]{"���","Ժ(ϵ)��","�꼶","רҵ","����γ�����","������ڸ���"};
	string[] TheHeadStr2=new string[]{"����","����","�޸�","����","����","�޸�"};
	
	try{
		Response.Output.Write(pJ.XQBGTJ_Rpt(CUR_XNXQ,vYX,ThePer,TheAlign,TheHeadStr1,TheHeadStr2).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	Response.Output.Write(pJ.page_Bottom_HTML());
}
</script>

