function showMenu_WEB()
{
var sTree='';

/*
vListStr ="����̬;../myweb/hm_look.asp?id=News;|����涨;../myweb/hm_look.asp?id=Rule;|��������;../myweb/hm_look.asp?id=Down;";
vListStr+="|У��;../myweb/hm_look.asp?id=XL;|��Ϣʱ��;../myweb/hm_look.asp?id=TIME;|������Ա;../myweb/hm_look.asp?id=Person;";
vListStr+="|ѧ�ƽ���;../myweb/hm_look.asp?id=Dept;|�ʾ����;../myweb/hm_look.asp?id=WJDC;|�α���;../myweb/hm_look.asp?id=KBFB;";
sTree+=addLinkGroup("Z01","�����ҳ","none",vListStr);
*/

sTree+=addLinkBlock("�޸�����;../MyWeb/User_ModPWD.asp;");
sTree+=addLinkBlock("�������;../MyWeb/Door_Look.asp;");
sTree+=addLinkBlock("WEB����;../MyWeb/M_Web.asp;");
sTree+=addLinkBlock("�鿴��־;../MyWeb/M_Log.asp;");
sTree+=addLinkBlock("���ù���;../MyWeb/M_Tools.asp;");
sTree+=addLinkBlock("�û�����;../MyWeb/M_Down.asp;");

//sTree+=addTempDiv('MyInfo','(null)');
//sTree+=addTempDiv('MyMsg','<hr>����6����Ϣ<hr>');
return(sTree);
}

function showMenu_BBS()
{
var sTree='';
sTree+=addLinkBlock("��̳��ҳ;../bbs/index_right.asp;");
return(sTree);
}
