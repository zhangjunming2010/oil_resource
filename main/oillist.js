define(function(require) {
	var $ = require("jquery");
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
		data.refreshData();
	};

	Model.prototype.modelParamsReceive = function(event) {
		this.comp("input4").val(event.params.o_nbr);
		this.comp("input5").val(event.params.s_batch);
		this.comp("input6").val(event.params.o_items);
		var data = this.comp("data1");
		data.clear();
		data.refreshData();
	};

	Model.prototype.searchBtnClick = function(event) {
		var data = this.comp("data1");
		data.clear();
		data.refreshData();
	};

	Model.prototype.detailBtnClick = function(event) {
		var row = event.bindingContext.$object;
		this.comp("windowDialog1").open({
			params : {
				type : "detail",
				rowdata : row.toJson()
			}
		});
	};

	Model.prototype.data1CustomRefresh = function(event) {
		var limit = event.limit;
		var offset = event.offset;
		var o_nbr = this.comp("input4").val();
		var s_batch = this.comp("input5").val();
		var o_items = this.comp("input6").val();
		var data = this.comp("data1");
		data.clear();
		$.support.cors = true;
		$.ajax({
			url : "http://localhost:8081/oil_resource_back/servlet/searchoil", // 请求的url地址
			dataType : "json", // 返回格式为json
			async : false, // 请求是否异步，默认为异步，这也是ajax重要特性
			data : {
				"offset" : offset,
				"limit" : limit,
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
			},
			complete : function() {
				// 请求完成的处理
			},
			error : function() {
				// 请求出错处理
			}
		});
	};
	
	Model.prototype.input4Keydown = function(event){
		var input4id = this.getIDByXID("input4");
		var id = this.getIDByXID("searchBtn");
		// 判断是否敲击了Enter键
		if (event.keyCode == 13) {
			$("#" + input4id).blur();
			$("#" + id).trigger("click");
			$("#" + input4id).focus();
		}
	};

	Model.prototype.input5Keydown = function(event){
		var input5id = this.getIDByXID("input5");
		var id = this.getIDByXID("searchBtn");
		// 判断是否敲击了Enter键
		if (event.keyCode == 13) {
			$("#" + input5id).blur();
			$("#" + id).trigger("click");
			$("#" + input5id).focus();
		}
	};

	Model.prototype.input6Keydown = function(event){
		var input6id = this.getIDByXID("input6");
		var id = this.getIDByXID("searchBtn");
		// 判断是否敲击了Enter键
		if (event.keyCode == 13) {
			$("#" + input6id).blur();
			$("#" + id).trigger("click");
			$("#" + input6id).focus();
		}
	};

	return Model;
});