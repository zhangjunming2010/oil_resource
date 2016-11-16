define(function(require){
//	var $ = require("jquery");
//	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.windowReceiver1Receive = function(event){
		console.log([event.params.rowdata]);
		var data = this.comp("baasData1");
		data.loadData([event.params.rowdata]);
		data.first();
	};

	Model.prototype.submitBtnClick = function(event){
		this.comp("baasData1").saveData();
		this.comp("windowReceiver1").windowEnsure("ok");
	};

	return Model;
});