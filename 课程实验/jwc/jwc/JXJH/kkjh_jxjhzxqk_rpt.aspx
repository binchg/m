<%@Import NameSpace="BLL.JXJH"%>
<%@Import NameSpace="BLL.include"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vRpt="",vNJ="",vTitle="��ѧ�ƻ�ִ�����",vXNXQ="";
	string[] ThePer=new string[]{"10%","3%","3%","3%","3%","3%","3%","3%","3%","3%","3%","3%","3%","3%","3%","3%","3%","3%","3%","6%","6%","6%","6%","6%","6%"};
	string[] TheAlign=new string[]{"","right","right","right","right","right","right","right","right","right","right","right","right","right","right","right","right","right","right","right","right","right","right","right","right"};
	string[] TheHeadStr1=new string[]{"רҵ","�ƻ�����<br>�γ�����","�ƻ�����<br>�γ�ѧ��","����ѧ��<br>�ƻ�����<br>�γ�����","����ѧ��<br>�ƻ�����<br>�γ�ѧ��","����ѧ��<br>ʵ�ʿ���<br>�γ�����","����ѧ��<br>ʵ�ʿ���<br>�γ�ѧ��","�ƻ�����<br>��������","�ƻ�����<br>����ѧ��","����ѧ��<br>�ƻ�����<br>��������","����ѧ��<br>�ƻ�����<br>����ѧ��","����ѧ��<br>ʵ�ʿ���<br>��������","����ѧ��<br>ʵ�ʿ���<br>����ѧ��"};
	string[] TheHeadStr2=new string[]{"����","��ѡ","��ѡ","����","��ѡ","��ѡ","����","��ѡ","��ѡ","����","��ѡ","��ѡ","����","��ѡ","��ѡ","����","��ѡ","��ѡ"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"Styles_Rpt"));
	try{ vRpt=Request.Form["radgs"].ToString().Trim();}catch(Exception){};
	try{ vNJ=Request.Form["sel_nj"].ToString().Trim();}catch(Exception){};
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	if(vRpt.Trim()=="2"){
		TheHeadStr2=new string[]{"����","רҵ<br>����","רҵ","����","רҵ<br>����","רҵ","����","רҵ<br>����","רҵ","����","רҵ<br>����","רҵ","����","רҵ<br>����","רҵ","����","רҵ<br>����","רҵ"};
	}
	Response.Output.Write((new private_JXJH()).KKJH_JXJHZXQK(vNJ,TheHeadStr1,TheHeadStr2).ToString());
	if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
	{
		try{
			Response.Output.Write((new private_JXJH()).KKJH_JXJHZXQK(vRpt,vNJ,vXNXQ,ThePer,TheAlign,TheHeadStr1,TheHeadStr2).ToString());
		}catch(Exception ex){
			Response.Output.Write(ex.Message.ToString());
		}
	}
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>



