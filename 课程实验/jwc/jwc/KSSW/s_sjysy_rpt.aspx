<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vKS="",vCDDW="",vTitle="����ӡ�Ծ���Ϣ";
	string[] ThePer1=new string[]{"6%","11%","3%","2%","11%","3%","5%","20%","10%","10%","10%","9%"};
	string[] ThePer2=new string[]{"4%","6%","4%","6%","4%","6%","4%","6%"};
	string[] TheAlign=new string[]{"","","right","center","","right","right","center","center","center","",""};
	string[] TheHeadStr1=new string[]{"�е���λ","�γ�","ѧ��","����","�Ծ�","��������","�Ծ�<br>��ӡ<br>����","�Ծ�(��16K)","����ֽ<br>(��16K)","�ݸ�ֽ<br>(��16K)","��ӡ��","��ӡ����"};
	string[] TheHeadStr2=new string[]{"ҳ��","��ҳ��","����","������","����","������","����","������"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	try{	vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{	vKS=Request.Form["sel_lc"].ToString().Trim();}catch(Exception){};
	try{	vCDDW=Request.Form["sel_cddw"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_kssw(this))._sjysy_rpt(vXNXQ,vKS,vCDDW,ThePer1,ThePer2,TheAlign,TheHeadStr1,TheHeadStr2).ToString().Trim());
	}catch(Exception ex){}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>