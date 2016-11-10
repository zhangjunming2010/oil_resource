<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:107px;left:403px;" onModelConstruct="modelModelConstruct"> 
  </div>  
  <div component="$UI/system/components/justep/wing/wing" class="x-wing" xid="wing1" display="push">
   <div class="x-wing-left" xid="left1"><div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
   <div class="x-panel-top" xid="top2">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar2" title="菜单">
     <div class="x-titlebar-left" xid="left3"></div>
     <div class="x-titlebar-title" xid="title2">菜单</div>
     <div class="x-titlebar-right reverse" xid="right2"></div></div> </div> 
   <div class="x-panel-content x-cards" xid="content3">
    <li xid="li3" class="list-group-item text-center tb-nopadding" style="background-color:#FFFFFF;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-block" label=" 首页" xid="indexBtn" icon="icon-home" onClick="indexBtnClick">
      <i xid="i3" class="icon-home"></i>
      <span xid="span3">首页</span></a> </li> 
    <li xid="li1" class="list-group-item text-center tb-nopadding" style="background-color:#FFFFFF;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-block" label=" 油料管理" xid="oilBtn" icon="icon-waterdrop" onClick="oilBtnClick">
      <i xid="i2" class="icon-waterdrop"></i>
      <span xid="span2">油料管理</span></a> </li> 
    <li xid="li2" class="list-group-item text-center tb-nopadding" style="background-color:#FFFFFF;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-block" label=" 人员管理" xid="userBtn" icon="icon-person" onClick="userBtnClick">
      <i xid="i2" class="icon-person"></i>
      <span xid="span2">人员管理</span></a> </li> 
    <li xid="li6" class="list-group-item text-center tb-nopadding" style="background-color:#FFFFFF;">
     <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-block" label=" 关于" xid="aboutBtn" icon="icon-help" onClick="aboutBtnClick">
      <i xid="i7" class="icon-help"></i>
      <span xid="span8">关于</span></a> </li> </div> </div></div>
   <div class="x-wing-content" xid="content1">
    <div class="x-wing-backdrop" xid="div1"></div>
  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" title="油料库存预警系统">
   <div class="x-titlebar-left" xid="left2"><a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon hidden-element" label="button" xid="leftmenuBtn" onClick="leftmenuBtnClick" icon="glyphicon glyphicon-menu-hamburger">
   <i xid="i6" class="glyphicon glyphicon-menu-hamburger"></i>
   <span xid="span6"></span></a></div>
   <div class="x-titlebar-title" xid="title1">油料库存预警系统</div>
   <div class="x-titlebar-right reverse" xid="right3"></div></div>
  </div>
   <div class="x-panel-content" xid="content2"><div component="$UI/system/components/justep/windowContainer/windowContainer" class="x-window-container" xid="windowContainer1" src="../main/main.w"></div></div>
   </div></div> 
   </div>
  </div>