define(function(require) {
	// var $ = require("jquery");
	// var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.searchBtnClick = function(event) {
		var o_nbr = this.comp("input4").val();
		var s_batch = this.comp("input5").val();
		var o_items = this.comp("input6").val();
		this.comp("windowDialog1").open({
			params : {
				o_nbr : o_nbr,
				s_batch : s_batch,
				o_items : o_items
			}
		});
	};

	Model.prototype.input4Keydown = function(event) {
		var input4id = this.getIDByXID("input4");
		var id = this.getIDByXID("searchBtn");
		// 判断是否敲击了Enter键
		if (event.keyCode == 13) {
			$("#" + input4id).blur();
			$("#" + id).trigger("click");
			$("#" + input4id).focus();
		}
	};

	Model.prototype.input5Keydown = function(event) {
		var input5id = this.getIDByXID("input5");
		var id = this.getIDByXID("searchBtn");
		// 判断是否敲击了Enter键
		if (event.keyCode == 13) {
			$("#" + input5id).blur();
			$("#" + id).trigger("click");
			$("#" + input5id).focus();
		}
	};

	Model.prototype.input6Keydown = function(event) {
		var input6id = this.getIDByXID("input6");
		var id = this.getIDByXID("searchBtn");
		// 判断是否敲击了Enter键
		if (event.keyCode == 13) {
			$("#" + input6id).blur();
			$("#" + id).trigger("click");
			$("#" + input6id).focus();
		}
	};

	Model.prototype.button1Click = function(event) {
		var row = event.bindingContext.$object;
		var s_id = row.val("s_id");
		var winDialog = this.comp("windowDialog2");
		var url = require.toUrl("./reviewrisk.w");
		winDialog.set({
			"showTitle" : false,
			"height" : "13%",
			"width" : "30%"
		});
		winDialog.open({
			src : url,
			params : {
				"s_id" : s_id
			}
		});
	};

	Model.prototype.button2Click = function(event) {
		var row = event.bindingContext.$object;
		var o_nbr = row.val("o_nbr");
		var o_id = row.val("o_id");
		var risksum = row.val("risksum");
		var winDialog = this.comp("windowDialog2");
		var url = require.toUrl("./stockrisk.w");
		winDialog.set({
			"title" : "编号：" + o_nbr + "库存情况",
			"showTitle" : true
		});
		winDialog.open({
			src : url,
			params : {
				"o_id" : o_id,
				"risksum" : risksum
			}
		});
	};

	Model.prototype.windowDialog2Close = function(event) {
		this.comp("reviewData").refreshData();
		this.comp("riskData").refreshData();
	};
	
	Model.prototype.modelUnLoad = function(event){
		clearInterval(timer);
	};

	Model.prototype.reviewDataCustomRefresh = function(event){
		var data = this.comp("reviewData");
		data.clear();
		$.support.cors = true;
		$.ajax({
			url : "http://localhost:8081/oil_resource_back/servlet/review", // 请求的url地址
			dataType : "json", // 返回格式为json
			async : false, // 请求是否异步，默认为异步，这也是ajax重要特性
			data : {
				
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
	};

	Model.prototype.riskDataCustomRefresh = function(event){
		var data = this.comp("riskData");
		data.clear();
		$.support.cors = true;
		$.ajax({
			url : "http://localhost:8081/oil_resource_back/servlet/risk", // 请求的url地址
			dataType : "json", // 返回格式为json
			async : false, // 请求是否异步，默认为异步，这也是ajax重要特性
			data : {
				
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
	};

	var timer = "";
	Model.prototype.modelModelConstruct = function(event){
		var reviewData = this.comp("reviewData");
		var riskData = this.comp("riskData");
		timer = setInterval(function(){
			reviewData.refreshData();
			riskData.refreshData();
		},30000);
	};

	return Model;
});