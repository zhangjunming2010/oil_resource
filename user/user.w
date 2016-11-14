<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:195px;left:557px;">
    <div component="$UI/system/components/justep/data/baasData" autoLoad="true"
      xid="baasData1" queryAction="queryUser_info" saveAction="saveUser_info" url="/osews/os"
      tableName="user_info" idColumn="U_ID" confirmDelete="false" confirmRefresh="false">
      <column label="用户名" name="U_ID" type="String" xid="default8"/>  
      <column label="姓名" name="U_NAME" type="String" xid="default9"/>  
      <column label="密码" name="U_PWD" type="String" xid="default10"/>  
      <column label="权限" name="U_AUTH" type="Integer" xid="default11"/>
    </div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="data1" idColumn="id"><column name="id" type="Integer" xid="xid1"></column>
  <column name="name" type="String" xid="xid2"></column>
  <column name="value" type="Integer" xid="xid3"></column>
  <data xid="default1">[{&quot;id&quot;:1,&quot;name&quot;:&quot;普通用户&quot;,&quot;value&quot;:0},{&quot;id&quot;:2,&quot;name&quot;:&quot;维护人员&quot;,&quot;value&quot;:1},{&quot;id&quot;:3,&quot;name&quot;:&quot;后台管理员&quot;,&quot;value&quot;:2}]</data></div></div>  
  <span component="$UI/system/components/justep/messageDialog/messageDialog"
    xid="messageDialog1" type="YesNo" title="确认" message="确认删除该数据？" onYes="messageDialog1Yes"
    style="top:327px;left:116px;"/>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1" style="top:288px;left:50px;" src="./detail.w" showTitle="true" title="权限修改" status="normal" width="25%" height="35%" onReceived="windowDialog1Received"><result concept="baasData1" operation="modify" origin="baasData1" xid="default20">
   <mapping from="U_ID" to="U_ID" locator="true" xid="default21"></mapping>
   <mapping from="U_NAME" to="U_NAME" xid="default22"></mapping>
   <mapping from="U_PWD" to="U_PWD" xid="default23"></mapping>
   <mapping from="U_AUTH" to="U_AUTH" xid="default24"></mapping></result></span><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top1" height="85">
      <div component="$UI/system/components/justep/toolBar/toolBar" class="x-toolbar form-inline x-toolbar-spliter"
        xid="toolBar"> 
        <div component="$UI/system/components/justep/row/row" class="x-row"
          xid="row3"> 
          <div class="x-col x-col-fixed x-col-center" xid="col8" style="width:auto;"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link"
              label=" 刷新数据" xid="refreshBtn" icon="icon-refresh" onClick="refreshBtnClick"> 
              <i xid="i5" class="icon-refresh"/>  
              <span xid="span8">刷新数据</span>
            </a>
          </div>  
          <div class="x-col" xid="col9"/>
          <div class="x-col x-col-fixed x-col-center" xid="col2" style="width:auto;">
            <div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup"
              xid="inputGroup2"> 
              <span class="input-group-addon" xid="span12"><![CDATA[角色]]></span>  
              <select component="$UI/system/components/justep/select/select" bind-optionsCaption="请选择..."
                class="form-control" xid="select2" bind-options="data1" bind-optionsValue="value" bind-optionsLabel="name" onChange="select2Change"/>
              </div> 
          </div>  
          <div class="x-col x-col-fixed x-col-center" xid="col17" style="width:auto;"> 
            <div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup"
              xid="inputGroup1"> 
              <span class="input-group-addon" xid="span11"><![CDATA[姓名]]></span>  
              <input type="text" class="form-control" component="$UI/system/components/justep/input/input"
                xid="input1"/>  
              <div class="input-group-btn" xid="div1"> 
                <a component="$UI/system/components/justep/button/button"
                  class="btn btn-default btn-only-icon" label="button" xid="searchBtn"
                  icon="icon-android-search" onClick="searchBtnClick"> 
                  <i xid="i6" class="icon-android-search"/>  
                  <span xid="span4"/>
                </a> 
              </div> 
            </div> 
          </div> 
        </div> 
      </div>
    </div>  
    <div class="x-panel-content" xid="content1">
      <div component="$UI/system/components/fragment/list/listTable" xid="listTable2"> 
        <div component="$UI/system/components/justep/list/list" class="x-list"
          xid="list2" data="baasData1"> 
          <table class="table table-bordered table-hover table-striped" component="$UI/system/components/bootstrap/table/table"
            xid="table2"> 
            <thead xid="thead2"> 
              <tr xid="tr5" class="info"> 
                <th xid="col13" style="text-align:center;vertical-align:middle;"><![CDATA[用户名]]></th>  
                <th xid="col14" style="text-align:center;vertical-align:middle;"><![CDATA[用户姓名]]></th>  
                <th xid="col1" style="text-align:center;font-weight:bold;vertical-align:middle;width:8%;"
                  class="hidden-element">操作</th> 
              </tr> 
            </thead>  
            <tbody class="x-list-template" xid="listTemplate2"> 
              <tr xid="tr6" bind-dblclick="tr6Dblclick"> 
                <td xid="td18" bind-text="ref(&quot;U_ID&quot;)" style="text-align:center;"/>  
                <td xid="td19" style="text-align:center;" bind-text="ref(&quot;U_NAME&quot;)"
                  bind-css="{display:&quot;none&quot;}"/>  
                <td xid="td2" style="text-align:center;">
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-default btn-xs" label="删除" xid="delBtn" onClick="delBtnClick"> 
                    <i xid="i2"/>  
                    <span xid="span2">删除</span>
                  </a>
                </td> 
              </tr> 
            </tbody> 
          </table> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/pagerBar/pagerBar" class="x-pagerbar container-fluid"
        xid="pagerBar1" data="baasData1"> 
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
