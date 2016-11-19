<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:286px;left:624px;">
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="data1" idColumn="id"> 
      <column name="id" type="Integer" xid="xid1"/>  
      <column name="name" type="String" xid="xid2"/>  
      <column name="value" type="Integer" xid="xid3"/>  
      <data xid="default1">[{"id":1,"name":"普通用户","value":0},{"id":2,"name":"维护人员","value":1},{"id":3,"name":"后台管理员","value":2}]</data>
    </div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="data2" idColumn="u_id">
   <column name="u_id" type="String" xid="xid4"></column>
   <column name="u_auth" type="Integer" xid="xid5"></column>
   <column name="u_name" type="String" xid="xid6"></column>
   <column name="u_pwd" type="String" xid="xid7"></column></div></div>  
  <div component="$UI/system/components/justep/controlGroup/controlGroup" class="x-control-group"
    title="title" xid="controlGroup1"> 
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30"
      xid="labelEdit1"> 
      <label class="x-label" xid="label1" style="text-align:center;font-weight:bold;"><![CDATA[用户名：]]></label>  
      <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
        xid="output1" bind-ref='$model.data2.ref("u_id")' style="text-align:center;"/>
    </div>  
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30"
      xid="labelEdit2"> 
      <label class="x-label" xid="label2" style="text-align:center;font-weight:bold;"><![CDATA[姓名：]]></label>  
      <div component="$UI/system/components/justep/output/output" class="x-output x-edit"
        xid="output2" bind-ref='$model.data2.ref("u_name")' style="text-align:center;"/>
    </div>  
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30"
      xid="labelEdit3"> 
      <label class="x-label" xid="label3" style="text-align:center;font-weight:bold;"><![CDATA[权限：]]></label>  
      <select component="$UI/system/components/justep/select/select" class="form-control x-edit" xid="select1" bind-options="data1" bind-optionsValue="value" bind-optionsLabel="name" bind-ref='$model.data2.ref("u_auth")' style="text-align:center;" bind-load="select1Load" /></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col1"></div>
   <div class="x-col" xid="col2" style="text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-default" label="提交" xid="submitBtn" onClick="submitBtnClick">
   <i xid="i1"></i>
   <span xid="span2">提交</span></a></div>
   <div class="x-col" xid="col3"></div></div></div>
<span component="$UI/system/components/justep/windowReceiver/windowReceiver" xid="windowReceiver1" onReceive="windowReceiver1Receive"></span>
  <span component="$UI/system/components/justep/messageDialog/messageDialog" xid="messageDialog1" style="top:266px;left:97px;" onOK="messageDialog1OK"></span></div>
