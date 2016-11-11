define(function(require){
	var $ = require("jquery");
//	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.addBtnClick = function(event){
		var url = require.toUrl("./addoil.w");
		this.comp("windowDialog1").open({
			src:url,
		});
	};

	Model.prototype.refreshBtnClick = function(event){
		this.comp("input4").val("");
		this.comp("input5").val("");
		this.comp("input6").val("");
		var data = this.comp("baasData1");
		data.setFilter("filter1", "o_nbr like '%%'");
		data.setFilter("filter2", "o_batch like '%%'");
		data.setFilter("filter3", "o_items like '%%'");
		data.refreshData();
	};

	Model.prototype.searchBtnClick = function(event){
		var o_nbr = this.comp("input4").val();
		var o_batch = this.comp("input5").val();
		var o_items = this.comp("input6").val();
		var data = this.comp("baasData1");
		data.setFilter("filter1", "o_nbr like '%"+o_nbr+"%'");
		data.setFilter("filter2", "o_batch like '%"+o_batch+"%'");
		data.setFilter("filter3", "o_items like '%"+o_items+"%'");
		data.refreshData();
	};


	Model.prototype.modelModelConstruct = function(event){
		var u_auth = sessionStorage.u_auth;
		if(u_auth > 0 ){
			var addBtnid = this.getIDByXID("addBtn");
			$("#"+addBtnid).removeClass("hidden-element");
		}
		if(u_auth == 2 ){
			var col1id = this.getIDByXID("col1");
			$("#"+col1id).removeClass("hidden-element");
		}
	};

	Model.prototype.tr6Dblclick = function(event){
		var row = event.bindingContext.$object;
		var url = require.toUrl("./editoil.w");
		var params = {
			rowdata:row.toJson()
		};
		this.comp("windowDialog1").open({
			src:url,
			params:params
		});
	};

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