define(function(require) {
	// var $ = require("jquery");
	// var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.windowReceiver1Receive = function(event) {
		var type = event.params.type;
		if (type != "detail") {
			var col16id = this.getIDByXID("col16");
			$("#" + col16id).removeClass("hidden-element");
		} else {
			this.comp("titleBar1").set({
				"title" : "油料信息"
			});
		}
		var data = this.comp("baasData1");
		data.clear();
		data.loadData([ event.params.rowdata ]);
		data.first();
	};

	Model.prototype.button1Click = function(event) {
		this.owner.send(this.comp("baasData1"));
		this.close();
	};

	return Model;
});