define(function(require){
//	var $ = require("jquery");
//	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};
	
	Model.prototype.baasData1BeforeRefresh = function(event) {
		this.comp("baasData1").setFilter("filter1", "O_REVIEW <> ' '");
	};

	Model.prototype.baasData2BeforeRefresh = function(event) {
		this.comp("baasData2").setFilter("filter1", "O_RISK <> ' '");
	};
	
	Model.prototype.searchBtnClick = function(event){
		var o_nbr = this.comp("input4").val();
		var o_batch = this.comp("input5").val();
		var o_items = this.comp("input6").val();
		this.comp("windowDialog1").open({
			params:{
				o_nbr:o_nbr,
				o_batch:o_batch,
				o_items:o_items
			}
		});
	};

	return Model;
});