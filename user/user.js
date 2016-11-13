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
		var data = this.comp("baasData1");
		data.setFilter("filter1", "1 = 1");
		data.setFilter("filter2", "1 = 1");
		data.refreshData();
	};

	Model.prototype.searchBtnClick = function(event){
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
		var value = event.value;
		var data = this.comp("baasData1");
		if(value === ""){
			data.setFilter("filter1", "1 = 1");
		}else{
			data.setFilter("filter1", "u_auth = "+value);
		}
		data.refreshData();
	};


	return Model;
});