define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};
	
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
		if (event.keyCode == 13) {
			$("#" + id).trigger("click");
		}
	};

	Model.prototype.pwdKeydown = function(event) {
		var id = this.getIDByXID("loginBtn");
		if (event.keyCode == 13) {
			$("#" + id).trigger("click");
		}
	};

	Model.prototype.loginBtnClick = function(event) {
		var owner = this.owner;
		var usernameid = this.getIDByXID("username");
		var pwdid = this.getIDByXID("pwd");
		$("#" + usernameid).blur();
		$("#" + pwdid).blur();
		var name = this.comp("username").val();
		var pwd = this.comp("pwd").val();
		var loginBtn = this.comp("loginBtn");
		if (name === "") {
			justep.Util.hint("请输入用户！", {
				"delay" : 500,
				"position" : "middle",
				"type" : "warning"
			});
			$(".x-hint").find("button[class='close']").hide();
			$("#" + usernameid).focus();
		} else {
			if (pwd === "") {
				justep.Util.hint("请输入密码！", {
					"delay" : 500,
					"position" : "middle",
					"type" : "warning"
				});
				$(".x-hint").find("button[class='close']").hide();
				$("#" + pwdid).focus();
			} else {
				$.support.cors = true;
				$.ajax({
					url : "http://localhost:8081/oil_resource_back/servlet/login", // 请求的url地址
					dataType : "json", // 返回格式为json
					async : true, // 请求是否异步，默认为异步，这也是ajax重要特性
					data : {
						"u_id" : name,
						"u_pwd" : pwd
					}, // 参数值
					type : "get", //请求方式
					beforeSend : function() {
						// 请求前的处理
						loginBtn.set({
							"label" : " 登录中...",
							"icon" : "icon-loading-a"
						});
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
							owner.send(req.code);
						}
					},
					complete : function() {
						// 请求完成的处理
						loginBtn.set({
							"label" : "登录",
							"icon" : ""
						});
					},
					error : function() {
					}
				});
			}
		}
	};

	return Model;

});