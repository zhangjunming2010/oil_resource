define(function(require){
	var $ = require("jquery");
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

	};
	
	Model.prototype.logoutBtnClick = function(event){
		this.comp("messageDialog1").show();
	};

	Model.prototype.modelModelConstruct = function(event){
		var url = require.toUrl("../main/main.w");
		this.comp("windowContainer1").load(url);
		var u_auth = sessionStorage.u_auth;
		if(u_auth >= 1){
			var li1id = this.getIDByXID("li1");
			$("#" + li1id).removeClass("hidden-element");
		}
		if(u_auth == 2){
			var li2id = this.getIDByXID("li2");
			$("#" + li2id).removeClass("hidden-element");
		}
	};

	Model.prototype.messageDialog1Yes = function(event){
		this.comp("windowDialog1").open();
		sessionStorage.u_auth = "-1";
	};

	return Model;
});