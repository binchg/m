<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vKS="",vCDDW="",vKC="",vTitle="��ѡ���Ծ���ϸ";
	string[]ThePer=new string[]{"9%","5%","5%","6%","12%","3%","2%","8%","11%","6%","6%","6%","6%","3%","9%","3%"};
	string[]TheAlign=new string[]{"","right","right","","","right","center","","","","","","","right","right","right"};
	string[]TheHeadStr1=new string[]{"�е���λ","���Կγ�<br>��������","�Ծ���ѡ<br>���γ̡�<br>������","�γ̴���","�γ�����","ѧ��","����","�Ծ�<br>����","�Ծ�����","������","������","��������","�ϴα�<br>ѡ������","�Ծ�<br>ҳ��","����(��16K)","�ܷ�"};
	string[]TheHeadStr2=new string[]{"��<br>��","��<br>��<br>ֽ","��<br>��<br>ֽ"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vKS=Request.Form["sel_lc"].ToString().Trim();}catch(Exception){};
	try{ vCDDW=Request.Form["sel_cddw"].ToString().Trim();}catch(Exception){};
	try{ vKC=Request.Form["Sel_KC"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_kssw(this))._sjyxd_rpt(vXNXQ,vKS,vCDDW,vKC,ThePer,TheAlign,TheHeadStr1,TheHeadStr2).ToString());
	}catch(Exception ex){}	
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>