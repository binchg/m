<%@ Page language="c#" Codebehind="S_LimitUserLeft_rpt.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.admin.S_LimitUserLeft_rpt" %>
<script language="JavaScript">
function ChkALL(theObj){
var i,iR;
//try{iR=window.TheTable.rows.length-1;}catch(err){iR=0;}
try{iR=document.all.count.value;}catch(err){iR=0;}
if(iR<1) return false;
if(iR>1000) window.status="���ڽ���ȫѡ���������Ե�Ƭ��";
if(theObj.title=='ȫѡ'){
theObj.title='����ȫѡ';
theObj.src='../images/button/rc/ChkAll_2.gif';
for(i=1;i<=iR;i++) eval("document.all.Chk"+i+".checked=true"); 
}else{
theObj.title='ȫѡ';
theObj.src='../images/button/rc/ChkAll_1.gif';
for (i=1;i<=iR;i++) eval("document.all.Chk"+i+".checked=false");  
}

window.status=""
}
</script>
<FONT face="����"></FONT>
