//����б�����
var ArrColID=new Array("user_xh","xb","xdkcs","xdxf","hdxf","wtgkcs","pjcj","jd","xfj","pjxfjd")
var ArrColName=new Array("ѧ��","�ձ�","�޶��γ�/������","�޶�ѧ��","���ѧ��","δͨ���γ�/������","ƽ���ɼ�","����","ѧ�ּ���","ƽ��ѧ�ּ���")
var ArrColOrderFS=new Array("desc","desc","desc","desc","desc","desc","desc","desc","desc","desc")
//�ұ��б�����
var ColId=new Array();
var ColName=new Array();
var ColOrderFS=new Array();

//��ʼ���ұ��б�����
function RightColdefineArray(theStr)
{
	var i,j;
	var OrderStr=new Array()
	if(theStr!="")
	{
		OrderStr=theStr.split("@")
	}
	
	for (i=0;i<=OrderStr.length-1;i++)
	{
		ColId[i]=OrderStr[i].split("|")[0];
		ColName[i]=OrderStr[i].split("|")[1];
		ColOrderFS[i]=OrderStr[i].split("|")[2];
	}
}

//��ʼ������б�����
function LeftColdefineArray()
{
	var i,j;
	for(i=0;i<=ColId.length-1;i++)
	{
		for(j=0;j<=ArrColID.length-1;j++)	
		{
			if(ColId[i]==ArrColID[j])
			{
				DelCol(ArrColID[j],"left")
			}
		}
		
	}
}

//����
function DrawDiv(ColId,ColName,ColOrderFS,sLeftorRight)
{
	var i,j;
	var vHTML="";
	var chkstr="";
	if (ColId.length>0)
	{
		vHTML+="<table width='100%' border=1 ID='"+sLeftorRight+"' CELLPADDING=0 CELLSPACING=0  bordercolorlight='#75A7AE' bordercolordark='#FFFFFF' id=LX>";
		for (i=0;i<=ColId.length-1;i++)
		{
			vHTML+="<tr id="+sLeftorRight+i+" value="+ColId[i]+" ondblclick=MoveCol(this.value,document.all."+sLeftorRight+"chk"+i+".checked,'"+sLeftorRight+"') style='cursor:hand' class=";
			if ((i+1)%2==0) vHTML+= "H>"; else 	vHTML+= "B>";	
			vHTML+="<td width=80% align=left>"+ColName[i]+"<br></td>";
			if(ColOrderFS[i]=="desc")chkstr=""; else chkstr="checked";
			vHTML+="<td width=20% align=center><input type=checkbox id="+sLeftorRight+"chk"+i+" value='asc' "+chkstr+" onclick=radSet(this,"+sLeftorRight+i+",'"+sLeftorRight+"')><br></td>";
			vHTML+="</tr>"
		}
		vHTML+="</table>";
	}
	return vHTML;
}


//����ߵı�
function DrawLeftDiv()
{
	var i,j;
	var vHTML="";
	vHTML=DrawDiv(ArrColID,ArrColName,ArrColOrderFS,"left");
	leftDiv.innerHTML=vHTML;
}

//���ұߵı�
function DrawRightDiv()
{
	var i,j;
	var vHTML="";
	vHTML=DrawDiv(ColId,ColName,ColOrderFS,"right");
	righDiv.innerHTML=vHTML;
}

//ɾ������ָ��
function DetelArrCol(theID,ColId,ColName,ColOrderFS)
{
	var i,j;
	for(i=0;i<=ColId.length-1;i++)
	{
		if(ColId[i]==theID)
		{
			ColId.splice(i,1);
			ColName.splice(i,1);
			ColOrderFS.splice(i,1);
		}
	}
}

//���һ��
function AddArrCol(ColIdval,ColNameval,ColOrderFSval,ColId,ColName,ColOrderFS)
{
	ColId.push(ColIdval);
	ColName.push(ColNameval);
	if(ColOrderFSval=="")ColOrderFSval="desc";
	ColOrderFS.push(ColOrderFSval);
}

//ɾ��һ��
function DelCol(theID,sLeftorRight)
{
	if(sLeftorRight=="left")
	{
		DetelArrCol(theID,ArrColID,ArrColName,ArrColOrderFS);
	}
	else
	{
		DetelArrCol(theID,ColId,ColName,ColOrderFS);
	}
}

//�ƶ���
function MoveCol(id,orderfs,sLeftorRight)
{
	var i,j;
	var sOrder="desc";
	if(orderfs)	sOrder="asc"; else	sOrder="desc";
	if(sLeftorRight=="left")
	{
		for(i=0;i<=ArrColID.length-1;i++)
		{
			if(ArrColID[i]==id)
			{
				AddArrCol(ArrColID[i],ArrColName[i],ArrColOrderFS[i],ColId,ColName,ColOrderFS)
				DelCol(ArrColID[i],sLeftorRight)				
			}
		}
	}
	else
	{
		for(i=0;i<=ColId.length-1;i++)
		{
			if(ColId[i]==id)
			{
				AddArrCol(ColId[i],ColName[i],ColOrderFS[i],ArrColID,ArrColName,ArrColOrderFS)
				DelCol(ColId[i],sLeftorRight)
			}
		}
	}
	
	DrawLeftDiv()
	DrawRightDiv()
}

//��ѡ�����¼�
function radSet(theID,trobj,sLeftorRight)
{
	var i,j;
    var sOrder="desc"
	if(theID.checked)
	{
		sOrder="asc"
	}
	else
	{
		sOrder="desc"
	}
	
	if(sLeftorRight=="left")
	{
		for(i=0;i<=ArrColID.length-1;i++)
		{
			if(trobj.value==ArrColID[i])
				ArrColOrderFS[i]=sOrder
		}
	}
	else
	{
		for(i=0;i<=ColId.length-1;i++)
		{
			if(trobj.value==ColId[i])
				ColOrderFS[i]=sOrder
		}
	}
}

//ȷ������
function setPm()
{
	var i,j;
	var sPmstr=""
	for(i=0;i<=ColId.length-1;i++)
	{
		if(i==0)
		{
			sPmstr=ColId[i]+'|'+ColName[i]+'|'+ColOrderFS[i];
		}
		else
		{
			sPmstr+='@'+ColId[i]+'|'+ColName[i]+'|'+ColOrderFS[i];
		}
	}
	window.returnValue=sPmstr;
	window.close();
	
}


//******************************************��ҷ��������*******************************
//var OndragValue
//var Ondragorderfs
//var OndragsLeftorRight

//function SetOndragstart(id,orderfs,sLeftorRight)
//{
//	OndragValue=id
//	Ondragorderfs=orderfs
//	OndragsLeftorRight=sLeftorRight
//}

//function SetOndragend()
//{
//	var iX=window.event.x
//	var iY=window.event.y
//	var OndragendObj=document.elementFromPoint(iX, iY)
//	if(OndragsLeftorRight=="left")
//	{
//		if(OndragendObj.id=="righDiv")
//		{
//			MoveCol(OndragValue,Ondragorderfs,OndragsLeftorRight)
//		}
//	}
//	else
//	{
//		if(OndragendObj.id=="leftDiv")
//		{
//			MoveCol(OndragValue,Ondragorderfs,OndragsLeftorRight)
//		}
//	}
//	
//}
//***********************************************End**************************************