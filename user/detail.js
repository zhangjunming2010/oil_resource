define(function(require){
//	var $ = require("jquery");
//	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.windowReceiver1Receive = function(event){
		var data = this.comp("data2");
		data.loadData([event.params.rowdata]);
		data.first();
	};

	Model.prototype.submitBtnClick = function(event){
		var data = this.comp("data2");
		var u_id = data.getValue("u_id");
		var u_auth = data.getValue("u_auth");
		var messageDialog = this.comp("messageDialog1");
		$.support.cors = true;
		$.ajax({
			url : "http://localhost:8081/OilResources/servlet/updateuser", // 请求的url地址
			dataType : "json", // 返回格式为json
			async : false, // 请求是否异步，默认为异步，这也是ajax重要特性
			data : {
				"u_id" : u_id,
				"u_auth" : u_auth
			}, // 参数值
			type : "get", // 请求方式
			beforeSend : function() {
				// 请求前的处理
			},
			success : function(req) {
				// 请求成功时处理
				messageDialog.show({
					"title" : "提示",
					"message" : req.desc
				});
			},
			complete : function() {
				// 请求完成的处理
			},
			error : function() {
				// 请求出错处理
			}
		});
	};

	Model.prototype.messageDialog1OK = function(event){
		this.comp("windowReceiver1").windowEnsure("ok");
	};

	return Model;
});