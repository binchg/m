document.write ("<input type=hidden PivColor='Noting' PivFontColor='Noting' ValueID='' name='PSTemp' value=''>")

//ѡ��ĳ�б���ɫ
function SelectUser(theID){	
	var PivID,PivColor,vColor,PivFontColor
	vColor='#89bfa7'												//������ɫ
	PivID=document.all.PSTemp.ValueID

	PivColor=document.all.PSTemp.PivColor							//�õ���һ����ѡ�е���ɫ
	PivFontColor=document.all.PSTemp.PivFontColor					//�õ���һ����ѡ�е�������ɫ

	if (PivColor=="Noting" ){										//��һ�α�ѡ��
		document.all.PSTemp.PivColor=theID.style.backgroundColor;	//���汻ѡ������ǰ����ɫ
		document.all.PSTemp.PivFontColor=theID.style.color
		document.all.PSTemp.ValueID=theID.id;
		theID.style.backgroundColor=vColor;							//�ñ�ѡ�е��б�ɫ
		theID.style.color="white";
		return true;												//ѡ��ʱ�Ĳ���
	}
	else if(PivID==theID.id){										//���ѡ��ͬһ�в����κβ���
		return false;	
	}
	else{															//���ǵ�һ��ѡ��Ĳ���
		eval(PivID+".style.backgroundColor='"+PivColor+"';");		//����һ��ѡ�е��л�ԭԭɫ
		eval(PivID+".style.color='"+PivFontColor+"';");		
		document.all.PSTemp.PivColor=theID.style.backgroundColor;	//���汻ѡ������ǰ����ɫ
		document.all.PSTemp.PivFontColor=theID.style.color		
		document.all.PSTemp.ValueID=theID.id;
		theID.style.backgroundColor=vColor;							//�ñ�ѡ�е��б�ɫ
		theID.style.color="white";
		return true;												//ѡ��ʱ�Ĳ���
	}
}

