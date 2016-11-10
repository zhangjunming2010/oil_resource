<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:32px;left:513px;height:auto;"><div component="$UI/system/components/justep/data/baasData" autoLoad="false" xid="baasData1" queryAction="queryOil_resource" saveAction="saveOil_resource" url="/osews/os" tableName="oil_resource" idColumn="O_ID" orderBy="O_NBR:asc,O_BATCH:asc" confirmDelete="false" confirmRefresh="false" limit="-1">
   <column label="序号" name="O_ID" type="String" xid="default1"></column>
   <column label="油料编号" name="O_NBR" type="String" xid="default2"></column>
   <column label="平均采购周期（单位：月）" name="O_CYCLE" type="Float" xid="default3"></column>
   <column label="月均消耗量" name="O_USE" type="Float" xid="default4"></column>
   <column label="保质期（单位：月）" name="O_LIFE" type="Integer" xid="default5"></column>
   <column label="油料库存" name="O_STOCK" type="Float" xid="default6"></column>
   <column label="油料批次" name="O_BATCH" type="String" xid="default7"></column>
   <column label="批次复验预警标识" name="O_REVIEW" type="Integer" xid="default8"></column>
   <column label="采购风险预警标识" name="O_RISK" type="Integer" xid="default9"></column>
   <column label="项目标签" name="O_ITEMS" type="String" xid="default10"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-content" xid="content1">
    <div component="$UI/system/components/justep/controlGroup/controlGroup" class="x-control-group" title="新增油料" xid="controlGroup1" collapsible="true">
     <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
      <div class="x-panel-top" xid="top1">
       <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" title="编辑油料">
        <div class="x-titlebar-left" xid="left1"></div>
        <div class="x-titlebar-title" xid="title1">编辑油料</div>
        <div class="x-titlebar-right reverse" xid="right1"></div></div> </div> 
      <div class="x-panel-content" xid="content2">
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
        <div class="x-col" xid="col2">
         <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
          <label class="x-label" xid="label1" style="text-align:center;font-weight:bold;">油料编码：</label>
          <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input4" bind-ref='$model.baasData1.ref("O_NBR")'></input></div> </div> 
        <div class="x-col x-col-20 x-col-center" xid="col3" style="width:auto;">
         </div> </div> 
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
        <div class="x-col" xid="col8">
         <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
          <label class="x-label" xid="label3" style="text-align:center;font-weight:bold;">平均采购周期：</label>
          <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input6" bind-ref='$model.baasData1.ref("O_CYCLE")'></input></div> </div> 
        <div class="x-col x-col-20 x-col-center" xid="col9" style="width:auto;">
         <span xid="span1" style="font-weight:bold;">单位：月</span></div> </div> 
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
        <div class="x-col" xid="col10">
         <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4">
          <label class="x-label" xid="label4" style="text-align:center;font-weight:bold;">月均消耗量：</label>
          <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input7" bind-ref='$model.baasData1.ref("O_USE")'></input></div> </div> 
        <div class="x-col x-col-20 x-col-center" xid="col11" style="width:auto;"></div></div> 
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row4">
        <div class="x-col" xid="col4">
         <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
          <label class="x-label" xid="label2" style="text-align:center;font-weight:bold;">保质期：</label>
          <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input1" bind-ref='$model.baasData1.ref("O_LIFE")'></input></div> </div> 
        <div class="x-col x-col-20 x-col-center" xid="col1" style="width:auto;">
         <span xid="span2" style="font-weight:bold;">单位：月</span></div> </div> 
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row5">
        <div class="x-col" xid="col6">
         <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit5">
          <label class="x-label" xid="label5" style="text-align:center;font-weight:bold;">库存量：</label>
          <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input2" bind-ref='$model.baasData1.ref("O_STOCK")'></input></div> </div> 
        <div class="x-col x-col-20 x-col-center" xid="col5" style="width:auto;"></div></div> 
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row6">
        <div class="x-col" xid="col12">
         <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit6">
          <label class="x-label" xid="label6" style="text-align:center;font-weight:bold;">批次：</label>
          <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input3" bind-ref='$model.baasData1.ref("O_BATCH")'></input></div> </div> 
        <div class="x-col x-col-20 x-col-center" xid="col7" style="width:auto;"></div></div> 
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row7">
        <div class="x-col" xid="col14">
         <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit8">
          <label class="x-label" xid="label8" style="text-align:center;font-weight:bold;">项目标签：</label>
          <textarea component="$UI/system/components/justep/textarea/textarea" class="form-control x-edit" xid="textarea1" bind-ref='$model.baasData1.ref("O_ITEMS")'></textarea></div> </div> 
        <div class="x-col x-col-20 x-col-center" xid="col13" style="width:auto;"></div></div> 
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row8">
        <div class="x-col" xid="col15"></div>
        <div class="x-col x-col-center hidden-element" xid="col16" style="text-align:center;">
         <a component="$UI/system/components/justep/button/button" class="btn btn-default" label=" 提交" xid="button1" icon="icon-android-checkmark" onClick="button1Click">
          <i xid="i1" class="icon-android-checkmark"></i>
          <span xid="span3">提交</span></a> </div> 
        <div class="x-col x-col-center" xid="col17" style="text-align:center;">
         <a component="$UI/system/components/justep/button/button" class="btn btn-default" label=" 关闭" xid="button3" icon="icon-android-close" onClick='{"operation":"window.close"}'>
          <i xid="i3" class="icon-android-close"></i>
          <span xid="span4">关闭</span></a> </div> 
        <div class="x-col" xid="col18"></div></div> 
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row9" bind-style='{display:"none"}'>
        <div class="x-col" xid="col19">
         <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit7">
          <label class="x-label" xid="label7" style="text-align:center;font-weight:bold;">油料ID：</label>
          <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input5" bind-ref='$model.baasData1.ref("O_ID")'></input></div> </div> 
        <div class="x-col x-col-20 x-col-center" xid="col20" style="width:auto;"></div></div> 
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row10" bind-visible="true" bind-style='{display:"none"}'>
        <div class="x-col" xid="col21">
         <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit9">
          <label class="x-label" xid="label9" style="text-align:center;font-weight:bold;">批次复验预警标识：</label>
          <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input8" bind-ref='$model.baasData1.ref("O_REVIEW")'></input></div> </div> 
        <div class="x-col x-col-20 x-col-center" xid="col22" style="width:auto;"></div></div> 
       <div component="$UI/system/components/justep/row/row" class="x-row" xid="row11" bind-visible="true" bind-style='{display:"none"}'>
        <div class="x-col" xid="col23">
         <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit10">
          <label class="x-label" xid="label10" style="text-align:center;font-weight:bold;">采购风险预警标识：</label>
          <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input9" bind-ref='$model.baasData1.ref("O_RISK")'></input></div> </div> 
        <div class="x-col x-col-20 x-col-center" xid="col24" style="width:auto;"></div></div> </div> </div> </div> </div> </div>
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver" xid="windowReceiver1" onReceive="windowReceiver1Receive"></span></div>