define(function(require) {
//	var $ = require("jquery");
//	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();

	};

	Model.prototype.modelModelConstruct = function(event) {
		var u_auth = sessionStorage.u_auth;
		var url = require.toUrl("./login/login.w");
		if (u_auth !== undefined) {
			url = require.toUrl("./desk/desk.w");
		}
		this.comp("windowDialog1").open({
			src : url,
		});
	};

	Model.prototype.windowDialog1Receive = function(event){
		var url = require.toUrl("./desk/desk.w");
		this.comp("windowDialog1").open({
			src : url,
		});
	};

	return Model;
});