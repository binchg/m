<%@ Import NameSpace="BLL.JXJH"%>
<%@ Page Language="C#" %>

<script language=C# runat=server>
private void Page_Load(object sender,System.EventArgs e){
	string vTitle="���ۿγ���Ϣ";
	string [] ThePer=new string[]{"5%","5%","37%","5%","8%","5%","5%","5%","5%","20%"};
	string [] TheAlign=new string[]{"center","center","","right","right","right","right","right","right","center"};
	string [] TheHeadStr=new string[]{"���","ѡ��","�γ�","ѧ��","��ѧʱ","����<br>ѧʱ","ʵ��<br>ѧʱ","�ϻ�<br>ѧʱ","����<br>ѧʱ","�е���λ"};
	string vNJ="";
	private_JXJH pJ=new private_JXJH(this);
	Response.Output.Write(pJ.page_Head_HTML(vTitle,"styles_rpt"));
	
	try{
		vNJ=Request.QueryString["nj"].ToString().Trim();
		string vZYID=Request.QueryString["id"].ToString().Trim();
		string vKC=Request.QueryString["kc"].ToString().Trim();
		Response.Output.Write(pJ.ScriptBolck_status("���ڲ�ѯ����....���Ժ�..."));
		
		Response.Output.Write(pJ.Set_ZYKC_Rpt(vNJ,vZYID,vKC,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception){
		//Response.Output.Write(pJ.ScriptBolck_status("���ڲ�ѯ����....���Ժ�..."));
		Response.Output.Write(pJ.DrawHead(ThePer,TheHeadStr));
	}
	Response.Output.Write(pJ.page_Bottom_HTML());
	
}
</script>

<script language="javascript">
function SelectUser(theID){
var PivID,PivColor,vColor,PivFontColor
vColor='#89bfa7'

PivID=document.all.PSTemp.ValueID
PivColor=document.all.PSTemp.PivColor
PivFontColor=document.all.PSTemp.PivFontColor

if (PivColor=="Noting" ){
    document.all.PSTemp.PivColor=theID.style.backgroundColor;
    document.all.PSTemp.PivFontColor=theID.style.color
    document.all.PSTemp.ValueID=theID.id;
    theID.style.backgroundColor=vColor;
    theID.style.color="white";
    SubmitUserID(theID.NJ,theID.ZY,theID.KC,theID.RowXH,theID.del,theID.zfx);
	}
else{
    eval(PivID+".style.backgroundColor='"+PivColor+"';");
    eval(PivID+".style.color='"+PivFontColor+"';");
    document.all.PSTemp.PivColor=theID.style.backgroundColor;
    document.all.PSTemp.PivFontColor=theID.style.color
    document.all.PSTemp.ValueID=theID.id;
    theID.style.backgroundColor=vColor;
    theID.style.color="white";
    SubmitUserID(theID.NJ,theID.ZY,theID.KC,theID.RowXH,theID.del,theID.zfx);
	}
}

function SubmitUserID(NJ,ZY,KC,RowXH,del,zfx){
parent.document.all.RowXH.value=RowXH
var vURL='../include/PublicSetVar.aspx?p=KCINFO&nj='+NJ+'&zy='+ZY+'&kc='+KC+"&flag="+zfx;
//alert(vURL);
parent.frmKC.location.href=vURL;
if (del=="1") {parent.document.all.delbtn.disabled=true}else{parent.document.all.delbtn.disabled=false}
}
</script> 


