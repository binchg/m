<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string  vTitle="����ʱ�䷢��";
	string[] ThePer=new string[]{"15%","20%","20%","20%","25%"};
	string[] TheAlign=new string[]{"center","center","center","center","center"};
	string[] TheHeadStr=new string[]{"����","��ʼʱ��","����ʱ��","����ʱ��","ռ���Ͽνڴ�"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	
	try{
		Response.Output.Write((new BLL_kssw(this))._kssj_rpt(ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>
