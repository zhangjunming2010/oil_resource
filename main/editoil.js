define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.submitBtnClick = function(event) {
		var me = this;
		var o_nbr = me.comp("o_nbr").val();
		var o_name = me.comp("o_name").val();
		var o_life = me.comp("o_life").val();
		var o_cycle = me.comp("o_cycle").val();
		var o_use = me.comp("o_use").val();
		var s_batch = me.comp("s_batch").val();
		var s_stock = me.comp("s_stock").val();
		var o_items = me.comp("o_items").val();
		var o_id = me.comp("o_id").val();
		var s_id = me.comp("s_id").val();
		var owner = me.owner;
		if ((o_nbr !== undefined && o_nbr !== "") && (o_name !== undefined && o_name !== "") && (o_cycle !== undefined && o_cycle !== "") && (o_use !== undefined && o_use !== "")
				&& (s_batch !== undefined && s_batch !== "") && (s_stock !== undefined && s_stock !== "") && (o_items !== undefined && o_items !== "") && (o_items !== undefined && o_items !== "")
				&& (o_life !== undefined && o_life !== "")) {
			$.support.cors = true;
			$.ajax({
				url : "http://localhost:8081/oil_resource_back/servlet/updateoil", // 请求的url地址
				dataType : "json", // 返回格式为json
				async : false, // 请求是否异步，默认为异步，这也是ajax重要特性
				data : {
					"o_nbr" : o_nbr,
					"o_name" : o_name,
					"o_life" : o_life,
					"o_cycle" : o_cycle,
					"o_use" : o_use,
					"o_id" : o_id,
					"s_batch" : s_batch,
					"s_stock" : s_stock,
					"o_items" : o_items,
					"s_id" : s_id
				}, // 参数值
				type : "get", // 请求方式
				beforeSend : function() {
					// 请求前的处理
				},
				success : function(req) {
					var code = req.code;
					if (code === "-1") {
						justep.Util.hint("信息保存异常，请稍后再试！", {
							"delay" : 1000,
							"position" : "middle",
							"type" : "warning"
						});
						$(".x-hint").find("button[class='close']").hide();
					} else {
						owner.send("ok");
						me.close();
					}
				},
				complete : function() {
					// 请求完成的处理
				},
				error : function() {
					// 请求出错处理
				}
			});
		} else {
			justep.Util.hint("请填入完整的信息后在提交！", {
				"delay" : 1000,
				"position" : "middle",
				"type" : "warning"
			});
			$(".x-hint").find("button[class='close']").hide();
		}

	};

	Model.prototype.windowReceiver1Receive = function(event){
		var data = this.comp("data1");
		data.loadData([event.params.rowdata]);
		data.first();
	};

	return Model;
});