define(function(require) {
//	var $ = require("jquery");
	// var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.refreshBtnClick = function(event) {
		this.comp("input4").val("");
		this.comp("input5").val("");
		this.comp("input6").val("");
		var data = this.comp("data1");
		data.clear();
		$.support.cors = true;
		$.ajax({
			url : "http://172.26.3.30:8081/OilResources/servlet/searchoil", // 请求的url地址
			dataType : "json", // 返回格式为json
			async : true, // 请求是否异步，默认为异步，这也是ajax重要特性
			data : {
				"o_nbr" : "",
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
				data.refreshData();
			},
			complete : function() {
				// 请求完成的处理
			},
			error : function() {
				// 请求出错处理
			}
		});
	};

	Model.prototype.modelParamsReceive = function(event) {
		var o_nbr = event.params.o_nbr;
		var s_batch = event.params.s_batch;
		var o_items = event.params.o_items;
		this.comp("input4").val(event.params.o_nbr);
		this.comp("input5").val(event.params.s_batch);
		this.comp("input6").val(event.params.o_items);
		var data = this.comp("data1");
		data.clear();
		$.support.cors = true;
		$.ajax({
			url : "http://172.26.3.30:8081/OilResources/servlet/searchoil", // 请求的url地址
			dataType : "json", // 返回格式为json
			async : true, // 请求是否异步，默认为异步，这也是ajax重要特性
			data : {
				"o_nbr" : o_nbr,
				"s_batch" : s_batch,
				"o_items" : o_items
			}, // 参数值
			type : "get", // 请求方式
			beforeSend : function() {
				// 请求前的处理
			},
			success : function(req) {
				// 请求成功时处理
				data.loadData(req);
				data.refreshData();
			},
			complete : function() {
				// 请求完成的处理
			},
			error : function() {
				// 请求出错处理
			}
		});
	};

	Model.prototype.searchBtnClick = function(event) {
		var o_nbr = this.comp("input4").val();
		var s_batch = this.comp("input5").val();
		var o_items = this.comp("input6").val();
		var data = this.comp("data1");
		data.clear();
		$.support.cors = true;
		$.ajax({
			url : "http://172.26.3.30:8081/OilResources/servlet/searchoil", // 请求的url地址
			dataType : "json", // 返回格式为json
			async : true, // 请求是否异步，默认为异步，这也是ajax重要特性
			data : {
				"o_nbr" : o_nbr,
				"s_batch" : s_batch,
				"o_items" : o_items
			}, // 参数值
			type : "get", // 请求方式
			beforeSend : function() {
				// 请求前的处理
			},
			success : function(req) {
				// 请求成功时处理
				data.loadData(req);
				data.refreshData();
			},
			complete : function() {
				// 请求完成的处理
			},
			error : function() {
				// 请求出错处理
			}
		});
	};

	Model.prototype.detailBtnClick = function(event){
		var row = event.bindingContext.$object;
		this.comp("windowDialog1").open({
			params:{
				type:"detail",
				rowdata:row.toJson()
			}
		});
	};

	return Model;
});