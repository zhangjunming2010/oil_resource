define(function(require){
	var $ = require("jquery");
//	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.addBtnClick = function(event){
		this.comp("windowDialog1").open();
	};

	Model.prototype.windowDialog1Received = function(event){
		this.comp("baasData1").saveData();
		this.comp("baasData1").refreshData();
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

	var row = "";
	Model.prototype.delBtnClick = function(event){
		row = event.bindingContext.$object;
		this.comp("messageDialog1").show();
	};

	Model.prototype.messageDialog1Yes = function(event){
		this.comp("baasData1").deleteData(row);
		this.comp("baasData1").saveData();
		this.comp("baasData1").refreshData();
	};

	Model.prototype.editBtnClick = function(event){
		var row = event.bindingContext.$object;
		this.comp("windowDialog2").open({
			params:{
				type:"edit",
				rowdata:row.toJson()
			}
		});
	};

	Model.prototype.windowDialog2Received = function(event){
		this.comp("baasData1").saveData();
		this.comp("baasData1").refreshData();
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


	Model.prototype.windowReceiver1Receive = function(event){
		var u_auth = sessionStorage.u_auth;
		var type = event.params.type;
		if(type == "search"){
			this.comp("input4").val(event.params.o_nbr);
			this.comp("input5").val(event.params.o_batch);
			this.comp("input6").val(event.params.o_items);
			var o_nbr = this.comp("input4").val();
			var o_batch = this.comp("input5").val();
			var o_items = this.comp("input6").val();
			var data = this.comp("baasData1");
			data.setFilter("filter1", "o_nbr like '%"+o_nbr+"%'");
			data.setFilter("filter2", "o_batch like '%"+o_batch+"%'");
			data.setFilter("filter3", "o_items like '%"+o_items+"%'");
			data.refreshData();
		}
	};


	Model.prototype.modelModelConstruct = function(event){
		var u_auth = sessionStorage.u_auth;
		var addBtnid = this.getIDByXID("addBtn");
		var delBtnid = this.getIDByXID("delBtn");
		if(u_auth == 2 ){
			$("#"+addBtnid).removeClass("hidden-element");
			$("#"+delBtnid).removeClass("hidden-element");
		}else if(u_auth == 1 ){
			$("#"+addBtnid).removeClass("hidden-element");
		}
	};

	Model.prototype.detailBtnClick = function(event){
		var row = event.bindingContext.$object;
		this.comp("windowDialog2").open({
			params:{
				type:"detail",
				rowdata:row.toJson()
			}
		});
	};

	return Model;
});