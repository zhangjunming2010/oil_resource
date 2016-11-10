<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:104px;left:615px;" onModelConstruct="modelModelConstruct" onParamsReceive="modelParamsReceive"><div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="baasData1" queryAction="queryOil_resource" saveAction="saveOil_resource" url="/osews/os" tableName="oil_resource" idColumn="O_ID" onBeforeRefresh="baasData1BeforeRefresh" confirmDelete="false" confirmRefresh="false" orderBy="O_NBR:asc,O_BATCH:asc">
   <column label="序号" name="O_ID" type="String" xid="default1"></column>
  <column label="油料编号" name="O_NBR" type="String" xid="default2"></column>
  <column label="平均采购周期（单位：月）" name="O_CYCLE" type="Long" xid="default3"></column>
  <column label="月均消耗量" name="O_USE" type="Decimal" xid="default4"></column>
  <column label="保质期（单位：月）" name="O_LIFE" type="Long" xid="default6"></column>
  <column label="油料库存" name="O_STOCK" type="Decimal" xid="default7"></column>
  <column label="油料批次" name="O_BATCH" type="String" xid="default8"></column>
  <column label="批次复验预警标识" name="O_REVIEW" type="Integer" xid="default9"></column>
  <column label="采购风险预警标识" name="O_RISK" type="Integer" xid="default10"></column>
  <column label="项目标签" name="O_ITEMS" type="String" xid="default11"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="baasData2" queryAction="queryOil_resource" saveAction="saveOil_resource" url="/osews/os" tableName="oil_resource" idColumn="O_ID" onBeforeRefresh="baasData2BeforeRefresh" confirmDelete="false" confirmRefresh="false" orderBy="O_NBR:asc,O_BATCH:asc">
   <column label="序号" name="O_ID" type="String" xid="default12"></column>
  <column label="油料编号" name="O_NBR" type="String" xid="default13"></column>
  <column label="平均采购周期（单位：月）" name="O_CYCLE" type="Long" xid="default14"></column>
  <column label="月均消耗量" name="O_USE" type="Decimal" xid="default15"></column>
  <column label="保质期（单位：月）" name="O_LIFE" type="Long" xid="default23"></column>
  <column label="油料库存" name="O_STOCK" type="Decimal" xid="default24"></column>
  <column label="油料批次" name="O_BATCH" type="String" xid="default25"></column>
  <column label="批次复验预警标识" name="O_REVIEW" type="Integer" xid="default26"></column>
  <column label="采购风险预警标识" name="O_RISK" type="Integer" xid="default27"></column>
  <column label="项目标签" name="O_ITEMS" type="String" xid="default28"></column></div></div> 

  <div component="$UI/system/components/justep/wing/wing" class="x-wing" xid="wing1" display="push">
   <div class="x-wing-left" xid="left2"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
   <div class="x-panel-top" xid="top2"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar2" title="菜单">
   <div class="x-titlebar-left" xid="left3"></div>
   <div class="x-titlebar-title" xid="title2">菜单</div>
   <div class="x-titlebar-right reverse" xid="right2"></div></div></div>
   <div class="x-panel-content x-cards" xid="content3"><li xid="li3" class="list-group-item text-center tb-nopadding" style="background-color:#FFFFFF;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-block" label=" 首页" xid="indexBtn" icon="icon-home" target="main" onClick="indexBtnClick">
    <i xid="i3" class="icon-home"></i>
    <span xid="span3">首页</span></a> </li>
  <li xid="li1" class="list-group-item text-center tb-nopadding" style="background-color:#FFFFFF;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-block" label=" 油料管理" xid="oilBtn" icon="icon-waterdrop" target="oil" onClick="oilBtnClick">
    <i xid="i2" class="icon-waterdrop"></i>
    <span xid="span2">油料管理</span></a> </li>
  <li xid="li2" class="list-group-item text-center tb-nopadding" style="background-color:#FFFFFF;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-block" label=" 人员管理" xid="userBtn" icon="icon-person" target="user" onClick="userBtnClick">
    <i xid="i2" class="icon-person"></i>
    <span xid="span2">人员管理</span></a> </li>
  <li xid="li6" class="list-group-item text-center tb-nopadding" style="background-color:#FFFFFF;">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-block" label=" 关于" xid="button4" icon="icon-help" onClick="button4Click">
    <i xid="i7" class="icon-help"></i>
    <span xid="span8">关于</span></a> </li></div>
   </div></div>
   <div class="x-wing-content" xid="content2">
    <div class="x-wing-backdrop" xid="div1"></div><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" title="油料库存预警系统">
   <div class="x-titlebar-left" xid="left1"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm btn-only-icon hidden-element" label=" 菜单" xid="leftmenuBtn" icon="glyphicon glyphicon-menu-hamburger" onClick="leftmenuBtnClick">
   <i xid="i1" class="glyphicon glyphicon-menu-hamburger"></i>
   <span xid="span1"> 菜单</span></a></div>
   <div class="x-titlebar-title" xid="title1">油料库存预警系统</div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div>
   <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="2" xid="contents1" wrap="false" swipe="false" slidable="false" routable="false">
   <div class="x-contents-content" xid="oil"><div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="windowContainer1" src="./oil.w" autoLoad="false"></div></div>
  <div class="x-contents-content" xid="user"></div>
  <div class="x-contents-content" xid="main"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel3">
   <div class="x-panel-top" xid="top3" height="85">
  <div component="$UI/system/components/justep/toolBar/toolBar" class="x-toolbar form-inline x-toolbar-spliter" xid="toolBar1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
    <div class="x-col" xid="col7"></div>
    <div class="x-col" xid="col8"></div>
    <div class="x-col x-col-fixed x-col-center" xid="col15" style="width:auto;">
     <div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup4">
      <span class="input-group-addon" xid="span17">油料编号</span>
      <input type="text" class="form-control" component="$UI/system/components/justep/input/input" xid="input4"></input></div> </div> 
    <div class="x-col x-col-fixed x-col-center" xid="col16" style="width:auto;">
     <div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup5">
      <span class="input-group-addon" xid="span16">油料批次</span>
      <input type="text" class="form-control" component="$UI/system/components/justep/input/input" xid="input5"></input></div> </div> 
    <div class="x-col x-col-fixed x-col-center" xid="col17" style="width:auto;">
     <div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup6">
      <span class="input-group-addon" xid="span13">项目标签</span>
      <input type="text" class="form-control" component="$UI/system/components/justep/input/input" xid="input6"></input>
      <div class="input-group-btn" xid="layoutWizard1">
       <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-icon" label="button" xid="searchBtn" icon="icon-android-search" onClick="searchBtnClick">
        <i xid="i4" class="icon-android-search"></i>
        <span xid="span9"></span></a> </div> </div> </div> </div></div></div>
   <div class="x-panel-content" xid="content4"><div component="$UI/system/components/bootstrap/row/row" class="row" xid="row1">
   <div class="col col-xs-6" xid="col2">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar3" title="批次复验预警" style="width:100%;">
     <div class="x-titlebar-left flex1" xid="left4"></div>
     <div class="x-titlebar-title" xid="title3" style="font-size:medium;font-weight:normal;">批次复验预警</div>
     <div class="x-titlebar-right flex1 reverse" xid="right3">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link" label=" 刷新" xid="button6" onClick="button6Click" icon="linear linear-redo" style="font-weight:normal;font-size:x-small;">
       <i xid="i9" class="linear linear-redo"></i>
       <span xid="span14">刷新</span></a> </div> </div> 
    <div component="$UI/system/components/fragment/list/listTable" xid="listTable1">
     <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="baasData1" dataItemAlias="baasdata" limit="-1">
      <table class="table table-bordered table-hover table-striped" component="$UI/system/components/bootstrap/table/table" xid="table1" id="table11">
       <thead xid="thead1">
        <tr class="info" xid="tr1">
         <th xid="col4" style="text-align:center;font-size:medium;vertical-align:middle;width:20%;">油料编号</th>
         <th xid="col9" style="font-size:medium;vertical-align:middle;text-align:center;width:10%;">批次</th>
         <th xid="col10" style="font-size:medium;vertical-align:middle;text-align:center;width:10%;">状态</th>
         <th xid="col12" style="font-size:medium;vertical-align:middle;text-align:center;">项目标签</th></tr> </thead> 
       <tbody class="x-list-template" xid="listTemplate1">
        <tr xid="tr2" bind-dblclick="tr2Dblclick">
         <td xid="td4" style="text-align:center;">
          <div component="$UI/system/components/justep/output/output" class="x-output" xid="output2" bind-ref='ref("O_NBR")'></div></td> 
         <td xid="td12" style="text-align:center;">
          <div component="$UI/system/components/justep/output/output" class="x-output" xid="output7" bind-ref='ref("O_BATCH")'></div></td> 
         <td xid="td13" style="text-align:center;" bind-style='{background: val("O_REVIEW") =="1"?"red":""}'>
          <div component="$UI/system/components/justep/output/output" class="x-output" xid="output8" bind-ref='ref("O_REVIEW")' bind-text='val("O_REVIEW") =="1"?"异常":"正常"' bind-style='{color: val("O_REVIEW")=="1"?"#FFFF00":"#00B058"}'></div></td> 
         <td xid="td9" style="text-align:center;">
          <div component="$UI/system/components/justep/output/output" class="x-output" xid="output10" bind-ref='ref("O_ITEMS")'></div></td> </tr> </tbody> </table> </div> </div> 
    <div component="$UI/system/components/justep/pagerBar/pagerBar" class="x-pagerbar container-fluid" xid="pagerBar1" data="baasData1">
     <div class="row" xid="div4">
      <div class="col-sm-3" xid="div5">
       <div class="x-pagerbar-length" xid="div6">
        <label component="$UI/system/components/justep/pagerLimitSelect/pagerLimitSelect" class="x-pagerlimitselect" xid="pagerLimitSelect1" defaultValue="10">
         <span xid="span5">显示</span>
         <select component="$UI/system/components/justep/select/select" class="form-control input-sm" xid="select1">
          <option value="10" xid="default17">10</option>
          <option value="20" xid="default18">20</option>
          <option value="50" xid="default19">50</option>
          <option value="100" xid="default16">100</option></select> 
         <span xid="span6">条</span></label> </div> </div> 
      <div class="col-sm-3" xid="div7">
       <div class="x-pagerbar-info" xid="div8">当前显示0条，共0条</div></div> 
      <div class="col-sm-6" xid="div9">
       <div class="x-pagerbar-pagination" xid="div10">
        <ul class="pagination" component="$UI/system/components/bootstrap/pagination/pagination" xid="pagination1">
         <li class="prev" xid="li8">
          <a href="#" xid="a3">
           <span aria-hidden="true" xid="span7">«</span>
           <span class="sr-only" xid="span5">Previous</span></a> </li> 
         <li class="next" xid="li9">
          <a href="#" xid="a4">
           <span aria-hidden="true" xid="span6">»</span>
           <span class="sr-only" xid="span7">Next</span></a> </li> </ul> </div> </div> </div> </div> </div> 
   <div class="col col-xs-6" xid="col3">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar3" title="采购风险预警" style="height:100%;">
     <div class="x-titlebar-left" xid="left4" reverse="true"></div>
     <div class="x-titlebar-title pull-left" xid="title3" style="font-size:medium;font-weight:normal;">采购风险预警</div>
     <div class="x-titlebar-right reverse" xid="right3">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link" label=" 刷新" xid="button7" onClick="button7Click" icon="linear linear-redo" style="font-weight:normal;font-size:x-small;">
       <i xid="i10" class="linear linear-redo"></i>
       <span xid="span15">刷新</span></a> </div> </div> 
    <div component="$UI/system/components/fragment/list/listTable" xid="listTable2">
     <div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="baasData2" dataItemAlias="baasdata" limit="-1">
      <table class="table table-bordered table-hover table-striped" component="$UI/system/components/bootstrap/table/table" xid="table2" id="table11">
       <thead xid="thead2">
        <tr class="info" xid="tr3">
         <th xid="col14" style="text-align:center;font-size:medium;vertical-align:middle;width:20%;">油料编号</th>
         <th xid="col13" style="font-size:medium;vertical-align:middle;text-align:center;width:10%;">批次</th>
         <th xid="col11" style="font-size:medium;vertical-align:middle;text-align:center;width:10%;">状态</th>
         <th xid="col11" style="font-size:medium;vertical-align:middle;text-align:center;">项目标签</th></tr> </thead> 
       <tbody class="x-list-template" xid="listTemplate2">
        <tr xid="tr4">
         <td xid="td3" style="text-align:center;">
          <div component="$UI/system/components/justep/output/output" class="x-output" xid="output1" bind-ref='ref("O_NBR")'></div></td> 
         <td xid="td7" style="text-align:center;">
          <div component="$UI/system/components/justep/output/output" class="x-output" xid="output3" bind-ref='ref("O_BATCH")'></div></td> 
         <td xid="td14" style="text-align:center;" bind-style='{background: val("O_RISK") =="1"?"red":""}'>
          <div component="$UI/system/components/justep/output/output" class="x-output" xid="output9" bind-ref='ref("O_RISK")' bind-text='val("O_RISK") =="1"?"异常":"正常"' bind-style='{color: val("O_RISK")=="1"?"#FFFF00":"#00B058"}'></div></td> 
         <td xid="td5" style="text-align:center;">
          <div component="$UI/system/components/justep/output/output" class="x-output" xid="output5" bind-ref='ref("O_ITEMS")'></div></td> </tr> </tbody> </table> </div> </div> 
    <div component="$UI/system/components/justep/pagerBar/pagerBar" class="x-pagerbar container-fluid" xid="pagerBar3" data="baasData2">
     <div class="row" xid="div21">
      <div class="col-sm-3" xid="div20">
       <div class="x-pagerbar-length" xid="div19">
        <label component="$UI/system/components/justep/pagerLimitSelect/pagerLimitSelect" class="x-pagerlimitselect" xid="pagerLimitSelect3" defaultValue="10">
         <span xid="span10">显示</span>
         <select component="$UI/system/components/justep/select/select" class="form-control input-sm" xid="select3">
          <option value="10" xid="default5">10</option>
          <option value="20" xid="default22">20</option>
          <option value="50" xid="default21">50</option>
          <option value="100" xid="default20">100</option></select> 
         <span xid="span11">条</span></label> </div> </div> 
      <div class="col-sm-3" xid="div18">
       <div class="x-pagerbar-info" xid="div17">当前显示0条，共0条</div></div> 
      <div class="col-sm-6" xid="div16">
       <div class="x-pagerbar-pagination" xid="div15">
        <ul class="pagination" component="$UI/system/components/bootstrap/pagination/pagination" xid="pagination3">
         <li class="prev" xid="li4">
          <a href="#" xid="a5">
           <span aria-hidden="true" xid="span12">«</span>
           <span class="sr-only" xid="span10">Previous</span></a> </li> 
         <li class="next" xid="li4">
          <a href="#" xid="a6">
           <span aria-hidden="true" xid="span11">»</span>
           <span class="sr-only" xid="span12">Next</span></a> </li> </ul> </div> </div> </div> </div> </div> </div></div>
   </div></div></div>
  </div>
   </div></div> 
   </div>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1" src="./oil.w" status="normal" width="98%" showTitle="true" title="检索信息" height="95%" style="top:9px;left:150px;"></span></div>