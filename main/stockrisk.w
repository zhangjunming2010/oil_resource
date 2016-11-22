<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:281px;left:497px;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="data1" idColumn="o_id" confirmDelete="false" confirmRefresh="false" limit="-1" onCustomRefresh="data1CustomRefresh">
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
   <div class="x-col x-col-center" xid="col5" style="text-align:center;"><span style="color:#FF0000;font-weight:bold;" xid="span1"><![CDATA[预警阀值：]]></span>
  <span xid="span4" bind-text='(( $model.data1.val("o_cycle") + 1) * $model.data1.val("o_use"))' style="color:#FF0000;" id="risksum"></span>
  <span xid="span5" style="color:#FF0000;"><![CDATA[KG]]></span></div>
   </div></div><div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/controlGroup/controlGroup" class="x-control-group" title="title" xid="controlGroup1"> 
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="data1">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div component="$UI/system/components/justep/row/row" class="x-row" xid="row1">
   <div class="x-col x-col-center" xid="col10"><div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup1">
   <span class="input-group-addon" xid="span3" bind-text=' val("s_batch") +"批次库存量："'></span><input type="text" class="form-control" component="$UI/system/components/justep/input/input" xid="input3" bind-ref='ref("s_stock")' format="0,000.00"></input>
  </div></div></div></li></ul> </div>
  </div></div>
   <div class="x-panel-bottom" xid="bottom1" style="text-align:center;"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="更新" xid="updateBtn" onClick="updateBtnClick">
   <i xid="i2"></i>
   <span xid="span10">更新</span></a></div></div></div>
