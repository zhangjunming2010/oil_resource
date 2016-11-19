<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:333px;left:578px;"><div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="baasData1" queryAction="queryOil_resource" saveAction="saveOil_resource" url="/osews/os" tableName="oil_resource" idColumn="o_id" onBeforeRefresh="baasData1BeforeRefresh"><column label="o_id" name="o_id" type="String" xid="default1"></column>
  <column label="o_cycle" name="o_cycle" type="Integer" xid="default2"></column>
  <column label="o_items" name="o_items" type="String" xid="default3"></column>
  <column label="o_life" name="o_life" type="Integer" xid="default4"></column>
  <column label="o_nbr" name="o_nbr" type="String" xid="default5"></column>
  <column label="o_review" name="o_review" type="String" xid="default6"></column>
  <column label="o_risk" name="o_risk" type="String" xid="default7"></column>
  <column label="o_use" name="o_use" type="Float" xid="default8"></column>
  <column label="o_name" name="o_name" type="String" xid="xid1"></column></div>
  <div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="baasData2" queryAction="queryOil_resource" saveAction="saveOil_resource" url="/osews/os" tableName="oil_resource" idColumn="o_id" onBeforeRefresh="baasData2BeforeRefresh">
   <column label="o_id" name="o_id" type="String" xid="default15"></column>
  <column label="o_cycle" name="o_cycle" type="Integer" xid="default16"></column>
  <column label="o_items" name="o_items" type="String" xid="default13"></column>
  <column label="o_life" name="o_life" type="Integer" xid="default14"></column>
  <column label="o_nbr" name="o_nbr" type="String" xid="default11"></column>
  <column label="o_review" name="o_review" type="String" xid="default12"></column>
  <column label="o_risk" name="o_risk" type="String" xid="default9"></column>
  <column label="o_use" name="o_use" type="Float" xid="default10"></column>
  <column label="o_name" name="o_name" type="String" xid="xid2"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1" height="85"><div component="$UI/system/components/justep/toolBar/toolBar" class="x-toolbar form-inline x-toolbar-spliter" xid="toolBar1">
   <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
    <div class="x-col" xid="col7"></div>
    <div class="x-col" xid="col8"></div>
    <div class="x-col x-col-fixed x-col-center" xid="col15" style="width:auto;">
     <div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup4">
      <span class="input-group-addon" xid="span17"><![CDATA[物资编号]]></span>
      <input type="text" class="form-control" component="$UI/system/components/justep/input/input" xid="input4" bind-keydown="input4Keydown"></input></div> </div> 
    <div class="x-col x-col-fixed x-col-center" xid="col16" style="width:auto;">
     <div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup5">
      <span class="input-group-addon" xid="span16"><![CDATA[物资批次]]></span>
      <input type="text" class="form-control" component="$UI/system/components/justep/input/input" xid="input5" bind-keydown="input5Keydown"></input></div> </div> 
    <div class="x-col x-col-fixed x-col-center" xid="col17" style="width:auto;">
     <div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup6">
      <span class="input-group-addon" xid="span13">项目标签</span>
      <input type="text" class="form-control" component="$UI/system/components/justep/input/input" xid="input6" bind-keydown="input6Keydown"></input>
      <div class="input-group-btn" xid="layoutWizard1">
       <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-icon" xid="searchBtn" icon="icon-android-search" onClick="searchBtnClick">
        <i xid="i4" class="icon-android-search"></i>
        <span xid="span9"></span></a> </div> </div> </div> </div> </div>
  </div>
   <div class="x-panel-content" xid="content1"><div component="$UI/system/components/bootstrap/row/row" class="row" xid="row1">
   <div class="col col-xs-6" xid="col2">
    <div component="$UI/system/components/justep/bar/bar" class="x-bar" xid="bar3" style="height:35;"><span xid="span6" class="center"><![CDATA[复验预警]]></span></div>
  <div component="$UI/system/components/justep/list/list" class="x-list x-cards" xid="list1" data="baasData1">
   <ul class="x-list-template x-min-height list-group" xid="listTemplateUl1" componentname="$UI/system/components/justep/list/list#listTemplateUl" id="undefined_listTemplateUl1">
    <li xid="li1" style="width:auto;" class="x-min-height list-group-item" componentname="li(html)" id="undefined_li1"><div component="$UI/system/components/justep/row/row" class="x-row x-row-center" xid="row2" style="height:75px;">
   <div class="x-col x-col-fixed x-col-center" xid="col1" style="width:auto;"><img src="../img/foil.png" alt="" xid="image1"></img></div>
   <div class="x-col x-col-50 x-col-center" xid="col12"><div component="$UI/system/components/justep/row/row" class="x-row x-row-center" xid="row6">
   <div class="x-col x-col-center" xid="col13"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit2">
   <label class="x-label" xid="label2" style="text-align:center;font-weight:bold;color:#469EF7;"><![CDATA[编号：]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output3" bind-ref='ref("o_nbr")'></div></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit14">
   <label class="x-label" xid="label14" style="text-align:center;font-weight:bold;color:#469EF7;"><![CDATA[名称：]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output14" bind-ref='ref("o_name")'></div></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit9">
   <label class="x-label" xid="label9" style="text-align:center;font-weight:bold;color:#469EF7;"><![CDATA[项目：]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output9" bind-ref='ref("o_items")'></div></div></div>
   </div>
  </div>
  <div class="x-col x-col-center" xid="col24"><span xid="span1" bind-text='"预警信息：" +  val("o_review")' style="color:#FF0000;"></span></div>
  <div class="x-col x-col-fixed x-col-center" xid="col4" style="width:auto;"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-xs btn-only-label pull-right" label=" 取消预警" xid="button1" icon="icon-android-close">
   <i xid="i1" class="icon-android-close"></i>
   <span xid="span4"> 取消预警</span></a></div></div></li></ul> </div></div> 
   <div class="col col-xs-6" xid="col3">
    <div component="$UI/system/components/justep/bar/bar" class="x-bar" xid="bar2" style="height:35;"><span xid="span7" class="center"><![CDATA[库存预警]]></span></div>
  <div component="$UI/system/components/justep/list/list" class="x-list x-cards" xid="list2" data="baasData2">
   <ul class="x-list-template x-min-height list-group" xid="listTemplateUl5" componentname="$UI/system/components/justep/list/list#listTemplateUl" id="undefined_listTemplateUl1">
    <li xid="li5" style="width:auto;" class="x-min-height list-group-item" componentname="li(html)" id="undefined_li1">
     <div component="$UI/system/components/justep/row/row" class="x-row x-row-center" xid="row14" style="height:75px;">
      <div class="x-col x-col-fixed x-col-center" xid="col39" style="width:auto;">
       <img src="../img/eoil.png" alt="" xid="image5"></img></div> 
      <div class="x-col x-col-50 x-col-center" xid="col38">
       <div component="$UI/system/components/justep/row/row" class="x-row x-row-center" xid="row13">
        <div class="x-col x-col-center" xid="col36">
         <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit17">
          <label class="x-label" xid="label17" style="text-align:center;font-weight:bold;color:#469EF7;"><![CDATA[编号：]]></label>
          <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output15" bind-ref='ref("o_nbr")'></div></div> 
         <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit16">
          <label class="x-label" xid="label16" style="text-align:center;font-weight:bold;color:#469EF7;"><![CDATA[名称：]]></label>
          <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output16" bind-ref='ref("o_name")'></div></div> 
         <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit15">
          <label class="x-label" xid="label18" style="text-align:center;font-weight:bold;color:#469EF7;"><![CDATA[项目：]]></label>
          <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output17" bind-ref='ref("o_items")'></div></div> </div> </div> </div> 
      <div class="x-col x-col-center" xid="col37">
       <span xid="span2" bind-text='"预警信息：" +  val("o_risk")' style="color:#FF0000;"></span></div> 
  <div class="x-col x-col-fixed x-col-center" xid="col5" style="width:auto;"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-xs btn-only-label pull-right" label=" 取消预警" xid="button2" icon="icon-android-close">
   <i xid="i2" class="icon-android-close"></i>
   <span xid="span5">取消预警</span></a></div></div> </li> </ul> </div></div> </div></div>
   </div>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1" src="./oillist.w" status="normal" width="98%" showTitle="true" title="检索信息" height="90%" style="top:382px;left:100px;"></span></div>