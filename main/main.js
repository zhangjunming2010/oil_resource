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
		var s_batch = this.comp("input5").val();
		var o_items = this.comp("input6").val();
		this.comp("windowDialog1").open({
			params:{
				o_nbr:o_nbr,
				s_batch:s_batch,
				o_items:o_items
			}
		});
	};

	Model.prototype.input4Keydown = function(event){
		var input4id = this.getIDByXID("input4");
		var id = this.getIDByXID("searchBtn");
		// 判断是否敲击了Enter键
		if (event.keyCode == 13) {
			$("#" + input4id).blur();
			$("#" + id).trigger("click");
			$("#" + input4id).focus();
		}
	};

	Model.prototype.input5Keydown = function(event){
		var input5id = this.getIDByXID("input5");
		var id = this.getIDByXID("searchBtn");
		// 判断是否敲击了Enter键
		if (event.keyCode == 13) {
			$("#" + input5id).blur();
			$("#" + id).trigger("click");
			$("#" + input5id).focus();
		}
	};

	Model.prototype.input6Keydown = function(event){
		var input6id = this.getIDByXID("input6");
		var id = this.getIDByXID("searchBtn");
		// 判断是否敲击了Enter键
		if (event.keyCode == 13) {
			$("#" + input6id).blur();
			$("#" + id).trigger("click");
			$("#" + input6id).focus();
		}
	};

	return Model;
});