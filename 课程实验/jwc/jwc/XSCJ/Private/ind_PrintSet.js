document.write ("<OBJECT classid='CLSID:8856F961-340A-11D0-A96B-00C04FD705A2' height=0 id=wb name=wb width=0></OBJECT>");

//��ӡҳ��Ԥ��
function PrintPreview(){
	try{
	 	wb.execwb(7,1);
	}catch(e){}
}

//��ӡ
function Print(){
	try{
		//if(confirm('�Ƿ��ӡ��'))
		//wb.execwb(6,6); 
		window.print();
	}catch(e){}
}

//����ҳüҳ��
function printsethb()
{
	var hkey_root="HKEY_CURRENT_USER";
        var hkey_path="\\Software\\Microsoft\\Internet Explorer\\PageSetup";
  	var hkey_key="";
  	try{
  		RegWsh =new ActiveXObject("WScript.Shell"); 
		try{
		
			hkey_key="\\header"; 
			RegWsh.RegWrite(hkey_root+hkey_path+hkey_key,"");
			hkey_key="\\footer";
			RegWsh.RegWrite(hkey_root+hkey_path+hkey_key,"");
			
		}catch(e){alert("ϵͳ�޷��Զ�����ҳüҳ�ţ��뵥����ҳ�����á��������ã�")}
	}catch(e){}
}

//ҳ������
function PrintSetup(){
	try{
	 	wb.execwb(8,1); 
	 }catch(e){}
}

//�رմ���
function CloseWin(){
	try{
	 	wb.execwb(45,1); 
	 }catch(e){}
}

//��ӡ˵��
function HidPrintText(Object){
	var ObjectValue;
	ObjectValue=Object.value;
	if(ObjectValue=="show"){
		Object.innerHTML="��ʾ��ӡ˵��";
		Object.value="hidden";
		window.printtext.style.display='none';
	}else{
		Object.innerHTML="���ش�ӡ˵��";
		Object.value="show";
		window.printtext.style.display='';
	}	
}

//��������
function Export(){
	var i,j,k;
	var Len=1;
	var tables=window.document.all.tags("table");
	if(tables.length>0){
		var xlApp;             //���Excel���� 
		var xlBook;            //���Excel�������ļ� 
		var xlSheet;           //���Excel������� 
		try{ 
			xlApp = new ActiveXObject("Excel.Application");//����Excel����
			xlBook = xlApp.Workbooks.Add();  //����Excel�������ļ� 
			xlSheet = xlBook.ActiveSheet;    //����Excel������ 
			xlApp.Visible = true;            //����Excel����ɼ�
			for(i=0;i<tables.length;i++){
				if(tables[i].name=="theExportData")
				{
					var rowLen;
					var colLen;
					rowLen=tables[i].rows.length;                //table���������
					for(j=0;j<rowLen;j++){
						colLen=tables[i].rows(j).cells.length;   //table��������� 
						for(k=0;k<colLen;k++){                    //ΪExcel��ĵ�Ԫ��ֵ 
							try{
								xlSheet.Cells(Len+j+1,k+1).value=new String(tables[i].rows(j).cells(k).innerText);
							}catch(e){}
						}
					}
					Len+=rowLen;
				}
			}
		}catch(e){ 
			alert("������ActiveX�ؼ����ã�"); 
			return;
		} 
	}
}
//����ҳ��ʱ�Զ�����ҳüҳ��
printsethb();

