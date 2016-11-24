<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window x-full-screen" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="top:20px;left:46px;height:auto;" onLoad="modelLoad"></div> 

  
  <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-contents-content background" xid="content1"><div xid="div8" class="div-login">
   <div class="list-group" xid="listGroup1">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" title="物资采购预警系统" style="font-weight:bolder;font-size:x-large;">
     <div class="x-titlebar-title" xid="title1">物资采购预警系统</div></div> 
    <div xid="div12" class="list-group-item">
     <div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup4">
      <span class="input-group-addon" xid="span2">账号</span>
      <input type="text" class="form-control" component="$UI/system/components/justep/input/input" xid="username" placeHolder="请输入账号" bind-keydown="usernameKeydown"></input></div> </div> 
    <div xid="div11" class="list-group-item">
     <div class="input-group" component="$UI/system/components/bootstrap/inputGroup/inputGroup" xid="inputGroup3">
      <span class="input-group-addon" xid="span5">密码</span>
      <input component="$UI/system/components/justep/input/password" class="form-control" xid="pwd" placeHolder="请输入密码" bind-keydown="pwdKeydown"></input></div> </div> 
    <div xid="div10" class="list-group-item">
     <a component="$UI/system/components/justep/button/button" class="btn btn-default btn-block" label="登录" xid="loginBtn" onClick="loginBtnClick">
      <i xid="i5"></i>
      <span xid="span9">登录</span></a> </div> 
    <div xid="div9" class="list-group-item" align="center">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm" label="注册" xid="regBtn" style="color:#FF8080;" onClick="regBtnClick">
      <i xid="i6"></i>
      <span xid="span10">注册</span></a> </div> </div> </div></div></div>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1" src="../user/reguser.w" onReceived="windowDialog1Received" width="50%" height="60%" showTitle="true" title="用户注册" status="normal" forceRefreshOnOpen="true"></span></div>