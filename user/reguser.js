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
		if (u_id !== "" && u_name !== "" && u_pwd !== "" && u_pwd2 !== "") {
			if (u_pwd == u_pwd2) {
				var data = this.comp("userData");
				data.clear();
				data.setFilter("filter1", "u_id = '" + u_id + "'");
				data.refreshData();
				console.log(data.getCount());
				if (data.getCount() === 0) {
					data.newData({
						"defaultValues" : [ {
							"U_ID" : u_id,
							"U_NAME" : u_name,
							"U_PWD" : justep.Base64.encode(u_pwd),
							"U_AUTH" : 0
						} ]
					});
					data.saveData();
					this.comp("messageDialog1").show();
				} else {
					justep.Util.hint("该用户名不可用！", {
						"delay" : 1000,
						"position" : "middle",
						"type" : "danger"
					});
					$(".x-hint").find("button[class='close']").hide();
				}
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


	return Model;
});