//=====================.net�ͻ�����֤2.0===========================

//�������ݺ���
function Export(WindowObject){
	var i,j,k;
	var Len=1;
	var tables=WindowObject.document.all.tags("table");
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
			alert("����IEѡ��������ActiveX�ؼ����ã�"); 
			return;
		} 
	}
}

function ck(http)
{
  var IP="http://HJF/NetWeb/"+http;
  window.top.main.location.href=IP;
  dh('Home','Operation','Stock','Storage','Report','Sys','Help');
}

function fob(n, d)
{
   var p,i,x;if(!d) d=document;
   if((p=n.indexOf("?"))>0&&parent.frames.length) 
   {
       d=parent.frames[n.substring(p+1)].document;
       n=n.substring(0,p);
   }
   if(!(x=d[n])&&d.all) 
   x=d.all[n];
   for (i=0;!x&&i<d.forms.length;i++) 
   x=d.forms[i][n];
   for(i=0;!x&&d.layers&&i<d.layers.length;i++) 
   x=fob(n,d.layers[i].document); 
   return x;
} 	   

function cb()
{
   var a=cb.arguments;
   var name=fob(a[0]);
   e=document.forms(0).elements;
   if (name.checked==true)
   {
      for (i=0;i<e.length;i++)
      {
         e[i].checked=true;
      }
   }
   else
   {
      for (i=0;i<e.length;i++)
      {
         e[i].checked=false;
      }
   }
}

function vdf() 
{
   var i,j,name,value,message,length,type,a=vdf.arguments,cb_name;
   for (i=0; i<(a.length-2); i+=3) 
   {
       if (a[i].indexOf('#')!=-1)
       {
           name=fob(a[i].substr(0,a[i].indexOf('#')));
           cb_name=fob(a[i].substr((a[i].indexOf('#')+1),a[i].length));
       }
       else
       {
          name=fob(a[i]); // �ؼ�����
       }
       message=a[i+1]; // ��ʾ��Ϣ
       type=a[i+2]; // ����
       if (type!="r_time")
       {
          value=name.value.replace(/ +/g, ""); // �ؼ�ֵ
       }
       else
       {
          value=name.value;
       }
   
       if (name) 
       {
          
       // ===============�жϸ�ѡ���Ƿ�ѡ��================ //
          if (type=="r_cb")
          {      
             e=document.forms(0).elements;
             var flag=false;
             for (i=0;i<e.length;i++)
             { 
                if (e[i]!=cb_name)
                {
                   if (e[i].checked==true)
                   {
                       flag=true;
                       break;
                   }
                }
                if (i==e.length-1)
                {
                    break;
                }
             }
             if (flag==false)
             {
                alert(message+"!\n"); //Ϊ��ʱ���ֵ���ʾ
                return false;
             }
          }
          
          // ===============�ж��������Ƿ�ѡ��================ //
          if (type=="r_sl")
          {
            if (name.selected==false)
            {
                 alert(message+"!\n"); //Ϊ��ʱ���ֵ���ʾ
                 return false;
            }
          }
          
          // ===============����Ϊ�յ��ж�================ //
          if (type=="r") 
          {
             if (value=="") // �ж��Ƿ�Ϊ��
             {
                 alert(message+"!\n"); //Ϊ��ʱ���ֵ���ʾ
                 name.focus();
                 name.select();
                 return false;
             }
          }
          
          // ===============����Ϊ�յ��ж�,������ý���================ //
          if (type=="o_r") 
          {
             if (value=="") // �ж��Ƿ�Ϊ��
             {
                 alert(message+"!\n"); //Ϊ��ʱ���ֵ���ʾ
                 return false;
             }
          }
         // ===============ֻ����������================ //
         if (type=="r_china")
         {
             if (value.search(/^[\u4e00-\u9fa5]+$/)==-1) 
             {
                  alert(message+"!\n"); // �жϲ���Ϊ��
                  name.focus();
                  name.select();
                  return false;
             }
         }
         
         // ===============����Ϊ��,���������ֻ����ַ��ж�================ //
         if (type=="r_num_char")
         {
             if (value=="")
             {
                  alert(message+"!\n"); //Ϊ��ʱ���ֵ���ʾ
                 name.focus();
                 name.select();
                 return false;
             }
             if (value.search(/^[0-9a-zA-Z]+$/)==-1) 
             {
                  alert(message+"!\n"); //Ϊ��ʱ���ֵ���ʾ
                 name.focus();
                 name.select();
                 return false;
             }
          }
          
          // ===============����Ϊ�գ���Ϊ��ʱ��������================ //
         if (type=="num")
         {
             if (value.search(/^[0-9]+$/)==-1 && value!="") 
             {
                  alert(message+"!\n"); // �жϲ���Ϊ��
                  name.focus();
                  name.select();
                  return false;
             }
         }
         
         // ===============����Ϊ��,�����������ж�================ //
         if (type=="r_num")
         {
             if (value=="")
             {
                  alert(message+"!\n");
                  name.focus();
                 name.select();
                  return false;
             }
             if (value.search(/^[0-9]+$/)==-1) 
             {
                  alert(message+"!\n"); // �жϲ���Ϊ��
                  name.focus();
                 name.select();
                  return false;
             }
          }
          
          // ===============��������С��n������================ //
          if (type.indexOf("r_num<")!=-1)
          {
              length=type.substring((type.indexOf('<')+1),type.length); // ���rn<������� 
   
              if (value=="") // Ϊ��������ʾ
              {
                  alert(message+"!\n");
                  name.focus();
                  name.select();
                  return false;
              }
              if (value.search(/^[0-9]+$/)==-1)  // ��������������ʾ
              {
                  alert(message+"!\n");
                  name.focus();
                  name.select();
                  return false;
              }
              if (value.length>length)  // �������ֳ�����������
              {
                 alert(message+"!\n");
                 name.focus();
                 name.select();
                 return false;
              }
          }
          
          // ===============�����������n������================ //
          if (type.indexOf("r_num>")!=-1)
          {
	         length=type.substring((type.indexOf('>')+1),type.length); // ���rn<�������
             if (value=="") // Ϊ��������ʾ
             {
                alert(message+"!\n");
                name.focus();
                name.select();
                return false;
             }
             if (value.search(/^[0-9]+$/)==-1)  // ��������������ʾ
             {
                alert(message+"!\n");
                name.focus();
                name.select();
                return false;
             }
             if (value.length<length)  // �������ֳ�����������
             {
                alert(message+"!\n");
                name.focus();
                name.select();
                return false;
             }
          }
          
          // ===============��������a-bλ֮�������================ //		  
	      if (type.indexOf("r_num#<>")!=-1)
	      {
              length=type.substr((type.indexOf('>')+1),type.length);
              length=length.substr(0,length.lastIndexOf("-"));
	          length1=type.substring((type.indexOf('-')+1),type.length) // ���rn<�������
              if (value=="") // Ϊ��������ʾ
	          {
		         alert(message+"!\n");
		         name.focus();
				 name.select();
				 return false;
			  }
			  if (value.search(/^[0-9]+$/)==-1) // ��������������ʾ
			  {
				 alert(message+"!\n");
				 name.focus();
				 name.select();
				 return false;
			  }
			  if (value.length<length || value.length>length1)  // �������ֳ�����������
			  {
				 alert(message+"!\n");
				 name.focus();
				 name.select();
				 return false;
			  }
		  }
		  // ===============����Ϊ��,������float����================ //
         if (type=="r_float")
         {
             if (value=="")
             {
                  alert(message+"!\n");
                  name.focus();
                  name.select();
                  return false;
             }
             if (value.search(/^[0-9]+$/)!=-1 || value.search(/^([0-9]+)|([0-9]+\.[0-9]*)|([0-9]*\.[0-9]+)$/)!=-1) 
             {
                return true;
             }
             else
             {
                alert(message+"!\n"); // �жϲ���Ϊ��
                  name.focus();
                  name.select();
                  return false;
             }
          }
		  
		  // ===============�ж�email,��һ������================ //	
	      if (type.indexOf("email")!=-1)
	      {
	         if (name.value!="")
	         {
	             if (value.search(/^[_\.a-z0-9]+@[a-z0-9]+[\.][a-z0-9]{2,}$/i)==-1)
		         {
		             alert(message+"!\n");
     	    	     name.focus();
		             name.select();
		             return false;
		         }
	          }
	       }

	       // ===============�ж�email,һ������================ //
			if (type.indexOf("r_email")!=-1)
			{
				if (name.value=="")
				{
				alert(message+"!\n");
				name.focus();
				name.select();
				return false;
				}
				if (value.search(/^[_\.a-z0-9]+@[a-z0-9]+[\.][a-z0-9]{2,}$/i)==-1)
				{
				alert(message+"!\n");
     	    			name.focus();
				name.select();
				return false;
				}
			}
	  
	   // ===============�ж�����,����2000-12-20================ //
          if (type=="r_date")
          {
              flag=true; 
              getdate=value;         
              if (getdate.search(/^[0-9]{4}-(0[1-9]|[1-9]|1[0-2])-((0[1-9]|[1-9])|1[0-9]|2[0-9]|3[0-1])$/)==-1) // �ж������ʽʱ����ȷ
              {
                   flag=false;
               }
               else
               {
                    var year=getdate.substr(0,getdate.indexOf('-'))  // �����
                    // �����������·�
					var transition_month=getdate.substr(0,getdate.lastIndexOf('-')); 
					var month=transition_month.substr(transition_month.lastIndexOf('-')+1,transition_month.length);
					if (month.indexOf('0')==0)
					{
					month=month.substr(1,month.length);
					}
					// ��������������
					var day=getdate.substr(getdate.lastIndexOf('-')+1,getdate.length);
					if (day.indexOf('0')==0)
					{
					day=day.substr(1,day.length);
					}
					//alert(month);
					//alert(day)
					//return false;
                    if ((month==4 || month==6 || month==9 || month==11) && (day>30)) // 4,6,9,11�·����ڲ��ܳ���30
                    {
                    flag=false; 
                     }
					if (month==2)  // �ж�2�·�
					{
						if (LeapYear(year))
						{
							if (day>29 || day<1){ flag=false; }
						}
						else
						{
							if (day>28 || day<1){flag=false; }
						}
					}
					else
					{
					flag=true;
					}
			   }
          if (flag==false)
          {
              alert(message+"!\n"); //Ϊ��ʱ���ֵ���ʾ
              name.focus();
              name.select();
              return false;
          }
        }
        
        
        // ===============�ж�����,����2000-12-20================ //
          if (type=="r_time")
          {
              flag=true; 
              getdate=value;
              if (getdate.search(/^[0-9]{4}-(0[1-9]|[1-9]|1[0-2])-((0[1-9]|[1-9])|1[0-9]|2[0-9]|3[0-1]) ((0[1-9]|[1-9])|1[0-9]|2[0-4]):((0[1-9]|[1-9])|[1-5][0-9]):((0[1-9]|[1-9])|[1-5][0-9])$/)==-1) // �ж������ʽʱ����ȷ
              {
                   flag=false;
               }
               else
               {
                    var year=getdate.substr(0,getdate.indexOf('-'))  // �����
                    // �����������·�
					var transition_month=getdate.substr(0,getdate.lastIndexOf('-')); 
					var month=transition_month.substr(transition_month.lastIndexOf('-')+1,transition_month.length);
					if (month.indexOf('0')==0)
					{
					month=month.substr(1,month.length);
					}
					// ��������������
					var day=getdate.substr(getdate.lastIndexOf('-')+1,getdate.length);
					if (day.indexOf('0')==0)
					{
					day=day.substr(1,day.length);
					}
                    if ((month==4 || month==6 || month==9 || month==11) && (day>30)) // 4,6,9,11�·����ڲ��ܳ���30
                    { 
                        flag=false; 
                     }
					if (month==2)  // �ж�2�·�
					{
						if (LeapYear(year))
						{
							if (day>29 || day<1){ flag=false; }
						}
						else
						{
							if (day>28 || day<1){flag=false; }
						}
					}
					else
					{
					flag=true;
					}
			   }
          if (flag==false)
          {
              alert(message+"!\n"); //Ϊ��ʱ���ֵ���ʾ
              name.focus();
              name.select();
              return false;
          }
        }
        //�ж��Ƿ�����
//����		intYear ������ݵ�ֵ
//return	true: ������	false: ��������
function LeapYear(intYear) {
	if (intYear % 100 == 0) 
	{
		if (intYear % 400 == 0) { return true; }
	}
	else {
		if ((intYear % 4) == 0) { return true; }
	}
	return false;
}

      // ===============�жϵ绰������Ϊ��================ //
	  if (type.indexOf("tel")!=-1)
	  {
	     if (name.value!="")
	     {
                 if (value.search(/^(\([0-9]{3}\)|[0-9]{3}-)[0-9]{8}$/)==-1 && value.search(/^(\([0-9]{4}\)|[0-9]{4}-)[0-9]{7}$/)==-1)
		 {
		    alert(message+"!\n");
     	    	    name.focus();
		    name.select();
		    return false;
		  }
	     }
	  }
	  
	  // ===============�жϵ绰������Ϊ��================ //
	  if (type.indexOf("r_tel")!=-1)
	  {
	     if (name.value=="")
	     {
		    alert(message+"!\n");
		    name.focus();
		    name.select();
		    return false;
	     }
	     if (value.search(/^(\([0-9]{3}\)|[0-9]{3}-)[0-9]{8}$/)==-1 && value.search(/^(\([0-9]{4}\)|[0-9]{4}-)[0-9]{7}$/)==-1)
	     {
	        alert(message+"!\n");
     	    name.focus();
		    name.select();
		    return false;
	     }
	  }
	  
	  // ===============�ж��ֻ�������Ϊ��================ //
	  if (type.indexOf("mod")!=-1)
	  {
	     if (name.value!="")
	     {
                if (value.search(/^[0-9]{11}$/)==-1)
		{
		   alert(message+"!\n");
     	    	   name.focus();
		   name.select();
		   return false;
		}
	     }
	   }
	   
	   // ===============�ж��ֻ�������Ϊ��================ //
	   if (type.indexOf("r_mod")!=-1)
	   {
	      if (name.value=="")
	      {
		  alert(message+"!\n");
		  name.focus();
		  name.select();
		  return false;
	       }
	      if (value.search(/^[0-9]{11}$/)==-1)
	      {
		 alert(message+"!\n");
     	    	 name.focus();
		 name.select();
		 return false;
	       }
	   }
	   
	   // ===============�жϽֵ�================ //
	   if (type.indexOf("city")!=-1)
	   {
	      if (name.value!="")
	      {
            	 if (value.search(/^.{1,}(��|��|��).{1,}(·|��|��).{1,}��.{0,}$/)==-1)
		 {
		     alert(message+"!\n");
     	    	     name.focus();
		     name.select();
		     return false;
		  }
	       }
	   }
	   
	   // ===============�жϽֵ�������Ϊ��================ //
	   if (type.indexOf("r_city")!=-1)
	   {

	       if (name.value=="")
	       {
		  alert(message+"!\n");
		  name.focus();
		  name.select();
		  return false;
	       }

	       if (value.search(/^.{1,}(��|��|��).{1,}(·|��|��).{1,}��.{0,}$/)==-1)
	       {
		  alert(message+"!\n");
     	    	  name.focus();
		  name.select();
		  return false;
	       }
	   }
        }
    }
}




// ------------------��ϵͳ����--------------------
function dh()
{
	var a=dh.arguments;
	var i;
	for (i=0;i<a.length;i++)
	{
	    eval("window.top.nav.document."+a[i]+ ".src='Images/Top/btn_"+a[i]+".jpg'");
	}
}
// ��������ɫ������
var main_tr_onmouseover="#E4EFFC"; // ����main��tr����ƶ�onmouseover����ʱ����ɫ

// ��������ӡ���ܣ�����
var gLoadFinished = true; // ���ҳ����ر��
var gDataGridName = "id"; // Ҫ��ӡ�����ݵ�����
var Title="s";
			// ��JustPrint(TM) ��ӡ���񴰿�
function OpenJustPrintDlg()
{
	window.open('JustPrintService.aspx','_blank',"left=0,top=0,width=520,height=350,status=yes,resizable=no,directories=no,location=no,menubar=no,scrollbars=no,titlebar=no,toolbar=no");
				
}


