define(function(require){
//	var $ = require("jquery");
//	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};
	

	Model.prototype.addBtnClick = function(event){

	};

	Model.prototype.refreshBtnClick = function(event){
		this.comp("input1").val("");
		this.comp("select2").val("");
		var data = this.comp("data2");
		$.support.cors = true;
		$.ajax({
			url : "http://localhost:8081/OilResources/servlet/searchuser", // 请求的url地址
			dataType : "json", // 返回格式为json
			async : true, // 请求是否异步，默认为异步，这也是ajax重要特性
			data : {
				"u_name" : "",
				"u_auth" : ""
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
		var u_name = this.comp("input1").val();
		var u_auth = this.comp("select2").val();
		var data = this.comp("data2");
		$.support.cors = true;
		$.ajax({
			url : "http://localhost:8081/OilResources/servlet/searchuser", // 请求的url地址
			dataType : "json", // 返回格式为json
			async : true, // 请求是否异步，默认为异步，这也是ajax重要特性
			data : {
				"u_name" : u_name,
				"u_auth" : u_auth
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

	var row;
	Model.prototype.delBtnClick = function(event){
		row = event.bindingContext.$object;
		this.comp("messageDialog1").show();
	};

	Model.prototype.messageDialog1Yes = function(event){
		this.comp("baasData1").deleteData(row);
		this.comp("baasData1").saveData();
	};


	Model.prototype.select2Change = function(event){
		var u_auth = event.value;
		var u_name = this.comp("input1").val();
		var data = this.comp("data2");
		$.support.cors = true;
		$.ajax({
			url : "http://localhost:8081/OilResources/servlet/searchuser", // 请求的url地址
			dataType : "json", // 返回格式为json
			async : true, // 请求是否异步，默认为异步，这也是ajax重要特性
			data : {
				"u_name" : u_name,
				"u_auth" : u_auth
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


	Model.prototype.tr6Dblclick = function(event){
		var row = event.bindingContext.$object;
		this.comp("windowDialog1").open({
			params:{
				rowdata:row.toJson()
			}
		});
	};


	Model.prototype.windowDialog1Received = function(event){
		var u_name = this.comp("input1").val();
		var u_auth = this.comp("select2").val();
		var data = this.comp("baasData1");
		if(u_auth !== ""){
			data.setFilter("filter2", "u_auth = "+u_auth);
		}else{
			data.setFilter("filter2", "1 = 1");
		}
		data.setFilter("filter1", "u_name like '%"+u_name+"%'");
		data.refreshData();
	};

	Model.prototype.modelModelConstruct = function(event){
		var data = this.comp("data2");
		$.support.cors = true;
		$.ajax({
			url : "http://localhost:8081/OilResources/servlet/searchuser", // 请求的url地址
			dataType : "json", // 返回格式为json
			async : true, // 请求是否异步，默认为异步，这也是ajax重要特性
			data : {
				"u_name" : "",
				"u_auth" : ""
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

	return Model;
});