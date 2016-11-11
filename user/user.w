<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:199px;left:380px;"><div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="baasData1" queryAction="queryUser_info" saveAction="saveUser_info" url="/osews/os" tableName="user_info" idColumn="U_ID"><column label="U_ID" name="U_ID" type="Integer" xid="default1"></column>
  <column label="人员名字" name="U_NAME" type="String" xid="default2"></column>
  <column label="U_PWD" name="U_PWD" type="String" xid="default3"></column>
  <column label="角色" name="U_AUTH" type="Integer" xid="default4"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1" height="120"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col3" style="text-align:left;font-weight:bold;font-size:12px;">
    <span xid="span3" style="color:#000000;"><![CDATA[您的位置：油料库存预警系统 > 人员管理]]></span></div> </div>
  <div component="$UI/system/components/justep/toolBar/toolBar" class="x-toolbar form-inline x-toolbar-spliter" xid="toolBar1">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
    <div class="x-col x-col-fixed x-col-center" xid="col7" style="width:auto;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link hidden-element" label=" 新增人员" xid="addBtn" icon="icon-android-add" onClick="addBtnClick">
      <i xid="i1" class="icon-android-add"></i>
      <span xid="span1"> 新增人员</span></a> </div> 
    <div class="x-col x-col-fixed x-col-center" xid="col8" style="width:auto;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link" label=" 刷新数据" xid="refreshBtn" icon="icon-refresh" onClick="refreshBtnClick">
      <i xid="i5" class="icon-refresh"></i>
      <span xid="span8">刷新数据</span></a> </div> 
    <div class="x-col" xid="col2"></div>
    
    
    </div> </div></div>
   <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/dataTables/dataTables" flexibleWidth="true" responsive="true" rowActiveClass="active" class="table table-hover table-striped" xid="dataTables1" data="baasData1" showRowNumber="true" scrollCollapse="true">
   <columns xid="columns1"><column name="U_NAME" xid="column1"></column>
  <column name="U_AUTH" xid="column2"></column></columns></div></div>
   </div></div>