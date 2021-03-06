<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:-2px;left:626px;">
    <div component="$UI/system/components/justep/data/data" autoLoad="false" xid="data1" idColumn="o_id" confirmDelete="false" confirmRefresh="false" limit="-1">
   <column name="o_id" type="String" xid="xid1"></column>
   <column name="o_cycle" type="Integer" xid="xid2"></column>
   <column name="o_items" type="String" xid="xid3"></column>
   <column name="o_life" type="Integer" xid="xid4"></column>
   <column name="o_nbr" type="String" xid="xid5"></column>
   <column name="o_use" type="Float" xid="xid6"></column>
   <column name="s_batch" type="String" xid="xid7"></column>
   <column name="s_stock" type="Float" xid="xid8"></column>
   <column name="o_name" type="String" xid="xid9"></column>
   <column name="s_id" type="String" xid="xid10"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-content" xid="content1">
      <div component="$UI/system/components/justep/controlGroup/controlGroup"
        class="x-control-group" title="新增油料" xid="controlGroup1" collapsible="true"> 
          
        <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" title="物资信息">
   <div class="x-titlebar-left" xid="left1"></div>
   <div class="x-titlebar-title" xid="title1">物资信息</div>
   <div class="x-titlebar-right reverse" xid="right1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label=" 关闭" xid="closeBtn" icon="icon-android-close" onClick='{"operation":"window.close"}'>
     <i xid="i3" class="icon-android-close"></i>
     <span xid="span4">关闭</span></a></div></div></div>
   <div class="x-panel-content" xid="content2"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col" xid="col2">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
     <label class="x-label" xid="label1" style="text-align:center;font-weight:bold;"><![CDATA[物资编码：]]></label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="o_nbr" bind-ref='$model.data1.ref("o_nbr")' disabled="true"></input></div> </div> 
   <div class="x-col x-col-20 x-col-center" xid="col3" style="width:auto;">
    </div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row12">
   <div class="x-col" xid="col17">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit11">
     <label class="x-label" xid="label11" style="text-align:center;font-weight:bold;"><![CDATA[物资名称：]]></label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="o_name" bind-ref='$model.data1.ref("o_name")' disabled="true"></input></div> </div> 
   <div class="x-col x-col-20 x-col-center" xid="col25" style="width:auto;">
    </div> </div><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col" xid="col8">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
     <label class="x-label" xid="label3" style="text-align:center;font-weight:bold;">平均采购周期：</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="o_cycle" maxLength="2" dataType="Integer" format="0,000" bind-ref='$model.data1.ref("o_cycle")' disabled="true"></input></div> </div> 
   <div class="x-col x-col-20 x-col-center" xid="col9" style="width:auto;">
    <span xid="span1" style="font-weight:bold;">单位：月</span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" xid="col10">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4">
     <label class="x-label" xid="label4" style="text-align:center;font-weight:bold;">月均消耗量：</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="o_use" format="0,000.00" maxLength="10" dataType="Float" bind-ref='$model.data1.ref("o_use")' disabled="true"></input></div> </div> 
   <div class="x-col x-col-20 x-col-center" xid="col11" style="width:auto;"><span xid="span9" style="font-weight:bold;">单位：KG</span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
   <div class="x-col" xid="col4">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
     <label class="x-label" xid="label2" style="text-align:center;font-weight:bold;">保质期：</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="o_life" maxLength="2" dataType="Integer" bind-ref='$model.data1.ref("o_life")' disabled="true"></input></div> </div> 
   <div class="x-col x-col-20 x-col-center" xid="col1" style="width:auto;">
    <span xid="span2" style="font-weight:bold;">单位：月</span>
  </div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
   <div class="x-col" xid="col6">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit5">
     <label class="x-label" xid="label5" style="text-align:center;font-weight:bold;">库存量：</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="s_stock" maxLength="10" format="0,000.00" dataType="Float" bind-ref='$model.data1.ref("s_stock")'></input></div> </div> 
   <div class="x-col x-col-20 x-col-center" xid="col5" style="width:auto;"><span xid="span5" style="font-weight:bold;"><![CDATA[单位：KG]]></span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6">
   <div class="x-col" xid="col12">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit6">
     <label class="x-label" xid="label6" style="text-align:center;font-weight:bold;">批次：</label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="s_batch" dataType="Integer" bind-ref='$model.data1.ref("s_batch")' maxLength="6" disabled="true"></input></div> </div> 
   <div class="x-col x-col-20 x-col-center" xid="col7" style="width:auto;"><span xid="span7" style="font-weight:bold;"><![CDATA[格式：201601]]></span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row7">
   <div class="x-col" xid="col14">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit8">
     <label class="x-label" xid="label8" style="text-align:center;font-weight:bold;">项目标签：</label>
     <textarea component="$UI/system/components/justep/textarea/textarea" class="form-control x-edit" xid="o_items" style="height:100%;" bind-ref='$model.data1.ref("o_items")' disabled="true"></textarea></div> </div> 
   <div class="x-col x-col-20 x-col-center" xid="col13" style="width:auto;"><span xid="span8" style="font-weight:bold;"><![CDATA[说明：多个项目中间空格隔开]]></span></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row" xid="row8">
   <div class="x-col" xid="col15"></div>
   <div class="x-col x-col-center" xid="col16" style="text-align:center;">
    <a component="$UI/system/components/justep/button/button" class="btn btn-default" label=" 保存" xid="submitBtn" icon="dataControl dataControl-save" onClick="submitBtnClick">
     <i xid="i1" class="dataControl dataControl-save"></i>
     <span xid="span3"> 保存</span></a> </div> 
   <div class="x-col" xid="col18"></div></div>
  <div component="$UI/system/components/justep/row/row" class="x-row hidden-element" xid="row11">
   <div class="x-col" xid="col23">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit10">
     <label class="x-label" xid="label10" style="text-align:center;font-weight:bold;"><![CDATA[库存ID：]]></label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="s_id" dataType="Integer" bind-ref='$model.data1.ref("s_id")'></input></div> </div> 
   <div class="x-col x-col-20 x-col-center" xid="col24" style="width:auto;">
    <span xid="span11" style="font-weight:bold;">格式：201601</span></div> </div>
  <div component="$UI/system/components/justep/row/row" class="x-row hidden-element" xid="row13">
   <div class="x-col" xid="col26">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit12">
     <label class="x-label" xid="label12" style="text-align:center;font-weight:bold;"><![CDATA[物资ID：]]></label>
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="o_id" dataType="Integer" bind-ref='$model.data1.ref("o_id")'></input></div> </div> 
   <div class="x-col x-col-20 x-col-center" xid="col27" style="width:auto;">
    <span xid="span12" style="font-weight:bold;">格式：201601</span></div> </div></div>
   </div></div> 
    </div> 
  </div>
<span component="$UI/system/components/justep/windowReceiver/windowReceiver" xid="windowReceiver1" onReceive="windowReceiver1Receive"></span></div>
