<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;"
  xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:241px;left:61px;height:auto;"></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" title="注册用户"
        class="x-titlebar"> 
        <div class="x-titlebar-left"></div>  
        <div class="x-titlebar-title">注册用户</div>  
        <div class="x-titlebar-right reverse"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
            label="button" xid="button1" icon="icon-android-close"> 
            <i xid="i1" class="icon-android-close"/>  
            <span xid="span1"/>
          </a>
        </div> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content1">
      <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
        xid="panel2"> 
        <div class="x-panel-content" xid="content2">
          <div component="$UI/system/components/justep/controlGroup/controlGroup"
            class="x-control-group" title="title" xid="controlGroup1"> 
          <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col2">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
     <label class="x-label" xid="label1" style="text-align:center;font-weight:bold;"><![CDATA[用户名：]]></label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input4" bind-ref='$model.baasData1.ref("O_NBR")'></input></div> </div> 
   <div class="x-col x-col-20 x-col-center" xid="col3" style="width:auto;">
    </div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col1">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
     <label class="x-label" xid="label2" style="text-align:center;font-weight:bold;"><![CDATA[密码：]]></label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input2" bind-ref='$model.baasData1.ref("O_NBR")'></input></div> </div> 
   <div class="x-col x-col-20 x-col-center" xid="col4" style="width:auto;"></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" xid="col5">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
     <label class="x-label" xid="label3" style="text-align:center;font-weight:bold;"><![CDATA[确认密码：]]></label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input3" bind-ref='$model.baasData1.ref("O_NBR")'></input></div> </div> 
   <div class="x-col x-col-20 x-col-center" xid="col6" style="width:auto;"></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row8">
   <div class="x-col" xid="col15"></div>
   <div class="x-col x-col-center" xid="col16" style="text-align:center;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-default" label=" 注册" xid="submitBtn" icon="icon-person" onClick="submitBtnClick">
     <i xid="i2" class="icon-person"></i>
     <span xid="span3"> 注册</span></a> </div> 
   <div class="x-col" xid="col18"></div></div></div>
        </div> 
      </div>
    </div> 
  </div> 
</div>
