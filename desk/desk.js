define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};


	Model.prototype.leftmenuBtnClick = function(event){
		this.comp("wing1").showLeft();
	};
	
	Model.prototype.indexBtnClick = function(event){
		this.comp("wing1").hideLeft();
		var url = require.toUrl("../main/main.w");
		this.comp("windowContainer1").load(url);
	};

	Model.prototype.oilBtnClick = function(event){
		this.comp("wing1").hideLeft();
		var url = require.toUrl("../main/oil.w");
		var params = {
			type:"normal"
		};
		this.comp("windowContainer1").load(url,params);
	};

	Model.prototype.userBtnClick = function(event){

	};

	Model.prototype.aboutBtnClick = function(event){

	};

	Model.prototype.modelModelConstruct = function(event){
		var u_auth = sessionStorage.u_auth;
		if(u_auth > 0){
			var leftmenuBtnid = this.getIDByXID("leftmenuBtn");
			$("#" + leftmenuBtnid).removeClass("hidden-element");
		}
	};

	return Model;
});