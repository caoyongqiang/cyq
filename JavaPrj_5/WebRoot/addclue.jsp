<%@ page contentType="text/html; charset=utf-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>4S店客户管理系统</title>
<link rel="stylesheet" rev="stylesheet" href="css/style.css " type="text/css" media="all" />
<link href="css/jquery.datetimepicker.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="Js/typem.js"></script>
<script type="text/javascript" src="Js/js.js"></script>
<style type="text/css">
<!--
.atten {font-size:12px;font-weight:normal;color:#F00;}
-->
</style>
</head>
<body class="ContentBody">
<script type="text/javascript" src="Js/jquery-2.2.4.min.js"></script>
<script type="text/javascript" src="Js/jquery.datetimepicker.full.min.js"></script>
<form name="clueForm" method="post" action="modifyclue.do?action=addclue" onSubmit="return clueValidate()">
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >线索信息录入</th>
  </tr>
  <tr>
    <td class="CPanel">
		
		<table border="0" cellpadding="0" cellspacing="0" style="width:80%" align="center">
		<tr><td align="left">
		<input type="submit"value="保存" class="button"/>　
			
			<input type="reset" value="返回" class="button"/>
		</td></tr>
		
		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>线索信息</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td nowrap align="right" width="9%">线索姓名：</td>
					    <td width="36%"><input name="name" type="text" class="input">
						<span class="red">*</span></td>
					    <td width="12%"><div align="right">手机号：</div></td>
					    <td width="43%">
					      <input name="phoneNumber" type="text" class="input" id="phoneNumber" />
					      <span class="red">*</span></td></tr>
					  <tr>
					    <td nowrap align="right" width="9%">身份证号：</td>
					    <td><input name="idCard" type="text" class="input" id="idCard">
					    </td>
					    <td><div align="right">家庭住址：</div></td>
					    <td><input name="house" type="text" class="input" id="house"></td>
					  </tr>
					  <tr>
					    <td nowrap align="right">预购车型：</td>
					    <td><input name="desireCar" type="text" class="input" id="desireCar"></td>
					    <td nowrap align="right">来店时间：</td>
					    <td><input name="visitTime" type="text" class="input" id="visitTime">
					    <span class="red">*</span>
					    </td>
					    </tr>
					  </table>
			  <br />
				</fieldset>			</TD>
			
		</TR>
		</TABLE>
	 </td>
  </tr>
		<TR>
			<TD colspan="2" align="center" height="50px">
			<input name="提交" type="submit" class="button" value="保存"/>　
			<input name="重置" type="reset" class="button" value="重置"/></TD>
		</TR>
		</TABLE>	
</div>
</form>
<script type="text/javascript">
  jQuery.datetimepicker.setLocale('zh');
  jQuery('#visitTime').datetimepicker({
	  timepicker:false,
	  format:'Y-m-d'
	});
</script>
</body>
</html>

