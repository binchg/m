<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vKS="",vCDDW="",vKC="",vTitle="δ¼�뿼����¼�Ŀγ̡�����";
	string[] ThePer=new string[]{"3%","19%","5%","3%","5%","5%","6%","6%","5%","5%","10%","10%","9%","12%"};
	string[] TheAlign=new string[]{"","","center","center","right","right","right","right","right","right","center","center","right","right"};
	string[] TheHeadStr=new string[]{"��<br>��","�γ�","ѧ<br>��","��<br>��","����<br>��","�࿼<br>����","Ӧ��<br>����","ʵ��<br>����","ȱ��<br>����","���<br>����","���罻<br>��ʱ��","ȫ����<br>��ʱ��","����1/2<br>ʱ�佻��<br>����","����2/3<br>ʱ�佻��<br>����"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	try{vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{vKS=Request.Form["sel_lc"].ToString().Trim();}catch(Exception){};
	try{vCDDW=Request.Form["sel_cddw"].ToString().Trim();}catch(Exception){};
	try{vKC=Request.Form["Sel_KC"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_kssw(this))._kctj_rpt(vXNXQ,vKS,vCDDW,vKC,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>