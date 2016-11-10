<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window x-full-screen" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" onModelConstructDone="modelModelConstructDone" style="top:20px;left:46px;height:auto;"><div component="$UI/system/components/justep/data/baasData" autoLoad="true" xid="userData" queryAction="queryUser_info" saveAction="saveUser_info" url="/osews/os" tableName="user_info" idColumn="id">
   <column label="id" name="id" type="Long" xid="default1"></column>
   <column label="u_name" name="u_name" type="String" xid="default2"></column>
   <column label="u_pwd" name="u_pwd" type="String" xid="default3"></column>
   <column label="u_auth" name="u_auth" type="Integer" xid="default4"></column></div></div> 

  
  <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-contents-content background" xid="content1"><div xid="div8" class="div-login">
   <div class="list-group" xid="listGroup1">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" title="油料采购预警系统" style="font-weight:bolder;font-size:x-large;">
     <div class="x-titlebar-title" xid="title1">油料采购预警系统</div></div> 
    <div xid="div12" class="list-group-item">
     <div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup4">
      <span class="input-group-addon" xid="span2">账号</span>
      <input type="text" class="form-control" component="$UI/system/components/justep/input/input" xid="username" placeHolder="请输入账号" onFocus="usernameFocus"></input></div> </div> 
    <div xid="div11" class="list-group-item">
     <div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup3">
      <span class="input-group-addon" xid="span5">密码</span>
      <input component="$UI/system/components/justep/input/password" class="form-control" xid="pwd" placeHolder="请输入密码" bind-focus="pwdFocus"></input></div> </div> 
    <div xid="div10" class="list-group-item">
     <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="登录" xid="loginBtn" onClick="loginBtnClick">
      <i xid="i5"></i>
      <span xid="span9">登录</span></a> </div> 
    <div xid="div9" class="list-group-item" align="center">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link" label="联系我们" xid="button2">
      <i xid="i6"></i>
      <span xid="span10">联系我们</span></a> </div> </div> </div></div></div></div>