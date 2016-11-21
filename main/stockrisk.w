<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:319px;left:83px;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="data1" idColumn="o_id" confirmDelete="false" confirmRefresh="false" limit="-1" onCustomRefresh="data1CustomRefresh">
   <column name="o_id" type="String" xid="xid1"></column>
   <column name="o_cycle" type="Integer" xid="xid2"></column>
   <column name="o_items" type="String" xid="xid3"></column>
   <column name="o_life" type="Integer" xid="xid4"></column>
   <column name="o_nbr" type="String" xid="xid5"></column>
   <column name="o_use" type="Float" xid="xid6"></column>
   <column name="s_batch" type="String" xid="xid7"></column>
   <column name="s_stock" type="Float" xid="xid8"></column>
   <column name="o_name" type="String" xid="xid9"></column>
   <column name="s_id" type="String" xid="xid10"></column></div>
  </div>  
  
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top2"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row2">
   <div class="x-col x-col-10" xid="col4"></div>
   <div class="x-col" xid="col5"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4">
   <label class="x-label" xid="label4" style="font-weight:bold;color:#FF0000;"><![CDATA[预警阀值：]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output2" bind-text='(( $model.data1.val("o_cycle") + 1) * $model.data1.val("o_use")) +" KG"' style="color:#FF0000;"></div></div></div>
   <div class="x-col" xid="col6"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
   <label class="x-label" xid="label3" style="font-weight:bold;color:#0000FF;"><![CDATA[总库存：]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit" xid="output1" style="color:#0000FF;"></div></div></div>
  <div class="x-col x-col-10" xid="col11"></div></div></div><div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/controlGroup/controlGroup" class="x-control-group" title="title" xid="controlGroup1"> 
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="data1">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col x-col-center" xid="col10"><div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup1">
   <span class="input-group-addon" xid="span3" bind-text=' val("s_batch") +"批次库存量："'></span><input type="text" class="form-control" component="$UI/system/components/justep/input/input" xid="input3" bind-ref='ref("s_stock")' format="0,000.00"></input>
  <div class="input-group-btn" xid="layoutWizard1">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="更新" xid="updateBtn" onClick="updateBtnClick">
    <i xid="i1"></i>
    <span xid="span2">更新</span></a> </div></div></div></div></li></ul> </div>
  </div></div>
   </div></div>
