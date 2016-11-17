<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:537px;top:307px;" onParamsReceive="modelParamsReceive"><div component="$UI/system/components/justep/data/data" autoLoad="false" xid="data1" idColumn="o_id" confirmDelete="false" confirmRefresh="false" limit="-1">
   <column name="o_id" type="String" xid="xid1"></column>
   <column name="o_cycle" type="Integer" xid="xid2"></column>
   <column name="o_items" type="String" xid="xid3"></column>
   <column name="o_life" type="Integer" xid="xid4"></column>
   <column name="o_nbr" type="String" xid="xid5"></column>
   <column name="o_use" type="Float" xid="xid6"></column>
   <column name="s_batch" type="String" xid="xid7"></column>
   <column name="s_stock" type="Float" xid="xid8"></column>
   <column name="o_name" type="String" xid="xid9"></column></div></div> 
<span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1" style="top:271px;left:46px;" src="./editoil.w" status="normal" width="50%" height="75%"></span><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top3" height="85">
    <div component="$UI/system/components/justep/toolBar/toolBar" class="x-toolbar form-inline x-toolbar-spliter" xid="toolBar1">
     <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
      <div class="x-col x-col-fixed x-col-center" xid="col7" style="width:auto;">
       </div> 
      <div class="x-col x-col-fixed x-col-center" xid="col8" style="width:auto;">
       <a component="$UI/system/components/justep/button/button" class="btn btn-link" label=" 刷新数据" xid="refreshBtn" icon="icon-refresh" onClick="refreshBtnClick">
        <i xid="i5" class="icon-refresh"></i>
        <span xid="span8">刷新数据</span></a> </div> 
      <div class="x-col" xid="col2"></div>
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
          <span xid="span9"></span></a> </div> </div> </div> </div> </div> </div> 
   <div class="x-panel-content" xid="content1">
    <div component="$UI/system/components/justep/list/list" class="x-list x-cards" xid="list1" data="data1">
   <ul class="x-list-template x-min-height list-group" xid="listTemplateUl1" componentname="$UI/system/components/justep/list/list#listTemplateUl" id="undefined_listTemplateUl1">
    <li xid="li1" class="x-min-height list-group-item" componentname="li(html)" id="undefined_li1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col x-col-fixed x-col-center" xid="col1" style="width:auto;text-align:right;"><img src="../img/foil.png" alt="" xid="image1"></img></div>
   <div class="x-col x-col-center" xid="col4"><div component="$UI/system/components/justep/row/row" class="x-row nopadding" xid="row2" style="height:25;">
   <div class="x-col" xid="col3" style="text-align:center;"><span xid="span2" style="font-weight:bold;"><![CDATA[油料编号]]></span></div>
   <div class="x-col" xid="col5" style="text-align:center;font-weight:bold;"><span xid="span3"><![CDATA[油料名称]]></span></div>
   <div class="x-col x-col-10" xid="col6" style="text-align:center;"><span xid="span4" style="font-weight:bold;"><![CDATA[批次]]></span></div>
  <div class="x-col x-col-15" xid="col9" style="text-align:center;"><span xid="span10" style="font-weight:bold;"><![CDATA[库存量]]></span></div>
  <div class="x-col" xid="col10" style="text-align:center;"><span xid="span11" style="font-weight:bold;"><![CDATA[项目标签]]></span></div></div>
  </div>
  <div class="x-col x-col-fixed x-col-center" xid="col20" style="width:auto;"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="button" xid="button1" icon="icon-chevron-right">
   <i xid="i1" class="icon-chevron-right"></i>
   <span xid="span1"></span></a></div></div></li></ul> </div><div component="$UI/system/components/justep/pagerBar/pagerBar" class="x-pagerbar container-fluid" xid="pagerBar1" data="data1">
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
           <span class="sr-only" xid="span7">Next</span></a> </li> </ul> </div> </div> </div> </div> 
  </div> </div></div>