define(function(require) {
	var $ = require("jquery");
	// var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.windowReceiver1Receive = function(event) {
		var type = event.params.type;
		var data = this.comp("baasData1");
		data.clear();
		data.loadData([ event.params.rowdata ]);
		data.first();
		if (type != "detail") {
			var col17id = this.getIDByXID("col17");
			$("#" + col17id).removeClass("hidden-element");
		}
	};

	Model.prototype.submitBtnClick = function(event) {
		this.owner.send(this.comp("baasData1"));
		this.close();
	};

	Model.prototype.textarea1Focus = function(event) {
		var submitBtnid = this.getIDByXID("submitBtn");
		// 判断是否敲击了ctrl+s键
		$(document).keydown(function(e) {
			if (e.ctrlKey && e.which == 83) {
				e.preventDefault();
				$("#" + submitBtnid).trigger("click");
			}
		});
	};

	return Model;
});