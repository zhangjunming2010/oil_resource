define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	var s_id = "";
	Model.prototype.windowReceiver1Receive = function(event) {
		s_id = event.params.s_id;
		var id = this.getIDByXID("s_life");
		$("#" + id).focus();
	};

	Model.prototype.updateBtnClick = function(event) {
		var windowReceiver1 = this.comp("windowReceiver1");
		var s_life = this.comp("s_life").val();
		if (s_life > 0) {
			$.support.cors = true;
			$.ajax({
				url : "http://localhost:8081/oil_resource_back/servlet/updatebatch", // 请求的url地址
				dataType : "json", // 返回格式为json
				async : false, // 请求是否异步，默认为异步，这也是ajax重要特性
				data : {
					"s_id" : s_id,
					"s_life" : s_life
				}, // 参数值
				type : "get", // 请求方式
				beforeSend : function() {
					// 请求前的处理
				},
				success : function(req) {
					// 请求成功时处理
					windowReceiver1.windowEnsure("ok");
				},
				complete : function() {
					// 请求完成的处理
					justep.Util.hint("更新完成！", {
						"delay" : 1500,
						"position" : "middle",
						"type" : "info"
					});
					$(".x-hint").find("button[class='close']").hide();
				},
				error : function() {
					// 请求出错处理
				}
			});
		} else {
			justep.Util.hint("延期月数必须大于0！", {
				"delay" : 1500,
				"position" : "middle",
				"type" : "warning"
			});
			$(".x-hint").find("button[class='close']").hide();
		}

	};

	Model.prototype.s_lifeKeydown = function(event){
		var id = this.getIDByXID("updateBtn");
		// 判断是否敲击了Enter键
		if (event.keyCode == 13) {
			$("#" + id).trigger("click");
		}
	};

	return Model;
});