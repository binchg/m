<%@ Page Language="C#" %>
<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vKSDM="",vKSMC="",vKS="",USER_ID="",vHTML="";
	string vTitle="¼�뿼����¼";
	string[] vStr=new string[]{"",""};
	string[] vKSStr=new string[]{"",""};

	string[] ThePer=new string[]{"5%","25%","5%","20%","15%","25%","5%"};
	string[] TheAlign=new string[]{"center","","center","","","","center"};
	string[] TheHeadStr=new string[]{"���","�γ�","����","�࿼<br>ʱ��","����","¼�뿼����¼<br>ʱ������",""};
	BLL_kssw pSub=new BLL_kssw(this);
	
	USER_ID=pSub.USER_ID;
	
	vStr=pSub.GetTeaInfogh(USER_ID);
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	Response.Output.Write(pSub.Tea_KCJL_DrawHead(vStr[0],ThePer,TheHeadStr));
	if (Request.ServerVariables["REQUEST_METHOD"] == "POST")
	{
		try{vXNXQ=Request.Form["sel_xnxq"].ToString();}catch(Exception){}
		try{vKS=Request.Form["sel_lc"].ToString();}catch(Exception){}
		try{
		if (vKS!="")
		{
			vKSStr=vKS.Split(',');
			vKSDM=vKSStr[0];
			vKSMC=vKSStr[1];
		}
		}catch(Exception){}
		vHTML=pSub._Tea_KCJL_rpt(vXNXQ,vKSDM,USER_ID,vStr[1],ThePer,TheAlign);
		if(vHTML=="")
		{
			Response.Redirect ("../_help/Sorry.aspx?str=NO_DATA");
		}
		else
		{
			Response.Output.Write(vHTML);
		}
	}
}
</script>
<script language=javascript src=../include/Scr/ind_subPublic.js></script>