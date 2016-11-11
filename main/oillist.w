<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:296px;left:504px;" onParamsReceive="modelParamsReceive"><div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="baasData1" queryAction="queryOil_resource" saveAction="saveOil_resource" url="/osews/os" tableName="oil_resource" idColumn="O_ID" orderBy="O_NBR:asc,O_BATCH:asc" confirmDelete="false" confirmRefresh="false" limit="-1">
   <column label="序号" name="O_ID" type="String" xid="default5"></column>
   <column label="油料编号" name="O_NBR" type="String" xid="default6"></column>
   <column label="平均采购周期（单位：月）" name="O_CYCLE" type="Float" xid="default4"></column>
   <column label="月均消耗量" name="O_USE" type="Float" xid="default4"></column>
   <column label="保质期（单位：月）" name="O_LIFE" type="Integer" xid="default5"></column>
   <column label="油料库存" name="O_STOCK" type="Float" xid="default6"></column>
   <column label="油料批次" name="O_BATCH" type="String" xid="default7"></column>
   <column label="批次复验预警标识" name="O_REVIEW" type="Integer" xid="default8"></column>
   <column label="采购风险预警标识" name="O_RISK" type="Integer" xid="default9"></column>
   <column label="项目标签" name="O_ITEMS" type="String" xid="default10"></column></div></div> 
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
    <div component="$UI/system/components/fragment/list/listTable" xid="listTable2">
     <div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="baasData1">
      <table class="table table-bordered table-hover table-striped" component="$UI/system/components/bootstrap/table/table" xid="table2">
       <thead xid="thead2">
        <tr xid="tr5" class="info">
         <th xid="col6" style="text-align:center;vertical-align:middle;width:12%;">油料编号</th>
         <th xid="col9" style="text-align:center;vertical-align:middle;width:14%;">平均采购周期
                  
(单位：月)
          <br xid="default1"></br></th> 
         <th xid="col10" style="text-align:center;vertical-align:middle;width:9%;">月均
                  
消耗量
          <br xid="default2"></br></th> 
         <th xid="col11" style="text-align:center;vertical-align:middle;width:12%;">保质期
                  
(单位：月)
          <br xid="default3"></br></th> 
         <th xid="col12" style="text-align:center;width:10%;vertical-align:middle;">库存量</th>
         <th xid="col13" style="text-align:center;vertical-align:middle;width:10%;">批次</th>
         <th xid="col14" style="text-align:center;vertical-align:middle;">项目标签</th>
         <th xid="col1" style="text-align:center;vertical-align:middle;width:12%;">操作</th></tr> </thead> 
       <tbody class="x-list-template" xid="listTemplate2">
        <tr xid="tr6">
         <td xid="td13" bind-text='ref("O_NBR")' style="text-align:center;"></td>
         <td xid="td14" bind-text='ref("O_CYCLE")' style="text-align:center;"></td>
         <td xid="td15" bind-text='ref("O_USE")' style="text-align:center;"></td>
         <td xid="td16" bind-text='ref("O_LIFE")' style="text-align:center;"></td>
         <td xid="td17" bind-text='ref("O_STOCK")' style="text-align:center;"></td>
         <td xid="td18" bind-text='ref("O_BATCH")' style="text-align:center;"></td>
         <td xid="td19" style="text-align:center;" bind-text='ref("O_ITEMS")'></td>
         <td xid="td1" style="text-align:center;">
          <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-xs" label="查看" xid="detailBtn" onClick="detailBtnClick">
           <i xid="i6"></i>
           <span xid="span3">查看</span></a> 
          
          </td> </tr> </tbody> </table> </div> </div> 
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
           <span class="sr-only" xid="span7">Next</span></a> </li> </ul> </div> </div> </div> </div> </div> </div></div>