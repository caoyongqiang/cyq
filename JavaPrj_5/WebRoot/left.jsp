<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%@ page import="com.sanqing.po.Users"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>4S店客户管理系统</title>
<style type="text/css">

body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-image: url(images/left.gif);
}

</style>
<link href="css/css.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
</head>
<SCRIPT language=JavaScript>
function tupian(idt){
    var nametu="xiaotu"+idt;
    var tp = document.getElementById(nametu);
    tp.src="images/ico05.gif";//图片ico04为白色的正方形
	
	for(var i=1;i<31;i++)
	{
	  
	  var nametu2="xiaotu"+i;
	  if(i!=idt*1)
	  {
	    var tp2=document.getElementById('xiaotu'+i);
		if(tp2!=undefined)
	    {tp2.src="images/ico06.gif";}//图片ico06为蓝色的正方形
	  }
	}
}

function list(idstr){
	var name1="subtree"+idstr;
	var name2="img"+idstr;
	var objectobj=document.all(name1);
	var imgobj=document.all(name2);
	
	
	//alert(imgobj);
	
	if(objectobj.style.display=="none"){
		for(i=1;i<10;i++){
			var name3="img"+i;
			var name="subtree"+i;
			var o=document.all(name);
			if(o!=undefined){
				o.style.display="none";
				var image=document.all(name3);
				//alert(image);
				image.src="images/ico04.gif";
			}
		}
		objectobj.style.display="";
		imgobj.src="images/ico03.gif";
	}
	else{
		objectobj.style.display="none";
		imgobj.src="images/ico04.gif";
	}
}

</SCRIPT>

<body>
<%Users u = (Users)session.getAttribute("users"); %>
<table width="198" border="0" cellpadding="0" cellspacing="0" class="left-table01">
  <tr>
    <TD>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
		  <tr>
			<td width="207" height="55" background="images/nav01.gif">
				<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
				  <tr>
					<td width="25%" rowspan="2"><img src="images/ico02.gif" width="35" height="35" /></td>
					<td width="75%" height="22" class="left-font01">您好，<span class="left-font02">${sessionScope.users.username}</span></td>
				  </tr>
				  <tr>
					<td height="22" class="left-font01">
						[&nbsp;<a href="welcome.jsp" target="_top" class="left-font01">退出</a>&nbsp;]</td>
				  </tr>
				</table>
			</td>
		  </tr>
		</table>
		
       
	    <!--  线索信息开始    -->
	  <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="8%" height="12"><img name="img2" id="img2" src="images/ico04.gif" width="8" height="11" /></td>
                  <td width="92%"><a href="javascript:" target="mainFrame" class="left-font03" onClick="list('2');" >线索信息</a></td>
                </tr>
            </table></td>
          </tr>
      </table>
	  
	  <table id="subtree2" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
        
		<tr>
          <td width="9%" height="20" ><img id="xiaotu9" src="images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="addclue.do" target="mainFrame" class="left-font03" onClick="tupian('9');">线索信息录入</a></td>
        </tr>
		<tr>
          <td width="9%" height="20" ><img id="xiaotu10" src="images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="clue.do?action=listclue" target="mainFrame" class="left-font03" onClick="tupian('10');">线索信息查看</a></td>
        </tr>
      </table>
	  <!--  线索信息结束    -->
	  
	  <!--  车主信息开始    -->
	  <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="8%" height="12"><img name="img3" id="img3" src="images/ico04.gif" width="8" height="11" /></td>
                  <td width="92%"><a href="javascript:" target="mainFrame" class="left-font03" onClick="list('3');" >车主信息</a></td>
                </tr>
            </table></td>
          </tr>
      </table>
	  
	  <table id="subtree3" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
        <tr>
          <td width="9%" height="20" ><img id="xiaotu11" src="images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="addcarOwners.do" target="mainFrame" class="left-font03" onClick="tupian('11');">车主信息录入</a></td>
        </tr>
		<tr>
          <td width="9%" height="20" ><img id="xiaotu12" src="images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="carOwners.do?action=listcarOwners" target="mainFrame" class="left-font03" onClick="tupian('12');">车主信息查看</a></td>
        </tr>
        <!-- <tr>
          <td width="9%" height="20" ><img id="xiaotu13" src="images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="carOwnersChart.do?action=listcarOwners" target="mainFrame" class="left-font03" onClick="tupian('13');">车主信息图表</a></td>
        </tr> -->
      </table>
	  <!--  车主信息结束    -->
		
		<!--  消息系统开始    -->
		<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img7" id="img7" src="images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('7');" >维修信息</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree7" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu3" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%">
						<a href="addrepair.do" target="mainFrame" class="left-font03" onClick="tupian('3');">维修信息录入</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu4" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%">
					<a href="repair.do?action=listrepair" target="mainFrame" class="left-font03" onClick="tupian('4');">维修信息查看</a></td>
				</tr>
      </table>
		<!--  消息系统结束    -->



        <TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img1" id="img1" src="images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('1');" >售后服务</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree1" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu6" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="addservice.do" target="mainFrame" class="left-font03" onClick="tupian('6');">客户需求录入</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu7" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="service.do?action=listservice" target="mainFrame" class="left-font03" onClick="tupian('7');">需求信息查看</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu16" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="addmaintenance.do" target="mainFrame" class="left-font03" onClick="tupian('16');">保养信息录入</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu17" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="listmaintenance.do" target="mainFrame" class="left-font03" onClick="tupian('17');">车辆保养提醒</a></td>
				</tr>
      </table>
		<!--  项目系统结束    -->
		
		<!--  员工管理开始    -->
		<TABLE <%if(u.getRoleType() != 2 && u.getRoleType() != 3) {%> style="DISPLAY: none" <%} %>
		       width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img8" id="img8" src="images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
						  <a href="javascript:" target="mainFrame" class="left-font03" onClick="list('8');" >员工管理</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree8" style="display: none;" width="80%" border="0" align="center" cellpadding="0" 
			   cellspacing="0" class="left-table02">
				<tr>
				   <td width="9%" height="20" ><img id="xiaotu1" src="images/ico06.gif" width="8" height="12" /></td>
                   <td width="91%"><a href="adduser.do" target="mainFrame" class="left-font03" onClick="tupian('1');">员工信息录入</a></td>

				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu2" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="user.do?action=listuser" target="mainFrame" class="left-font03" onClick="tupian('2');">员工信息查看</a></td>
				</tr>
      </table>
		<!--  员工管理结束    -->
		
		<!--  商业智能    -->
		<TABLE <%if(u.getRoleType() != 2 && u.getRoleType() != 3) {%> style="DISPLAY: none" <%} %>
		       width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img9" id="img9" src="images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
						  <a href="javascript:" target="mainFrame" class="left-font03" onClick="list('9');" >商业智能</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree9" style="display: none;" width="80%" border="0" align="center" cellpadding="0" 
			   cellspacing="0" class="left-table02">
			    <tr>
				  <td width="9%" height="20" ><img id="xiaotu13" src="images/ico06.gif" width="8" height="12" /></td>
                  <td width="91%"><a href="carOwnersDist.do" target="mainFrame" class="left-font03" onClick="tupian('13');">车辆销售</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu14" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="clueDist.do" target="mainFrame" class="left-font03" onClick="tupian('14');">线索发展</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu15" src="images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="serviceAnalysis.do" target="mainFrame" class="left-font03" onClick="tupian('15');">售后服务分析</a></td>
				</tr>
      </table>
		<!--  商业智能    -->

	  </TD>
  </tr>
  
</table>
</body>
</html>
