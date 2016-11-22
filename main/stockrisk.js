define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	var o_nbr = "";
	var sum = 0;

	Model.prototype.windowReceiver1Receive = function(event) {
		o_nbr = event.params.o_nbr;
		var data = this.comp("data1");
		data.clear();
		data.refreshData();
	};

	Model.prototype.data1CustomRefresh = function(event) {
		var data = this.comp("data1");
		data.clear();
		$.support.cors = true;
		$.ajax({
			url : "http://localhost:8081/OilResources/servlet/searchoil", // 请求的url地址
			dataType : "json", // 返回格式为json
			async : false, // 请求是否异步，默认为异步，这也是ajax重要特性
			data : {
				"o_nbr" : o_nbr,
				"s_batch" : "",
				"o_items" : ""
			}, // 参数值
			type : "get", // 请求方式
			beforeSend : function() {
				// 请求前的处理
			},
			success : function(req) {
				// 请求成功时处理
				data.loadData(req);
			},
			complete : function() {
				// 请求完成的处理
			},
			error : function() {
				// 请求出错处理
			}
		});
		sum = 0;
	};

	Model.prototype.updateBtnClick = function(event) {
		var risksum = document.getElementById("risksum").innerHTML;
		var data = this.comp("data1");
		var datas = [];
		var o_nbr = data.getValue("o_nbr");
		data.each(function(param) {
			var row = param.row;
			var obj = new Object();
			var s_id = row.val("s_id");
			var s_stock = row.val("s_stock");
			obj.s_id = s_id;
			obj.s_stock = s_stock;
			datas.push(obj);
		});
		$.support.cors = true;
		$.ajax({
			url : "http://localhost:8081/OilResources/servlet/updatestock", // 请求的url地址
			dataType : "json", // 返回格式为json
			async : false, // 请求是否异步，默认为异步，这也是ajax重要特性
			data : {
				"datas" : JSON.stringify(datas),
				"risksum" : risksum,
				"o_nbr" : o_nbr
			}, // 参数值
			type : "get", // 请求方式
			beforeSend : function() {
				// 请求前的处理
			},
			success : function(req) {
				// 请求成功时处理
				data.refreshData();
			},
			complete : function() {
				// 请求完成的处理
				justep.Util.hint("更新完成！", {
					"delay" : 1000,
					"position" : "middle",
					"type" : "info"
				});
				$(".x-hint").find("button[class='close']").hide();
			},
			error : function() {
				// 请求出错处理
			}
		});
	};

	return Model;
});