<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:537px;top:307px;"
    onParamsReceive="modelParamsReceive"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="data1" idColumn="o_id" confirmDelete="false" confirmRefresh="false" limit="-1" onCustomRefresh="data1CustomRefresh"> 
      <column name="o_id" type="String" xid="xid1"/>  
      <column name="o_cycle" type="Integer" xid="xid2"/>  
      <column name="o_items" type="String" xid="xid3"/>  
      <column name="o_life" type="Integer" xid="xid4"/>  
      <column name="o_nbr" type="String" xid="xid5"/>  
      <column name="o_use" type="Float" xid="xid6"/>  
      <column name="s_batch" type="String" xid="xid7"/>  
      <column name="s_stock" type="Float" xid="xid8"/>  
      <column name="o_name" type="String" xid="xid9"/> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1"
    style="top:419px;left:124px;" src="./editoil.w" status="normal" width="50%" height="68%"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top3" height="85"> 
      <div component="$UI/system/components/justep/toolBar/toolBar" class="x-toolbar form-inline x-toolbar-spliter"
        xid="toolBar1"> 
        <div component="$UI/system/components/justep/row/row" class="x-row"
          xid="row3"> 
          <div class="x-col x-col-fixed x-col-center" xid="col7" style="width:auto;"/>  
          <div class="x-col x-col-fixed x-col-center" xid="col8" style="width:auto;"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link"
              label=" 刷新数据" xid="refreshBtn" icon="icon-refresh" onClick="refreshBtnClick"> 
              <i xid="i5" class="icon-refresh"/>  
              <span xid="span8">刷新数据</span> 
            </a> 
          </div>  
          <div class="x-col" xid="col2"/>  
          <div class="x-col x-col-fixed x-col-center" xid="col15" style="width:auto;"> 
            <div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup"
              xid="inputGroup4"> 
              <span class="input-group-addon" xid="span17"><![CDATA[物资编号]]></span>  
              <input type="text" class="form-control" component="$UI/system/components/justep/input/input"
                xid="input4" bind-keydown="input4Keydown"/> 
            </div> 
          </div>  
          <div class="x-col x-col-fixed x-col-center" xid="col16" style="width:auto;"> 
            <div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup"
              xid="inputGroup5"> 
              <span class="input-group-addon" xid="span16"><![CDATA[物资批次]]></span>  
              <input type="text" class="form-control" component="$UI/system/components/justep/input/input"
                xid="input5" bind-keydown="input5Keydown"/> 
            </div> 
          </div>  
          <div class="x-col x-col-fixed x-col-center" xid="col17" style="width:auto;"> 
            <div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup"
              xid="inputGroup6"> 
              <span class="input-group-addon" xid="span13">项目标签</span>  
              <input type="text" class="form-control" component="$UI/system/components/justep/input/input"
                xid="input6" bind-keydown="input6Keydown"/>  
              <div class="input-group-btn" xid="layoutWizard1"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-default btn-only-icon" label="button" xid="searchBtn"
                  icon="icon-android-search" onClick="searchBtnClick"> 
                  <i xid="i4" class="icon-android-search"/>  
                  <span xid="span9"/> 
                </a> 
              </div> 
            </div> 
          </div> 
        </div> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content1"> 
      <div component="$UI/system/components/fragment/list/listTable" xid="listTable2"
        data="data1"> 
        <div component="$UI/system/components/justep/list/list" class="x-list"
          xid="list2" data="data1"> 
          <table class="table table-bordered table-hover table-striped" component="$UI/system/components/bootstrap/table/table"
            xid="table2"> 
            <thead xid="thead2"> 
              <tr xid="tr5" class="info"> 
                <th xid="col6" style="text-align:center;vertical-align:middle;width:12%;"><![CDATA[物资编号]]></th>  
                <th xid="col1" style="text-align:center;font-weight:bold;vertical-align:middle;width:8%;"
                  class="hidden-element"><![CDATA[物资名称]]></th>
                <th xid="col9" style="text-align:center;vertical-align:middle;width:14%;">平均采购周期 
                  <br xid="default1"/>(单位：月)
                </th>  
                <th xid="col10" style="text-align:center;vertical-align:middle;width:9%;">月均消耗量
                  <br xid="default3"/>(单位：KG)
                </th>  
                <th xid="col11" style="text-align:center;vertical-align:middle;width:12%;">保质期 
                  <br xid="default3"/>(单位：月)
                </th>  
                <th xid="col12" style="text-align:center;width:10%;vertical-align:middle;">库存量</th>  
                <th xid="col13" style="text-align:center;vertical-align:middle;width:10%;">批次</th>  
                <th xid="col14" style="text-align:center;vertical-align:middle;">项目标签</th> 
              </tr> 
            </thead>  
            <tbody class="x-list-template" xid="listTemplate2"> 
              <tr xid="tr6"> 
                <td xid="td13" style="text-align:center;"> 
                  <div component="$UI/system/components/justep/output/output"
                    class="x-output" xid="output1" bind-ref="ref(&quot;o_nbr&quot;)"/> 
                </td>  
                <td xid="td1" style="text-align:center;"> 
                  <div component="$UI/system/components/justep/output/output"
                    class="x-output" xid="output8" bind-ref="ref(&quot;o_name&quot;)"/>
                </td>
                <td xid="td14" style="text-align:center;"> 
                  <div component="$UI/system/components/justep/output/output"
                    class="x-output" xid="output2" bind-ref="ref(&quot;o_cycle&quot;)"/> 
                </td>  
                <td xid="td15" style="text-align:center;"> 
                  <div component="$UI/system/components/justep/output/output"
                    class="x-output" xid="output3" bind-ref="ref(&quot;o_use&quot;)" format="0,000.00"/> 
                </td>  
                <td xid="td16" style="text-align:center;"> 
                  <div component="$UI/system/components/justep/output/output"
                    class="x-output" xid="output4" bind-ref="ref(&quot;o_life&quot;)"/> 
                </td>  
                <td xid="td17" style="text-align:center;"> 
                  <div component="$UI/system/components/justep/output/output"
                    class="x-output" xid="output5" bind-ref="ref(&quot;s_stock&quot;)" format="0,000.00"/> 
                </td>  
                <td xid="td18" style="text-align:center;"> 
                  <div component="$UI/system/components/justep/output/output"
                    class="x-output" xid="output6" bind-ref="ref(&quot;s_batch&quot;)"/> 
                </td>  
                <td xid="td19" style="text-align:center;" bind-css="{display:&quot;none&quot;}"> 
                  <div component="$UI/system/components/justep/output/output"
                    class="x-output" xid="output7" bind-ref="ref(&quot;o_items&quot;)"/> 
                </td> 
              </tr> 
            </tbody> 
          </table> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/pagerBar/pagerBar" class="x-pagerbar container-fluid"
        xid="pagerBar1" data="data1"> 
        <div class="row" xid="div4"> 
          <div class="col-sm-3" xid="div5"> 
            <div class="x-pagerbar-length" xid="div6"> 
              <label component="$UI/system/components/justep/pagerLimitSelect/pagerLimitSelect"
                class="x-pagerlimitselect" xid="pagerLimitSelect1" defaultValue="10"> 
                <span xid="span5">显示</span>  
                <select component="$UI/system/components/justep/select/select"
                  class="form-control input-sm" xid="select1"> 
                  <option value="10" xid="default17">10</option>  
                  <option value="20" xid="default18">20</option>  
                  <option value="50" xid="default19">50</option>  
                  <option value="100" xid="default16">100</option> 
                </select>  
                <span xid="span6">条</span> 
              </label> 
            </div> 
          </div>  
          <div class="col-sm-3" xid="div7"> 
            <div class="x-pagerbar-info" xid="div8">当前显示0条，共0条</div> 
          </div>  
          <div class="col-sm-6" xid="div9"> 
            <div class="x-pagerbar-pagination" xid="div10"> 
              <ul class="pagination" component="$UI/system/components/bootstrap/pagination/pagination"
                xid="pagination1"> 
                <li class="prev" xid="li8"> 
                  <a href="#" xid="a3"> 
                    <span aria-hidden="true" xid="span7">«</span>  
                    <span class="sr-only" xid="span5">Previous</span> 
                  </a> 
                </li>  
                <li class="next" xid="li9"> 
                  <a href="#" xid="a4"> 
                    <span aria-hidden="true" xid="span6">»</span>  
                    <span class="sr-only" xid="span7">Next</span> 
                  </a> 
                </li> 
              </ul> 
            </div> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div> 
</div>
