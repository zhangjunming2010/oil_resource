<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:9px;left:133px;height:auto;"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-content" xid="content1">
      <div component="$UI/system/components/justep/controlGroup/controlGroup"
        class="x-control-group" title="title" xid="controlGroup1"> 
      <div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup2"> 
        <span class="input-group-addon" xid="span3" style="font-weight:bold;"><![CDATA[延期月数：]]></span>
        <input type="text" class="form-control" component="$UI/system/components/justep/input/input" xid="s_life" valueUpdateMode="input" dataType="Integer" format="0,000" maxLength="2" bind-keydown="s_lifeKeydown"/>
      <div class="input-group-btn" xid="layoutWizard1">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="更新" xid="updateBtn" onClick="updateBtnClick">
    <i xid="i2"></i>
    <span xid="span6">更新</span></a> </div></div></div>  
        
      </div> 
  </div>
<span component="$UI/system/components/justep/windowReceiver/windowReceiver" xid="windowReceiver1" style="top:296px;left:76px;" onReceive="windowReceiver1Receive"></span></div>
