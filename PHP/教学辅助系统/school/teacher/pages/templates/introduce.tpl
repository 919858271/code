<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>无标题文档</title>
	<link href="../../tools/css/style.css" rel="stylesheet" type="text/css" />
	<link href="../../tools/css/select.css" rel="stylesheet" type="text/css" />
	<link href="../../tools/css/up_file.css" rel="stylesheet" type="text/css" />
	  <link rel="stylesheet" href="../../tools/css/bbs.min.css" type="text/css"/>
	<link href="../../tools/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="../../tools/js/up_file.js"></script>
	<script type="text/javascript" src="../../tools/js/jquery.js"></script>
	<script type="text/javascript" src="../../tools/js/bootstrap.min.js"></script>
	<script language="javascript" type="text/javascript" src="../../tools/js/My97DatePicker/WdatePicker.js"></script>
	<script type="text/javascript" src="../../tools/js/jquery.idTabs.min.js"></script>
	<script type="text/javascript" src="../../tools/js/select-ui.min.js"></script>
	<script type="text/javascript" src="../../tools/editor/kindeditor.js"></script>
	<script type="text/javascript">
		KE.show({
			id : 'intr',
			cssPath : './index.css'
			
		});
		KE.show({
			id : 'targ',
			cssPath : './index.css'
			
		});
	  </script>
	<script type="text/javascript">
	$(document).ready(function(e) {
		$(".select1").uedSelect({
			width : 190			  
		});
	});
	</script>
</head>
<body style="background-color:#F2F0F1; ">

	<div class="xline"></div>
	 <div class="mainindex">   
    <div class="welinfo">
    <span><img src="../../tools/images/dp.png"  /></span>
    <b>课程介绍</b>
    </div>
    <div class="formbody">
		<div id="usual1" class="usual"> 
		
			<div class="itab">
				<ul> 
				<li><a href="#tab1" class="selected ">课程信息</a></li> 
				<li><a href="#tab2" >编辑课程信息</a></li> 
				
				</ul>
			</div>    
			<div id="tab1" class="tabson">	
	<table width="80%" border="1" align="center" class="tableinf tablelist" >
      <tr>
        <td width="17%" scope="row"><div align="center"><strong>课程名称</strong></div></td>
        <td width="41%"><span class="STYLE1">{$data[0]}</span></td>
        <td width="19%"><div align="center"><strong>授课教师</strong></div></td>
        <td width="23%"><div align="center"><p class="STYLE1">{$data[1]}</p></div></td>
      </tr>
      <tr>
        <td scope="row"><div align="center"><strong>上课地点</strong></div></td>
        <td><span class="STYLE1">{$data[2]}</span></td>
        <td><div align="center"><strong>上课时间</strong></div></td>
        <td><div align="center"> {$data[3]}&nbsp;</div></td>
      </tr>
      <tr>
        <td scope="row"><div align="center"><strong>课程介绍</strong></div></td>
        <td colspan="3"><span class="STYLE1">{$data[4]}</span></td>
      </tr>
      <tr>
        <td scope="row"><div align="center"><strong>课程目标</strong></div></td>
        <td colspan="3">{$data[5]}     
      </tr>      
    </table>
</div>
 </div> 
		<div id="tab2" class="tabson">  	
			<ul class="forminfo" style="margin-top:10px">
			<form id="publish_form" name="publish_form" method="post" action="introduce.php?action=update&&tnumber={$tnumber}&&course_id={$course_id}">
				<li style="margin-left:90px"><label ><b>课程名称:</b></label>		
					<input name="course_name" id="course_name" type="text" class="dfinput" value="{$cname}" readonly style="width:218px;height:28px; margin-left:5px;line-height:28px" />
					<b style=";margin-left:5px">授课教师:</b>
					<input name="teacher" id="teacher" type="text" class="dfinput" value="{$tname}" readonly style="width:218px;height:28px;margin-left:5px;line-height:28px"/>					
				</li>
                <li style="margin-left:90px"><label ><b>上课地点:</b></label>		
					<input name="where" id="where" type="text" class="dfinput" value="{$data[2]}" title="请勿输入特殊字符" style="width:218px;height:28px; margin-left:5px;line-height:28px" />
					<b style=";margin-left:5px">上课时间:</b>
					<input name="start" id="start" type="text" class="dfinput" value="{$data[3]}" title="请勿输入特殊字符" style="width:218px;height:28px;margin-left:5px;line-height:28px"/>					
				</li>	
				<li style="margin-left:90px"><label ><b>课程介绍:</b></label>		
					 <textarea id="intr" name="intr" style="width:700px;height:250px;visibility:hidden;">{$data[4]}</textarea>   
				</li>
				<li style="margin-left:90px"><label ><b>课程目标:</b></label>		
					 <textarea id="targ" name="targ" style="width:700px;height:250px;visibility:hidden;">{$data[5]}</textarea>   
				</li>
				<li style="margin-left:90px"><label ><b></b></label>		
					 <input name="add" id="add" type="submit" class="btn1" value="马上提交"/>
				</li>				
				</form>
			</ul>   
		</div> 	
		
	<script type="text/javascript"> 
      $("#usual1 ul").idTabs(); 
    </script>    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>   
 <script type="text/javascript"> 
	var e=document.getElementById( "link1 ") 
	e.removeAttribute( "href ") 
 </script>   
 

 <script type="text/javascript">
	var send=document.getElementById("add");
	send.onclick=function(){
	var where=document.getElementById("where").value.trim();
	var start=document.getElementById("start").value.trim();	
	if(where==""){
		alert("请填写上课地点");
			return false;
		}
	if(start==""){
		alert("请填写上课时间");
			return false;
	}
	}
</script>

</body>

</html>
