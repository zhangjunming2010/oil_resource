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
				this.comp("input2").val("");
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

	Model.prototype.submitBtnClick = function(event){
		var textarea1id = this.getIDByXID("textarea1");
		$("#"+textarea1id).blur();
		var input1 = this.comp("input1").val();
		var input2 = this.comp("input2").val();
		var input3 = this.comp("input3").val();
		var input4 = this.comp("input4").val();
		var input6 = this.comp("input6").val();
		var input7 = this.comp("input7").val();
		var textarea1 = this.comp("textarea1").val();
		if((input1 !== undefined && input1 !== "") && (input2 !== undefined && input2 !== "") && (input3 !== undefined && input3 !== "") && 
			(input4 !== undefined && input4 !== "") && (input6 !== undefined && input6 !== "") && (input7 !== undefined && input7 !== "") && 
			(textarea1 !== undefined && textarea1 !== "")){
			this.owner.send(this.comp("baasData1"));
			 this.close();
		}else{
			justep.Util.hint("请填入完整的信息后在提交！", {
				"delay" : 1000,
				"position" : "middle",
				"type" : "warning"
			});
			$(".x-hint").find("button[class='close']").hide();
		}
		
	};

	Model.prototype.input4Focus = function(event){
		var id = this.getIDByXID("searchBtn");
		// 判断是否敲击了Enter键
		$(document).keyup(function(event) {
			if (event.keyCode == 13) {
				$("#" + id).trigger("click");
			}
		});
	};

	Model.prototype.textarea1Focus = function(event){
		var id = this.getIDByXID("submitBtn");
		// 判断是否敲击了Enter键
		$(document).keyup(function(event) {
			if (event.keyCode == 13) {
				$("#" + id).trigger("click");
			}
		});
	};

	Model.prototype.modelLoad = function(event){
		var input4id = this.getIDByXID("input4");
		$("#"+input4id).focus();
	};


	return Model;
});