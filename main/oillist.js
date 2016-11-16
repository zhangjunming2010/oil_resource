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
		var data = this.comp("baasData1");
		data.setFilter("filter1", "o_nbr like '%%'");
//		data.setFilter("filter2", "o_batch like '%%'");
		data.setFilter("filter3", "o_items like '%%'");
		data.refreshData();
	};

	Model.prototype.modelParamsReceive = function(event) {
		this.comp("input4").val(event.params.o_nbr);
		this.comp("input5").val(event.params.o_batch);
		this.comp("input6").val(event.params.o_items);
		var o_nbr = this.comp("input4").val();
		var o_batch = this.comp("input5").val();
		var o_items = this.comp("input6").val();
		var data = this.comp("baasData1");
		data.setFilter("filter1", "o_nbr like '%" + o_nbr + "%'");
//		data.setFilter("filter2", "o_batch like '%" + o_batch + "%'");
		data.setFilter("filter3", "o_items like '%" + o_items + "%'");
		data.refreshData();
	};

	Model.prototype.searchBtnClick = function(event) {
		var o_nbr = this.comp("input4").val();
		var o_batch = this.comp("input5").val();
		var o_items = this.comp("input6").val();
		var data = this.comp("baasData1");
		data.setFilter("filter1", "o_nbr like '%" + o_nbr + "%'");
//		data.setFilter("filter2", "o_batch like '%" + o_batch + "%'");
		data.setFilter("filter3", "o_items like '%" + o_items + "%'");
		data.refreshData();
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