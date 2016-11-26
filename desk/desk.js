define(function(require){
//	var $ = require("jquery");
//	var justep = require("$UI/system/lib/justep");

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
		this.comp("wing1").hideLeft();
		var url = require.toUrl("../user/user.w");
		this.comp("windowContainer1").load(url);
	};
	
	Model.prototype.logoutBtnClick = function(event){
		this.comp("messageDialog1").show();
	};

	Model.prototype.modelModelConstruct = function(event){
		var url = require.toUrl("../main/main.w");
		this.comp("windowContainer1").load(url);
	};

	Model.prototype.messageDialog1Yes = function(event){
		this.comp("windowDialog1").open();
		sessionStorage.u_auth = "-1";
	};

	return Model;
});