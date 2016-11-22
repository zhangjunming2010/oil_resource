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

	};

	Model.prototype.button2Click = function(event) {
		var row = event.bindingContext.$object;
		var o_nbr = row.toJson().o_nbr.value;
		var winDialog = this.comp("windowDialog2");
		var url = require.toUrl("./stockrisk.w");
		winDialog.set({
			"title" : "编号：" + o_nbr + "库存情况",
			"showTitle" : true
		});
		winDialog.open({
			src : url,
			params : {
				o_nbr : o_nbr
			}
		});
	};

	Model.prototype.windowDialog2Close = function(event) {
		this.comp("reviewData").refreshData();
		this.comp("riskData").refreshData();
	};
	
	var timer = "";
	
	Model.prototype.modelModelConstructDone = function(event){
		var reviewData = this.comp("reviewData");
		var riskData = this.comp("riskData");
		timer = setInterval(function(){
			reviewData.refreshData();
			riskData.refreshData();
		},30000);
	};

	Model.prototype.modelUnLoad = function(event){
		clearInterval(timer);
	};

	Model.prototype.reviewDataCustomRefresh = function(event){
		
	};

	Model.prototype.riskDataCustomRefresh = function(event){

	};

	return Model;
});