<%@ Page Language="C#" %>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Import NameSpace="BLL.include"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vTitle="";
	string[]ThePer=new string[]{"4%","15%","19%","5%","10%","10%","5%","6%","6%","10%","10%"};
	string[]TheAlign=new string[]{"center","","","right","center","","center","right","right","center","center"};
	string[]TheHeadStr=new string[]{"���","�γ�","����<br>�ص�","ʵ��<br>����","����<br>����ʱ��", "����<br>����ѧ��","ȫ��<br>����ʱ��","��1Сʱ<br>��������","��1.5Сʱ<br>��������","���ѧ��","ȱ��ѧ��"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>

