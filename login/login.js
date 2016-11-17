define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	/*
	 * Model.prototype.loginBtnClick = function(event) { var pwdid =
	 * this.getIDByXID("pwd"); $("#" + pwdid).blur(); var name =
	 * this.comp("username").val(); var pwd = this.comp("pwd").val(); var
	 * userData = this.comp("userData"); if (name === "") {
	 * justep.Util.hint("请输入用户！", { "delay" : 500, "position" : "middle", "type" :
	 * "warning" }); $(".x-hint").find("button[class='close']").hide(); } else {
	 * if (pwd === "") { justep.Util.hint("请输入密码！", { "delay" : 500, "position" :
	 * "middle", "type" : "warning" });
	 * $(".x-hint").find("button[class='close']").hide(); } else {
	 * userData.setFilter("filter1", "u_id = '" + name + "'");
	 * userData.refreshData(); var ok = userData.count(); if (ok != "0") { var
	 * depwd = justep.Base64.decode(userData.val("U_PWD")); if (pwd === depwd) {
	 * sessionStorage.u_auth = userData.val("U_AUTH"); this.owner.send("ok"); }
	 * else { justep.Util.hint("用户或者密码错误！", { "delay" : 500, "position" :
	 * "middle", "type" : "danger" });
	 * $(".x-hint").find("button[class='close']").hide(); } } else {
	 * justep.Util.hint("用户或者密码错误！", { "delay" : 500, "position" : "middle",
	 * "type" : "danger" }); $(".x-hint").find("button[class='close']").hide(); } } } };
	 */

	Model.prototype.modelLoad = function(event) {
		var usernameid = this.getIDByXID("username");
		$("#" + usernameid).focus();
	};

	Model.prototype.regBtnClick = function(event) {
		var pwdid = this.getIDByXID("pwd");
		$("#" + pwdid).blur();
		this.comp("windowDialog1").open();
	};

	Model.prototype.windowDialog1Received = function(event) {
		this.comp("username").val("");
		this.comp("pwd").val("");
		var usernameid = this.getIDByXID("username");
		$("#" + usernameid).focus();
	};

	Model.prototype.usernameKeydown = function(event) {
		var id = this.getIDByXID("loginBtn");
		// 判断是否敲击了Enter键
		$(document).keydown(function(event) {
			if (event.keyCode == 13) {
				$("#" + id).trigger("click");
			}
		});
	};

	Model.prototype.pwdKeydown = function(event) {
		var id = this.getIDByXID("loginBtn");
		// 判断是否敲击了Enter键
		$(document).keydown(function(event) {
			if (event.keyCode == 13) {
				$("#" + id).trigger("click");
			}
		});
	};

	Model.prototype.loginBtnClick = function(event) {
		var owner = this.owner;
		var pwdid = this.getIDByXID("pwd");
		$("#" + pwdid).blur();
		var name = this.comp("username").val();
		var pwd = this.comp("pwd").val();
		if (name === "") {
			justep.Util.hint("请输入用户！", {
				"delay" : 500,
				"position" : "middle",
				"type" : "warning"
			});
			$(".x-hint").find("button[class='close']").hide();
		} else {
			if (pwd === "") {
				justep.Util.hint("请输入密码！", {
					"delay" : 500,
					"position" : "middle",
					"type" : "warning"
				});
				$(".x-hint").find("button[class='close']").hide();
			} else {
				$.support.cors = true;
				$.ajax({
					url : "http://172.26.3.30:8081/OilResources/servlet/login", // 请求的url地址
					dataType : "json", // 返回格式为json
					async : true, // 请求是否异步，默认为异步，这也是ajax重要特性
					data : {
						"u_id" : name,
						"u_pwd" : pwd
					}, // 参数值
					type : "get", // 请求方式
					beforeSend : function() {
						// 请求前的处理
					},
					success : function(req) {
						// 请求成功时处理
						var code = req.code;
						var desc = req.desc;
						if (code === "-1") {
							justep.Util.hint(desc, {
								"delay" : 1000,
								"position" : "middle",
								"type" : "danger"
							});
							$(".x-hint").find("button[class='close']").hide();
						} else {
							sessionStorage.u_auth = req.code;
							owner.send("ok");
						}
					},
					complete : function() {
						// 请求完成的处理
					},
					error : function() {
						// 请求出错处理
						justep.Util.hint("登录异常，请稍后尝试！", {
							"delay" : 1000,
							"position" : "middle",
							"type" : "danger"
						});
						$(".x-hint").find("button[class='close']").hide();
					}
				});
			}
		}
	};

	return Model;

});