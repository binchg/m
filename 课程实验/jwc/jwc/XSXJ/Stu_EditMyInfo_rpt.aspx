<%@ Page %>
<%@ Import NameSpace="BLL.XSXJ" %>
<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<iframe name="TempFrame" src="..\private\List_SYDQ.aspx" width=0 height=0></iframe>
<script language="JavaScript">
function editdisable(){
var N=document.all.vNU.value;
disbut1.style.display='none';
disbut2.style.display='';
//document.all.txt0.disabled=false;
for (i=0;i<=N-1;i++)
{document.all.item("txt"+i).disabled=false;}
document.all.txt0.focus();
}

function SaveMe(){
var str,N,flag,sfzh,csrq
var Chkhid_rq=document.all.hidSubmit_rq;
var Chkhid_sfzh=document.all.hidSubmit_sfzh;
str=Chkhid_rq.value;

N=Chkhid_rq.TRNum;
flag=Chkhid_rq.flag
if (flag=="1"){
	document.all("txt"+N).focus();
	document.all("txt"+N).select();
	return false
 	}
 	
str=Chkhid_sfzh.value;
N=Chkhid_sfzh.TRNum
flag=Chkhid_sfzh.flag
if (flag=="1"){
	document.all("txt"+N).focus();
	document.all("txt"+N).select();
	return false
 	}
 	
return window.confirm('�Ƿ񱣴��¼��')
}

function showSFDQ(theSYSF)
{
	url="private/List_SYDQ.aspx?sysf="+theSYSF;
	//alert(url);
	TempFrame.location.href=url;
}

</script>
<FONT face="����"></FONT>
<script language="VBScript">
function ValueChk(theID,N)
	dim sfzh,csrq
	'msgbox document.all.hidtxt_rq.value
	'msgbox document.all.hidtxt_sfzh.value'
	
	if eval("T"&N&".value")="���֤��" then
		if (len(trim(theID.value))=15 or len(trim(theID.value))=18 ) then 
			if not  isnumeric((left(theID.value,len(theID.value)-1))) then 				
				msgbox "���֤�Ų���ȷ!"
				document.all.hidSubmit_sfzh.value="���֤�Ų���ȷ!"
				document.all.hidSubmit_sfzh.TRNum=N
				document.all.hidSubmit_sfzh.flag="1"
				exit function
			else
				document.all.hidSubmit_sfzh.flag="0"

			end if
			if (right(theID.value,1)="x" and len(trim(theID.value))=18) or isnumeric(right(theid.value,1))  then 
				document.all.hidSubmit_sfzh.flag="0"
			else
				
				msgbox "���֤�����һλ����ȷ!"
				document.all.hidSubmit_sfzh.value="���֤�����һλ����ȷ!"
				document.all.hidSubmit_sfzh.TRNum=N
				document.all.hidSubmit_sfzh.flag="1"
				exit function
			end if
		else	
			
			msgbox "���֤�ų��Ȳ���ȷ!"
			document.all.hidSubmit_sfzh.value="���֤�ų��Ȳ���ȷ!"
			document.all.hidSubmit_sfzh.TRNum=N
			document.all.hidSubmit_sfzh.flag="1"
			exit function
		end if	
			
		if (len(trim(theID.value))=15 and (document.all.hidtxt_rq.value)<>"19000101") then 
			sfzh="19"+mid(theID.value,7,6)			
			csrq=document.all.hidtxt_rq.value			
			if (trim(sfzh)<>trim(csrq)) then
				msgbox "���֤����������ڲ���!"
				document.all.hidSubmit_sfzh.TRNum=N
				document.all.hidSubmit_sfzh.flag="1"
				exit function					
			else
				document.all.hidSubmit_sfzh.flag="0"
			end if			
		end if
		
		if (len(trim(theID.value))=18 and (document.all.hidtxt_rq.value)<>"19000101") then 
			if (mid(theID.value,7,8)<>(document.all.hidtxt_rq.value)) then
				msgbox "���֤����������ڲ���!"
				document.all.hidSubmit_sfzh.TRNum=N
				document.all.hidSubmit_sfzh.flag="1"
				exit function
			else
				document.all.hidSubmit_sfzh.flag="0"	
			end if	
		end if
		
		if(len(trim(document.all.hidtxt_sfzh.value))=15 and (document.all.hidtxt_rq.value)<>"19000101") then 
			sfzh="19"+mid(document.all.hidtxt_sfzh.value,7,6)			
			csrq=document.all.hidtxt_rq.value			
			if (trim(sfzh)<>trim(csrq)) then
				msgbox "���֤����������ڲ���!"
				document.all.hidSubmit_sfzh.TRNum=N
				document.all.hidSubmit_sfzh.flag="1"
				exit function					
			else
				document.all.hidSubmit_sfzh.flag="0"
			end if
		end if
		
		if(len(trim(document.all.hidtxt_sfzh.value))=18 and (document.all.hidtxt_rq.value)<>"19000101") then 
			if (mid(document.all.hidtxt_sfzh.value,7,8)<>(document.all.hidtxt_rq.value)) then
				msgbox "���֤����������ڲ���!"
				document.all.hidSubmit_sfzh.TRNum=N
				document.all.hidSubmit_sfzh.flag="1"
				exit function
			else
				document.all.hidSubmit_sfzh.flag="0"	
			end if	
		end if
		sfzh=theID.value
		document.all.hidSubmit_sfzh.value=sfzh		
	end if 
	
	if eval("T"&N&".value")="��������" then
		if(not isDate(theID.value)) then
			msgbox "������ȷ�����ڸ�ʽ�����������!"
			document.all.hidSubmit_rq.value="������ȷ�����ڸ�ʽ�����������!"
			document.all.hidSubmit_rq.TRNum=N
			document.all.hidSubmit_rq.flag="1"
			exit function
		else
			document.all.hidSubmit_rq.flag="0"
			temp=Ubound(split(theID.value,"-"))
			TheStr=""
			if temp=2 and Len(theID.value)<>10 then
				TheStr=split(theID.value,"-")(0)&"-"
				temp=cint(split(theID.value,"-")(1))
				if temp<10 then 
					TheStr=TheStr&"0"&temp&"-"
				else 
					TheStr=TheStr&temp&"-"
				end if
				temp=cint(split(theID.value,"-")(2))
				if temp<10 then 
					TheStr=TheStr&"0"&temp
				else 
					TheStr=TheStr&temp
				end if
				theID.value=TheStr
			end if
		end if	
		
		if (len(document.all.hidSubmit_sfzh.value)=15) then
			sfzh="19"+mid(document.all.hidSubmit_sfzh.value,7,6)
			csrq=mid(theID.value,1,4)+mid(theID.value,6,2)+mid(theID.value,9,2)
			if(trim(sfzh)<>trim(csrq)) then
				msgbox "���֤����������ڲ���!"
				document.all.hidSubmit_rq.TRNum=N
				document.all.hidSubmit_rq.flag="1"
				exit function
			else
				document.all.hidSubmit_rq.flag="0"	
			end if
		end if
		
		if (len(document.all.hidSubmit_sfzh.value)=18) then
			sfzh=mid(document.all.hidSubmit_sfzh.value,7,8)
			csrq=mid(theID.value,1,4)+mid(theID.value,6,2)+mid(theID.value,9,2)
			if(trim(sfzh)<>trim(csrq)) then
				msgbox "���֤����������ڲ���!"
				document.all.hidSubmit_rq.TRNum=N
				document.all.hidSubmit_rq.flag="1"
				exit function
			else
				document.all.hidSubmit_rq.flag="0"	
			end if
		end if
		
	end if 
	  
	if eval("T"&N&".value")="��������" then
		if (instr(trim(theID.value),"@")<=0 or instr(trim(theID.value),"@")=1 ) and (theID.value<>"") then
		    msgbox "���������ʽ����ȷ��"
			theID.value=""
			theID.focus()
		end if
	end if
	
	if eval("T"&N&".value")="��ϵ�绰" then
		if not isnumeric(trim(theID.value)) and theID.value<>"" then 
			msgbox "��ϵ�绰��Ϊ���֣�"
			theID.value=""
			theID.focus()
		end if
	end if
end function
</script>
<%
BLL.XSXJ.XSXJ_XSDA pSub=new BLL.XSXJ.XSXJ_XSDA(this);
BLL.XSXJ.XSXJ_STU xsxj=new BLL.XSXJ.XSXJ_STU();
int R=0;
string USER_ID=pSub.USER_ID;

bool DoorValue=pSub.TimeArea("EDITXSXX","");
if(!DoorValue) Response.Redirect ("../_help/sorry.aspx?str=�����ĸ��˻�����Ϣʱ�䣡");

Response.Output.Write(pSub.HtmlHear());
Response.Output.Write("<form name='form1' method='POST' action='Stu_EditMyInfo_rpt.aspx' >");
//*************************����***********************
if (Request.ServerVariables["REQUEST_METHOD"]=="POST")
{ 
	string vSYSFId="",vSYSF="";
	int N=0,i=0;
	try{N=int.Parse(Request.Form["vNU"].ToString());}catch(Exception){N=0;}
	string[,] eValue=new string[2,N];
	for(i=0;i<=N-1;i++)
	{
		vSYSFId=Request.Form["vName"+i].ToString();		
		try{eValue[0,i]=Request.Form["vName"+i].ToString();}catch(Exception){eValue[0,i]="";}
		eValue[0,i]=pSub.RequestSafeValue(eValue[0,i]);
		if(vSYSFId=="dqdm")
		{	
			try{vSYSF=Request.Form["txt"+i].ToString();}catch(Exception){vSYSF="";}	
			if(vSYSF=="")
			{
				try{eValue[1,i]=Request.Form["sydq"].ToString();}catch(Exception){eValue[1,i]="";}
				//Response.Write(eValue[1,i]);
			}
			else
			{
				try{eValue[1,i]=Request.Form["txt"+i].ToString();}catch(Exception){eValue[1,i]="";}
			}
		}
		else
		{
			try{eValue[1,i]=Request.Form["txt"+i].ToString();}catch(Exception){eValue[1,i]="";}			
		}
		eValue[1,i]=pSub.RequestSafeValue(eValue[1,i]);
	}
	xsxj.SetXSXXEditStuInfo(USER_ID,N,eValue); 
	
//�޸��ˣ�wz  �޸�ʱ�䣺2006-11-26 
/*	for(i=0;i<=N-1;i++)
	{
		vSYSF=Request.Form["vName"+i].ToString();
		try{eValue[0,i]=Request.Form["vName"+i].ToString();}catch(Exception){eValue[0,i]="";}
		eValue[0,i]=pSub.RequestSafeValue(eValue[0,i]);
		try{eValue[1,i]=Request.Form["txt"+i].ToString();}catch(Exception){eValue[1,i]="";}
		eValue[1,i]=pSub.RequestSafeValue(eValue[1,i]);
	}*/
	                       			
}
//*************************End*************************


R=xsxj.GetTableEditStuInfo();
if (R>0)
{
	Response.Output.Write(xsxj.DrawMainEditStuInfo(USER_ID));
}
else
{
	 Response.Redirect ("../_help/Sorry.aspx?str=��ʱ��û�п���ѧ����Ϣ�޸Ĺ���");
}
Response.Output.Write("</form>");
Response.Output.Write(pSub.HtmlTrail());
%>
