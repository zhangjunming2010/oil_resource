define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.searchBtnClick = function(event) {
		var o_nbrid = this.getIDByXID("o_nbr");
		var o_nameid = this.getIDByXID("o_name");
		var s_stockid = this.getIDByXID("s_stock");
		var itemsEle = this.getElementByXid("o_items");
		var o_name = this.comp("o_name");
		var o_cycle = this.comp("o_cycle");
		var o_use = this.comp("o_use");
		var o_life = this.comp("o_life");
		var o_items = this.comp("o_items");
		$("#" + o_nbrid).blur();
		var o_nbr = this.comp("o_nbr").val();
		if (o_nbr !== undefined) {
			$.support.cors = true;
			$.ajax({
				url : "http://localhost:8081/oil_resource_back/servlet/checkoil", // 请求的url地址
				dataType : "json", // 返回格式为json
				async : true, // 请求是否异步，默认为异步，这也是ajax重要特性
				data : {
					"o_nbr" : o_nbr,
				}, // 参数值
				type : "get", // 请求方式
				beforeSend : function() {
					// 请求前的处理
				},
				success : function(req) {
					var code = req.code;
					if (code === "-1") {
						justep.Util.hint("没有相关信息！", {
							"delay" : 1000,
							"position" : "middle",
							"type" : "warning"
						});
						$(".x-hint").find("button[class='close']").hide();
						o_name.val(req.o_name);
						o_cycle.val(req.o_cycle);
						o_cycle.set({
							readonly : false
						});
						o_use.val(req.o_use);
						o_use.set({
							readonly : false
						});
						o_life.val(req.o_life);
						o_life.set({
							readonly : false
						});
						o_items.val(req.o_items);
						itemsEle.readOnly = false;
						$("#" + o_nameid).focus();
					} else {
						o_name.val(req.o_name);
						o_cycle.val(req.o_cycle);
						o_cycle.set({
							readonly : true
						});
						o_use.val(req.o_use);
						o_use.set({
							readonly : true
						});
						o_life.val(req.o_life);
						o_life.set({
							readonly : true
						});
						o_items.val(req.o_items);
						itemsEle.readOnly = true;
						$("#" + s_stockid).focus();
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
			justep.Util.hint("油料编码不能为空！", {
				"delay" : 1000,
				"position" : "middle",
				"type" : "warning"
			});
			$(".x-hint").find("button[class='close']").hide();
		}
	};

	Model.prototype.submitBtnClick = function(event) {
		var me = this;
		var s_batchid = me.getIDByXID("s_batch");
		$("#" + s_batchid).blur();
		var o_nbr = me.comp("o_nbr").val();
		var o_name = me.comp("o_name").val();
		var o_life = me.comp("o_life").val();
		var o_cycle = me.comp("o_cycle").val();
		var o_use = me.comp("o_use").val();
		var s_batch = me.comp("s_batch").val();
		var s_stock = me.comp("s_stock").val();
		var o_items = me.comp("o_items").val();
		var owner = me.owner;
		if ((o_nbr !== undefined && o_nbr !== "") && (o_name !== undefined && o_name !== "") && (o_cycle !== undefined && o_cycle !== "") && (o_use !== undefined && o_use !== "")
				&& (s_batch !== undefined && s_batch !== "") && (s_stock !== undefined && s_stock !== "") && (o_items !== undefined && o_items !== "") && (o_items !== undefined && o_items !== "")
				&& (o_life !== undefined && o_life !== "")) {
			$.support.cors = true;
			$.ajax({
				url : "http://localhost:8081/oil_resource_back/servlet/addoil", // 请求的url地址
				dataType : "json", // 返回格式为json
				async : true, // 请求是否异步，默认为异步，这也是ajax重要特性
				data : {
					"o_nbr" : o_nbr,
					"o_name" : o_name,
					"o_life" : o_life,
					"o_cycle" : o_cycle,
					"o_use" : o_use,
					"o_id" : justep.UUID.createUUID(),
					"s_batch" : s_batch,
					"s_stock" : s_stock,
					"o_items" : o_items,
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

	Model.prototype.modelModelConstructDone = function(event) {
		var id = this.getIDByXID("o_nbr");
		$("#" + id).focus();
	};

	Model.prototype.o_nbrKeydown = function(event) {
		if (event.keyCode == 113) {
			var id = this.getIDByXID("searchBtn");
			$("#" + id).trigger("click");
		}
	};

	Model.prototype.Keydown = function(event) {
		event = window.event || event;
		var id = this.getIDByXID("submitBtn");
		$("#" + id).focus();
		if (event.ctrlKey && event.keyCode == 83) {
			/* 延迟，兼容FF浏览器 */
			setTimeout(function() {
				$("#" + id).trigger("click");
			}, 1);
			return false;
		}
	};
//
//	Model.prototype.s_stockKeydown = function(event){
//		event = window.event || event;
//		var id = this.getIDByXID("submitBtn");
//		if (event.ctrlKey && event.keyCode == 83) {
//			/* 延迟，兼容FF浏览器 */
//			setTimeout(function() {
//				$("#" + id).trigger("click");
//			}, 1);
//			return false;
//		}
//	};

	return Model;
});