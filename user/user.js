define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.addBtnClick = function(event){

	};

	Model.prototype.refreshBtnClick = function(event){
		this.comp("input1").val("");
		var data = this.comp("baasData1");
		data.setFilter("filter1", "u_name like '%%'");
		data.refreshData();
	};

	Model.prototype.searchBtnClick = function(event){
		var u_name = this.comp("input1").val();
		var data = this.comp("baasData1");
		data.setFilter("filter1", "u_name like '%"+u_name+"%'");
		data.refreshData();
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