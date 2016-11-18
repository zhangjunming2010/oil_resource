define(function(require) {
	// var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.submitBtnClick = function(event) {
		var pwdid = this.getIDByXID("password2");
		$("#" + pwdid).blur();
		var u_id = this.comp("input1").val();
		var u_name = this.comp("input2").val();
		var u_pwd = this.comp("password1").val();
		var u_pwd2 = this.comp("password2").val();
		var messageDialog = this.comp("messageDialog1");
		if (u_id !== "" && u_name !== "" && u_pwd !== "" && u_pwd2 !== "") {
			if (u_pwd == u_pwd2) {
				$.support.cors = true;
				$.ajax({
					url : "http://172.26.3.30:8081/OilResources/servlet/register", // 请求的url地址
					dataType : "json", // 返回格式为json
					async : true, // 请求是否异步，默认为异步，这也是ajax重要特性
					data : {
						"u_id" : u_id,
						"u_name" : u_name,
						"u_pwd" : u_pwd
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
							messageDialog.show();
						}
					},
					complete : function() {
						// 请求完成的处理
					},
					error : function() {
						// 请求出错处理
						justep.Util.hint("注册异常，请稍后尝试！", {
							"delay" : 1000,
							"position" : "middle",
							"type" : "danger"
						});
						$(".x-hint").find("button[class='close']").hide();
					}
				});
			} else {
				justep.Util.hint("两次输入密码不一致！", {
					"delay" : 1000,
					"position" : "middle",
					"type" : "danger"
				});
				$(".x-hint").find("button[class='close']").hide();
			}
		} else {
			justep.Util.hint("请填入全部信息！", {
				"delay" : 1000,
				"position" : "middle",
				"type" : "danger"
			});
			$(".x-hint").find("button[class='close']").hide();
		}
	};

	Model.prototype.messageDialog1OK = function(event) {
		this.comp("input1").val("");
		this.comp("input2").val("");
		this.comp("password1").val("");
		this.comp("password2").val("");
		this.owner.send("ok");
		this.close();
	};

	Model.prototype.modelParamsReceive = function(event) {
		var input1id = this.getIDByXID("input1");
		$("#" + input1id).focus();
	};


	Model.prototype.input1Keydown = function(event){
		var id = this.getIDByXID("submitBtn");
		if (event.keyCode == 13) {
			$("#" + id).trigger("click");
		}
	};


	Model.prototype.input2Keydown = function(event){
		var id = this.getIDByXID("submitBtn");
		if (event.keyCode == 13) {
			$("#" + id).trigger("click");
		}
	};


	Model.prototype.password1Keydown = function(event){
		var id = this.getIDByXID("submitBtn");
		if (event.keyCode == 13) {
			$("#" + id).trigger("click");
		}
	};


	Model.prototype.password2Keydown = function(event){
		var id = this.getIDByXID("submitBtn");
		if (event.keyCode == 13) {
			$("#" + id).trigger("click");
		}
	};


	return Model;
});