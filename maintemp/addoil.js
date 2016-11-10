define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	var uuid = justep.UUID.createUUID();
	Model.prototype.searchBtnClick = function(event) {
		var o_nbr = this.comp("input4").val();
		if (o_nbr !== undefined) {
			var tmp = this.comp("tmpData");
			tmp.setFilter("filter1", "o_nbr = '" + o_nbr + "'");
			tmp.refreshData();
			if (tmp.getCount() > 0) {
				var data = this.comp("baasData1");
				data.setFilter("filter1", "o_nbr = '" + o_nbr + "'");
				data.refreshData();
				this.comp("input5").val(uuid);
				this.comp("input8").val(0);
				this.comp("input9").val(0);
				this.comp("input3").val("");
				this.comp("textarea1").val("");
			} else {
				justep.Util.hint("没有相关信息！", {
					"delay" : 1000,
					"position" : "middle",
					"type" : "warning"
				});
				$(".x-hint").find("button[class='close']").hide();
			}
		} else {
			justep.Util.hint("油料编码不能为空！", {
				"delay" : 1000,
				"position" : "middle",
				"type" : "warning"
			});
			$(".x-hint").find("button[class='close']").hide();
		}
	};

	Model.prototype.windowReceiver1Receive = function(event) {
		var data = this.comp("baasData1");
		data.clear();
		data.newData({
			"defaultValues" : [ {
				"O_ID" : uuid,
			} ]
		});
	};

	Model.prototype.button1Click = function(event) {
		this.owner.send(this.comp("baasData1"));
		this.close();
	};

	return Model;
});