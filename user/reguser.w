<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:420px;left:63px;height:auto;" onParamsReceive="modelParamsReceive"> 
  <div component="$UI/system/components/justep/data/baasData" autoLoad="false" xid="userData" queryAction="queryUser_info" saveAction="saveUser_info" url="/osews/os" tableName="user_info" idColumn="U_ID"><column label="U_ID" name="U_ID" type="String" xid="default1"></column>
  <column label="U_NAME" name="U_NAME" type="String" xid="default2"></column>
  <column label="U_PWD" name="U_PWD" type="String" xid="default3"></column>
  <column label="U_AUTH" name="U_AUTH" type="Integer" xid="default4"></column></div></div>  
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="messageDialog1" title="恭喜" message="恭喜！注册成功！" onOK="messageDialog1OK"></span>
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-content" xid="content1">
    <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
     <div class="x-panel-content" xid="content2">
      <div component="$UI/system/components/justep/controlGroup/controlGroup" class="x-control-group" title="title" xid="controlGroup1">
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
        <div class="x-col x-col-center" xid="col2">
         <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
          <label class="x-label" xid="label1" style="text-align:center;font-weight:bold;">用户名：</label>
          <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input1"></input></div> </div> 
        <div class="x-col x-col-fixed x-col-center" xid="col3" style="width:120px;"><span xid="span1" style="font-weight:bold;font-size:small;"><![CDATA[建议：使用手机号]]></span></div></div> 
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col10">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4">
     <label class="x-label" xid="label4" style="text-align:center;font-weight:bold;"><![CDATA[姓名：]]></label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input2"></input></div> </div> 
   <div class="x-col x-col-fixed" xid="col4" style="width:120px;"></div></div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
        <div class="x-col" xid="col1">
         <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit5">
   <label class="x-label" xid="label5" style="text-align:center;font-weight:bold;"><![CDATA[登录密码：]]></label>
   <input component="$UI/system/components/justep/input/password" class="form-control x-edit" xid="password1"></input></div></div> 
        <div class="x-col x-col-fixed x-col-center" xid="col6" style="width:120px;"></div></div> 
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
        <div class="x-col" xid="col5">
         <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit6">
   <label class="x-label" xid="label6" style="text-align:center;font-weight:bold;"><![CDATA[确认密码：]]></label>
   <input component="$UI/system/components/justep/input/password" class="form-control x-edit" xid="password2"></input></div></div> 
        <div class="x-col x-col-fixed x-col-center" xid="col7" style="width:120px;"></div></div> 
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
        <div class="x-col" xid="col15"></div>
        <div class="x-col x-col-center" xid="col16" style="text-align:center;">
         <a component="$UI/system/components/justep/button/button" class="btn btn-default" label=" 注册" xid="submitBtn" icon="icon-person" onClick="submitBtnClick">
          <i xid="i2" class="icon-person"></i>
          <span xid="span3">注册</span></a> </div> 
        <div class="x-col" xid="col18"></div></div> 
  </div> </div> </div> </div> </div></div>