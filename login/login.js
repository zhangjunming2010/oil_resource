define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var utils = require("$UI/system/components/justep/common/utils");

	var Model = function() {
		this.callParent();
	};

	// 监控用户输入时候的回车事件
	Model.prototype.usernameFocus = function(event) {
		var id = this.getIDByXID("loginBtn");
		// 判断是否敲击了Enter键
		$(document).keyup(function(event) {
			if (event.keyCode == 13) {
				$("#" + id).trigger("click");
			}
		});
	};

	// 监控密码输入时候的回车事件
	Model.prototype.pwdFocus = function(event) {
		var id = this.getIDByXID("loginBtn");
		// 判断是否敲击了Enter键
		$(document).keyup(function(event) {
			if (event.keyCode == 13) {
				$("#" + id).trigger("click");
			}
		});
	};

	Model.prototype.loginBtnClick = function(event) {
		var name = this.comp("username").val();
		var pwd = this.comp("pwd").val();
		var userData = this.comp("userData");
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
				var loginBtn = this.comp("loginBtn");
				loginBtn.set({
					"label" : "登录中...",
					"icon" : "icon-loading-a"
				});
				userData.setFilter("filter1", "u_name = '" + name + "' and u_pwd = '" + pwd + "'");
				userData.refreshData();
				var ok = userData.count();
				if (ok != "0") {
					sessionStorage.u_auth = userData.val("u_auth");
					this.owner.send("ok");
//					loginBtn.set({
//						"label" : "登录",
//						"icon" : ""
//					});
				} else {
					justep.Util.hint("用户或者密码错误！", {
						"delay" : 500,
						"position" : "middle",
						"type" : "danger"
					});
					$(".x-hint").find("button[class='close']").hide();
				}
			}
		}
	};

	Model.prototype.modelModelConstructDone = function(event){
	};

	return Model;

});