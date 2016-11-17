define(function(require){
	var $ = require("jquery");
//	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.addBtnClick = function(event){
		var url = require.toUrl("./addoil.w");
		this.comp("windowDialog1").open({
			src:url
		});
	};

	Model.prototype.refreshBtnClick = function(event) {
		this.comp("input4").val("");
		this.comp("input5").val("");
		this.comp("input6").val("");
		var data = this.comp("data1");
		data.clear();
		$.support.cors = true;
		$.ajax({
			url : "http://localhost:8081/OilResources/servlet/searchoil", // 请求的url地址
			dataType : "json", // 返回格式为json
			async : true, // 请求是否异步，默认为异步，这也是ajax重要特性
			data : {
				"operation" : "search",
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

	Model.prototype.searchBtnClick = function(event){
		var o_nbr = this.comp("input4").val();
		var s_batch = this.comp("input5").val();
		var o_items = this.comp("input6").val();
		var data = this.comp("data1");
		data.clear();
		$.support.cors = true;
		$.ajax({
			url : "http://localhost:8081/OilResources/servlet/searchoil", // 请求的url地址
			dataType : "json", // 返回格式为json
			async : true, // 请求是否异步，默认为异步，这也是ajax重要特性
			data : {
				"operation" : "search",
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


	Model.prototype.modelModelConstruct = function(event){
		var u_auth = sessionStorage.u_auth;
		if(u_auth > 0 ){
			var addBtnid = this.getIDByXID("addBtn");
			$("#"+addBtnid).removeClass("hidden-element");
		}
		var data = this.comp("data1");
		data.clear();
		$.support.cors = true;
		$.ajax({
			url : "http://localhost:8081/OilResources/servlet/searchoil", // 请求的url地址
			dataType : "json", // 返回格式为json
			async : true, // 请求是否异步，默认为异步，这也是ajax重要特性
			data : {
				"operation" : "search",
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

//	Model.prototype.tr6Dblclick = function(event){
//		var row = event.bindingContext.$object;
//		var url = require.toUrl("./editoil.w");
//		var params = {
//			rowdata:row.toJson()
//		};
//		this.comp("windowDialog1").open({
//			src:url,
//			params:params
//		});
//	};

	Model.prototype.windowDialog1Received = function(event){
		this.comp("baasData1").saveData();
		this.comp("baasData1").refreshData();
	};

	var row;
	Model.prototype.delBtnClick = function(event){
		row = event.bindingContext.$object;
		this.comp("messageDialog1").show();
	};

	Model.prototype.messageDialog1Yes = function(event){
		this.comp("baasData1").deleteData(row);
		this.comp("baasData1").saveData();
	};

	return Model;
});