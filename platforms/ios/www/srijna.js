function showAlert(head, data, done_name) {
	navigator.notification.alert(data, // message
	alertDismissed, // callback
	head, // title
	done_name // buttonName
	);
}
function onDeviceReady() {
	window.requestFileSystem(LocalFileSystem.PERSISTENT, 0,
			onFileSystemSuccess, fail);
}

function onFileSystemSuccess(fileSystem) {

}

function fail(evt) {

	showAlert(evt + "fail:Fail");
}

function getImage(position, weight) {

	if (position == "5") {

		return "image_data/ic_star_enabled72.png"
	}
	if (position == "1") {

		if (weight['mode'].value == "1")

			return "image_data/ic_study_modes_alphabetical72.png"

		else

			return "image_data/ic_study_modes_intelligent72.png"
	}
	if (position == "3") {

		if (weight == null) {

			weight = 1;

		}
		return getLevelImage(weight);

	}
	if (position == "4") {

		return "image_data/ic_details72.png"
	}
	if (position == "2") {

		return "image_data/ic_audio_book_on72.png"
	}

}

function getALLModeImages() {

}

function getLevelImage(level) {

	if (level == "1") {

		return "image_data/ic_level_barely_know72.png";
	}
	if (level == "2") {

		return "image_data/ic_level_getting_better72.png";
	}
	if (level == "3") {

		return "image_data/ic_level_almost_there72.png";
	}
	if (level == "4") {

		return "image_data/ic_level_got_it_perfect72.png";
	}

}

function getALlLevelImages(idm) {

	return "<img id=\"level1_"
			+ idm
			+ "\" class=\"level level1\" src=\"image_data/ic_level_barely_know72.png\" /><img id=\"level2_"
			+ idm
			+ "\" class=\"level level2\" src=\"image_data/ic_level_getting_better72.png\" /><img id=\"level3_"
			+ idm
			+ "\" class=\"level level3\" src=\"image_data/ic_level_almost_there72.png\" /><img id=\"level4_"
			+ idm
			+ "\"  class=\"level level4\" src=\"image_data/ic_level_got_it_perfect72.png\" />";

}

var layoutName = null;
function updateLevel(level, label, data) {

	data[label] = level;

	updateCDATA(data);

	// alert(level);
}

function updateCDATA(data) {

	var dataKVP = [];
	dataKVP["id"] = data.index;
	dataKVP["layoutname"] = layoutName;
	dataKVP["level"] = data.level;
	dataKVP["tag"] = data.tag;
	dataKVP["extra"] = data.extra;
	if (data.Deck) {
		dataKVP["deck"] = data.Deck;
	}
	var d = new Date();
	// d.setDate(d.getDate());
	dataKVP["lastaccess"] = d.getTime();

	updateData("identity_data", dataKVP, "id", data.index);
}

function updateAccess(data, callBack) {

	var dataKVP = [];
	dataKVP["id"] = data.index;
	// alert(data.index);
	dataKVP["level"] = data.level;
	var d = new Date();
	// d.setDate(d.getDate());
	dataKVP["lastaccess"] = d.getTime();
	if (data.Deck) {
		dataKVP["deck"] = data.Deck;
	}
	updateData("identity_data", dataKVP, "id", data.index);

	// callBack();
}
function toggleStar(data) {

	if (data.tag == "" || data.tag == "0") {
		data.tag = "1";
	} else {
		data.tag = "0";
	}
	updateCDATA(data);
	updateStarUI(data);
}
function updateStarUI(data) {

	if (data.tag == "" || data.tag == 0) {

		$("#five img").attr("src", "image_data/ic_star_disabled72.png");

	} else {

		$("#five img").attr("src", "image_data/ic_star_enabled72.png");

	}

	// alert(level);
}

function getHtmlDetails(position) {

	if (position == "three") {
		var html = "<div id=\"level1\" class=\"level\" align=\"center\"><img align=\"center\" src=\"image_data/ic_level_barely_know72.png\"/><h2>Barely</h2></div><div id=\"level2\" class=\"level\" align=\"center\"><img src=\"image_data/ic_level_getting_better72.png\"/><h2>Rarely</h2></div><div id=\"level3\" class=\"level\" align=\"center\"><img src=\"image_data/ic_level_almost_there72.png\"/><h2>Nearly</h2></div><div id=\"level4\" class=\"level\" align=\"center\"><img src=\"image_data/ic_level_got_it_perfect72.png\"/><h2>Surely</h2></div>";

		return html;
	}

	if (position == "one") {
		var html = "<div id=\"mode1\" class=\"mode\"  align=\"center\"><img align=\"center\" src=\"image_data/ic_study_modes_alphabetical72.png\"/><h2>Alphabetical</h2></div><div id=\"mode2\" class=\"mode\" align=\"center\"><img src=\"image_data/ic_study_modes_intelligent72.png\"/><h2>Intelligent</h2></div>";

		return html;
	}

}

var timerObj = null;
var timet = 0;
function createTimer(time, onTimerCallBack, finishCallBack) {
	if (time <= 0) {
		finishCallBack(0);
		return;
	}
	timet = time;
	timerObj = setInterval("timer(" + onTimerCallBack + "," + finishCallBack
			+ ")", 1000);

	return timerObj;
}

function timer(onTimerCallBack, finishCallBack) {
	timet--;

	if (timet == 0) {

		finishCallBack(timet);
		clearInterval(timerObj);
	} else {

		onTimerCallBack(timet);

	}

}

function infoToQuestionAdaptor(layout, dataArray, count, properties) {

	var questionTag = "Please select best match # for";

	var infoProps = layout.infotabs.split(",");

	var qArray = new Array();

	dataArray = randomizeArray(dataArray);

	if (!count) {
		count = dataArray.length;
	}

	for (var i = 0; i < count; i++) {

		var cData = dataArray[i];

		var tInfoProps = getSupportedProps(cData, infoProps, "", properties);

		var opLen = tInfoProps.length;

		var rn = Math.floor((Math.random() * count) + 1) % (tInfoProps.length);

		var cProp = tInfoProps[rn];

		if (cProp == "Usage") {

			qArray[i] = createDashedQuestion(cData[cProp], layout, cData,
					dataArray, i);

		} else {

			qArray[i] = createQuestion(questionTag.replace("#", cProp),
					cData[cProp], layout, cData, dataArray, i);

		}
	}

	return qArray;

}

function getSupportedProps(cData, infoProps, exclude, exPList) {

	var sP = new Array();

	for (var i = 0; i < infoProps.length; i++) {

		if (cData[infoProps[i]] != ""
				&& infoProps[i] != exclude
				&& (exPList == undefined || exPList[infoProps[i]] == null
						|| exPList[infoProps[i]] == true || exPList[infoProps[i]] == "true")) {

			sP[sP.length] = infoProps[i];

		}
	}

	return sP;
}

function createDashedQuestion(usage, layout, cData, dataArray, index) {

	var ans = cData[layout.primary_field];

	var q = getDashedUsage(usage, ans);

	var exA = new Array();

	exA[0] = index;

	var cArray = createRandomNumberArray(exA, 0, dataArray.length - 1, 3);

	var ops = new Array();

	ans = getRandomPropVal(ans);

	for (var i = 0; i < cArray.length; i++) {

		ops[ops.length] = dataArray[cArray[i]][layout.primary_field];

	}
	ops[ops.length] = ans;

	ops = randomizeArray(ops);

	var q = new Question(q, ("OP" + (getAnswerOption(ops, ans) + 1)), ops);

	q.id = index;

	return q;

}

function getDashedUsage(temp, word) {

	var mi = word.toLowerCase().indexOf('(');

	if (mi != -1) {

		word = word.substring(0, mi);
	}

	var i = temp.toLowerCase().indexOf(word.toLowerCase());

	if (i == -1) {
		i = temp.toLowerCase().indexOf(
				word.toLowerCase().substring(0, word.length - 1));
	}

	if (i == -1) {
		i = temp.toLowerCase().indexOf(
				word.toLowerCase().substring(0, word.length - 2));
	}

	if (i == -1) {
		i = temp.toLowerCase().indexOf(
				word.toLowerCase().substring(0, word.length - 3));
	}

	var toReplace = "";

	if (i != -1) {

		for (var m = i; m < temp.length; m++) {

			if (temp.charAt(m) == ' ') {
				break;
			} else {
				toReplace += temp.charAt(m);
			}
		}

	}
	if (toReplace != "") {
		temp = temp.replace(toReplace, "_____________");
	}
	return temp;

}

function createQuestion(question, ans, layout, cData, dataArray, index) {

	var questionS = question + " " + cData[layout.primary_field];

	var exA = new Array();

	exA[0] = index;

	var cArray = createRandomNumberArray(exA, 0, dataArray.length - 1, 3);

	var ops = new Array();

	ans = getRandomPropVal(ans);

	for (var i = 0; i < cArray.length; i++) {

		var cData = dataArray[cArray[i]];

		var tInfoProps = getSupportedProps(cData, layout.infotabs.split(","),
				"Usage");

		var opLen = tInfoProps.length;

		var rn = Math.floor((Math.random() * 10) + 1) % (tInfoProps.length);

		var cProp = tInfoProps[rn];

		ops[ops.length] = getRandomPropVal(cData[cProp]);

	}
	ops[ops.length] = ans;

	ops = randomizeArray(ops);

	var q = new Question(questionS, ("OP" + (getAnswerOption(ops, ans) + 1)),
			ops);

	q.id = index;

	return q;
}

function getAnswerOption(ops, ans) {

	for (var i = 0; i < ops.length; i++) {
		if (ops[i] == ans) {
			return i;
		}
	}

}

function randomizeArray(ops) {

	var arr = createRandomNumberArray(null, 0, ops.length - 1, ops.length);

	var arrT = new Array();

	for (var i = 0; i < ops.length; i++) {

		arrT[i] = ops[arr[i]];
	}
	return arrT;
}

function getRandomPropVal(propVal) {

	var pA = propVal.split(";");

	var l = pA.length;

	if (pA[pA.length - 1] == "") {

		l--;
	}
	var ar = createRandomNumberArray(null, 0, (l - 1), 1);

	return pA[ar[0]];
}

function Question(Q, A, options) {

	this.Q = Q;
	this.A = A;
	this.OP1 = options[0];
	this.OP2 = options[1];
	this.OP3 = options[2];
	this.OP4 = options[3];
}

function createRandomNumberArray(numExclude, min, max, count) {

	var out = new Array();

	while (out.length < count) {

		var val = Math.floor(Math.random() * (max - min + 1)) + min;

		var found = false;

		if (numExclude != null) {
			for (var i = 0; i < numExclude.length; i++) {

				if (val == numExclude[i]) {

					found = true;
					break;

				}
			}
		}

		if (!found) {
			for (var i = 0; i < out.length; i++) {

				if (val == out[i]) {

					found = true;
					break;

				}
			}
		}

		if (found) {
			continue;
		}

		out[out.length] = val;
	}

	return out;

}

function getSttingsHtml(layoutObj, settingsMap) {

	if (layoutObj.settings == null)
		return "";

	var fi = JSON.parse(layoutObj.settings);
	var html = "";
	$.each(fi, function(i, j) {
		if (i != "private") {
			html += "<ul><li>" + i + "</li>";
			$.each(j, function(k, l) {
				var tt = "";
				var id = l.db_key ? "id=\"" + l.db_key + "\"" : "";

				if (settingsMap && settingsMap[l.db_key]
						&& settingsMap[l.db_key].value != undefined) {

					// alert(l.db_key+":"+settingsMap[l.db_key].value);

					l.def = settingsMap[l.db_key].value;
				} else if (settingsOrig && settingsOrig[l.db_key]
						&& settingsOrig[l.db_key].value != undefined) {

					// alert(l.db_key+":"+settingsMap[l.db_key].value);

					l.def = settingsOrig[l.db_key].value;
				}

				if (l.type == "number") {
					tt += "<input type=\"text\" value=\"" + l.def + "\" " + id
							+ "/>";
				} else if (l.type == "boolean") {
					var ac = (l.def == "true") ? "selected" : "";
					tt += createToggleHtml(id, ac);
					// tt+="<input type=\"checkbox\" "+ac+" value=\""+l.def+"\"
					// "+id+"/>";
				} else if (l.type == "button") {
					tt += "<button onclick=\"" + l.action + "\">" + l.def
							+ "</button>";
				} else if (l.type == "date") {
					tt += "<input type=\"date\" value=\"" + l.def + "\" " + id
							+ "/>";
				}

				html += "<li><table><tr><td style=\"width:70%\">" + l.label
						+ "</td><td style=\"width:30%\">" + tt
						+ "</td></tr></table></li>";
			});
		}
		html += "</ul>";
	});

	return html;

}

function updateFilters(settings, layoutObj) {
	var kv = [];
	for ( var kk in settings) {

		kv[kk] = settings[kk].value;
	}

	parseFilters(layoutObj, function(sett) {

		setFilters(sett);

	}, kv);

}
var isFilterChanged = false;
function loadFilters(layout, settings) {

	$(".filters").overlay().load();

	$(".filters_data select").change(function() {

		settings[$(this).attr("id")].value = $(this).val();
		updateFilters(settings, layout);
		isFilterChanged = true;
	});

	$(".filters_data input").blur(function() {

		settings[$(this).attr("id")].value = $(this).val();
		updateFilters(settings, layout);
		isFilterChanged = true;
	});
	$(".filters_data :checkbox").change(function() {

		var vall = "false";
		if ($(this).attr("checked")) {
			vall = "true";

		}
		settings[$(this).attr("id")].value = vall;

		updateFilters(settings, layout);
		isFilterChanged = true;
	});
	$('.filters_data .toggles').slider();
	$(".filters_data .toggles").bind("change", function(event, ui) {
		var vall = "false";
		if ($(this).val() == "yes") {
			vall = "true";

		}
		settings[$(this).attr("id")].value = vall;
		updateSettingsAll(settings, layout);
	});
}

function parseFilters(layoutObj, callBack, settingsObj, inApp) {
	var setting = [];
	var settingString = "";
	DEMODB
			.transaction(function(transaction) {

				transaction
						.executeSql(
								"CREATE TABLE IF NOT EXISTS filters(layoutname TEXT ,data TEXT);",
								[],
								function() {

									var fi = null;
									// if(settingsObj==undefined){
									if (layoutObj.filters == null
											&& layoutObj.inAppfilters == null) {
										if (callBack) {
											callBack(null);
										}
										return "";

									}

									if (layoutObj.filters)
										fi = JSON.parse(layoutObj.filters);

									var app = "";
									if (fi) {
										$
												.each(
														fi,
														function(i, j) {

															$
																	.each(
																			j,
																			function(
																					k,
																					l) {

																				l.value = l.def;

																				if (settingsObj != undefined
																						&& settingsObj[l.db_key] != null) {

																					l.value = settingsObj[l.db_key];
																				}

																				setting[l.db_key] = l;

																				// alert(l.db_key+":"+l.def);

																				settingString += app
																						+ l.db_key
																						+ ":"
																						+ l.value;

																				app = ",";

																			});

														});
									}
									if (layoutObj.inAppfilters) {
										fi = JSON.parse(layoutObj.inAppfilters);
									}

									if (fi) {

										$
												.each(
														fi,
														function(i, j) {

															$
																	.each(
																			j,
																			function(
																					k,
																					l) {

																				l.value = l.def;

																				if (settingsObj != undefined
																						&& settingsObj[l.db_key] != null) {

																					l.value = settingsObj[l.db_key];
																				}

																				setting[l.db_key] = l;

																				settingString += app
																						+ l.db_key
																						+ ":"
																						+ l.value;

																				app = ",";

																			});

														});

									}

									if (settingsObj != undefined) {
										var data = [ settingString,
												layoutObj.name ];
										transaction
												.executeSql(
														"UPDATE filters  set data=? where layoutname=?",
														data, nullDataHandler,
														errorHandler);

									}
									transaction
											.executeSql(
													"SELECT * FROM filters where layoutname='"
															+ layoutObj.name
															+ "'",
													[],
													function(transaction,
															results) {

														if (results.rows == null
																|| results.rows.length == 0
																|| results.rows
																		.item(0).layoutname == undefined) {

															var data = [
																	layoutObj.name,
																	settingString ];
															transaction
																	.executeSql(
																			"INSERT INTO filters(layoutname, data) VALUES (?, ?)",
																			data,
																			nullDataHandler,
																			errorHandler);
														}

														for (var i = 0; i < results.rows.length; i++) {

															var row = results.rows
																	.item(i);

															// alert(row['data']);

															var dd = row['data']
																	.split(",");

															for (var j = 0; j < dd.length; j++) {

																var kv = dd[j]
																		.split(":");

																if (kv.length < 2)
																	continue;

																if (setting[kv[0]])
																	setting[kv[0]].value = kv[1];

															}
														}

														callBack(setting);

													}, errorHandler);

								}, errorHandler);
			});

}

function getFiltersHtml(layoutObj, settingsMap, inApp) {

	if (layoutObj.filters == null && inApp == null)
		return "";
	var fi = null;
	if (layoutObj.filters)
		fi = JSON.parse(layoutObj.filters);

	if (inApp) {
		fi = JSON.parse(layoutObj.inAppfilters);
	}
	var html = "";
	$.each(fi, function(i, j) {

		html += "<ul><li>" + i + "</li>";
		$.each(j, function(k, l) {
			var tt = "";
			var id = l.db_key ? "id=\"" + l.db_key + "\"" : "";

			if (settingsMap && settingsMap[l.db_key]
					&& settingsMap[l.db_key].value != undefined) {

				// alert(l.db_key+":"+settingsMap[l.db_key].value);

				l.def = settingsMap[l.db_key].value;
			} else if (settingsOrig && settingsOrig[l.db_key]
					&& settingsOrig[l.db_key].value != undefined) {

				// alert(l.db_key+":"+settingsMap[l.db_key].value);

				l.def = settingsOrig[l.db_key].value;
			}
			if (l.db_key == "is_or") {

				var ac = (l.def == true || l.def == "true") ? "checked" : "";

				if (l.def) {

					tt += "<lablel>Or</label><input name=\"" + id
							+ "\" type=\"radio\" " + ac + " value=\"" + l.def
							+ "\" " + id + "/>";
					tt += "<lablel>And</label><input name=\"" + id
							+ "\" type=\"radio\"  value=\"" + l.def + "\" "
							+ id + "/>";
				} else {
					tt += "<lablel>And</label><input name=\"" + id
							+ "\" type=\"radio\"  value=\"" + l.def + "\" "
							+ id + "/>";
					tt += "<lablel>And</label><input name=\"" + id
							+ "\" type=\"radio\" " + ac + " value=\"" + l.def
							+ "\" " + id + "/>";
				}

			} else if (l.type == "number") {

				tt += "<input type=\"text\" value=\"" + l.def + "\" " + id
						+ "/>";
			} else if (l.type == "boolean") {

				// alert(l.def);

				// var ac = (l.def==true|| l.def=="true")?"checked":"";

				// tt+="<input type=\"checkbox\" "+ac+" value=\""+l.def+"\"
				// "+id+"/>";

				var ac = (l.def == "true") ? "selected" : "";
				tt += createToggleHtml(id, ac);
			} else if (l.type == "choice") {

				// alert(l.def);

				var ac = l.def;

				if (l.choices) {

					var chs = l.choices.split("!");

					tt += createChoicesHtml(id, chs, ac);
				}
			} else if (l.type == "button") {
				tt += "<button onclick=\"" + l.action + "\">" + l.def
						+ "</button>";
			} else if (l.type == "date") {
				tt += "<input type=\"date\" value=\"" + l.def + "\" " + id
						+ "/>";
			}

			html += "<li><table><tr><td style=\"width:60%\">" + l.label
					+ "</td><td style=\"width:40%\">" + tt
					+ "</td></tr></table></li>";
		});

		html += "</ul>";
	});

	return html;

}
// initDatabase();

function initDatabase() {
	try {
		if (!window.openDatabase) {
			alert('Local Databases are not supported by your browser. Please use a Webkit browser for this demo');
		} else {
			var shortName = 'DB_SRIJNA_6';
			var version = '2.0';
			var displayName = 'SRIJNA Test';
			var maxSize = 100000; // in bytes
			DEMODB = openDatabase(shortName, version, displayName, maxSize);
			createTables();

		}
	} catch (e) {
		if (e == 2) {
			// Version mismatch.
			console.log("Invalid database version.");
		} else {
			console.log("Unknown error " + e + ".");
		}
		return;
	}
}

function createTables(callBack) {
	DEMODB
			.transaction(function(transaction) {
				transaction
						.executeSql(
								"CREATE TABLE IF NOT EXISTS identity_data(id INTEGER NOT NULL, layoutname TEXT ,level TEXT, tag TEXT, extra TEXT,lastaccess DATE,deck number);",
								[], nullDataHandler, errorHandler);

				// callBack();
			});
	// prePopulate();
}

function errorHandler(transaction, error) {
	if (error.code == 1) {
		// DB Table already exists
	} else {
		// Error is a human-readable string.
		console.log('Oops.  Error was ' + error.message + ' (Code '
				+ error.code + ')');
	}
	return false;
}

function nullDataHandler() {
	console.log("SQL Query Succeeded");

}
function insert(tableName, dataKVP) {
	DEMODB.transaction(function(transaction) {
		// Starter data when page is initialized
		// var data = ['1','none','#B3B4EF','Helvetica','Porsche 911 GT3'];
		var sqK = "(";
		var app = "";
		var sqV = "(";
		var data = new Array();
		for ( var key in dataKVP) {

			sqK += app + key;
			sqV += app + "?";
			app = ",";
			data[data.length] = dataKVP[key];
		}
		sqK += ") ";
		sqV += ") ;";

		// transaction.executeSql("INSERT INTO layout_settings(id, layoutname,
		// level, tag, extra) VALUES (?, ?, ?, ?, ?)", [data[0], data[1],
		// data[2], data[3], data[4]]);

		transaction.executeSql("INSERT INTO " + tableName + sqK + " VALUES "
				+ sqV, data, nullDataHandler, errorHandler);
	});
}

function getDeckstats(callBack) {
	var sql = "select level,deck,count(*) as count from identity_data  group by deck,level";
	var decks = new Array();
	DEMODB.transaction(function(transaction) {

		transaction.executeSql(sql, [], function(transaction, results) {

			for (var i = 0; i < results.rows.length; i++) {

				var row = results.rows.item(i);

				decks[row.deck + "" + row.level] = row.count;
			}

			callBack(decks);

		}, errorHandler);

	});
}

function getStatistics(tableName, keyName) {

	var lA = new Array();
	var cl = 2;
	DEMODB.transaction(function(transaction) {

		var sql = "SELECT count(*) as count FROM " + tableName + " where "
				+ keyName + "='" + cl + "';"
		lA[0] = 5000;
		execute(transaction, sql, function(val) {

			lA[lA.length] = val;

			cl++;
			sql = "SELECT count(*) as count FROM " + tableName + " where "
					+ keyName + "='" + cl + "';"
			execute(transaction, sql, function(val) {

				lA[lA.length] = val;

			});

			cl++;
			sql = "SELECT count(*) as count FROM " + tableName + " where "
					+ keyName + "='" + cl + "';"
			execute(transaction, sql, function(val) {

				lA[lA.length] = val;

				lA[0] = (lA[0] - (lA[1] + lA[2] + lA[3]));

				drawPlot(lA);

			});

		});

	});
}

function execute(transaction, sql, callBack) {

	transaction.executeSql(sql, [], function(transaction, results) {

		callBack(results.rows.item(0).count);

	}, errorHandler);

}

function updateData(tableName, dataKVP, keyName, keyVal) {
	DEMODB.transaction(function(transaction) {

		transaction.executeSql("SELECT count(*) as count FROM " + tableName
				+ " where " + keyName + "='" + keyVal + "';", [], function(
				transaction, results) {

			if (results.rows == null || results.rows.length == 0
					|| results.rows.item(0).count == 0) {

				insert(tableName, dataKVP);

			} else {
				// transaction.executeSql("UPDATE page_settings SET fname=?,
				// bgcolor=?, font=?, favcar=? WHERE id = 1", [fname, bg, font,
				// car]);
				var sqV = "";
				var app = "";
				var data = new Array();
				for ( var key in dataKVP) {

					sqV += app + key + "=?";
					app = ",";
					data[data.length] = dataKVP[key];
				}

				sqV += " where " + keyName + "='" + keyVal + "'";
				DEMODB.transaction(function(transaction) {

					transaction.executeSql("UPDATE " + tableName + " SET "
							+ sqV + ";", data, nullDataHandler, errorHandler);
				});
			}

		}, errorHandler);

	});
}

function fillUserData(dataArray, layoutName, callBackFill, type) {

	var tMap = [];

	$.each(dataArray, function(i, j) {

		tMap[j.index] = j;
		j.level = "1";
		j.tag = "0";
		j.extra = "";
		j.lastaccess = null;

	});

	DEMODB
			.transaction(function(transaction) {

				var ex = type == undefined ? "" : type;

				var es = ex == "2" ? " where level!=4  order by lastaccess desc"
						: "";

				transaction
						.executeSql(
								"SELECT * FROM identity_data" + es,
								[],
								function(transaction, results) {
									for (var i = 0; i < results.rows.length; i++) {

										var row = results.rows.item(i);
										if (tMap[row['id']]) {
											tMap[row['id']].level = (row.level == undefined) ? 1
													: row.level;

											tMap[row['id']].tag = (row.tag == undefined) ? "0"
													: row.tag;

											tMap[row['id']].index = row.id;

											tMap[row['id']].id = row.id;

											tMap[row['id']].extra = row.extra;

											tMap[row['id']].Deck = row.deck;

											tMap[row['id']].lastaccess = row.lastaccess;
										}
										// alert(new Date(row.lastaccess));

									}

									if (ex == "2") {
										dataArray = intelligentDataDecorate(
												dataArray, results);
									}

									callBackFill(dataArray);

								}, errorHandler);
			});

}

function dataSelectHandler(transaction, results) {

	var tMap = [];

	// Handle the results
	for (var i = 0; i < results.rows.length; i++) {

		var row = results.rows.item(i);

		var newFeature = new Object();

		alert(row['level']);

	}

}

function intelligentDataDecorate(dataArray, results) {

	var tMap = [];

	var tlevelArray = new Array();
	tlevelArray[1] = new Array();
	tlevelArray[2] = new Array();
	tlevelArray[3] = new Array();

	$.each(dataArray, function(i, j) {

		tMap[j.index] = j;

		var cA = tlevelArray[j.level];

		cA[cA.length] = j;

	});

	var levelArray = new Array();
	levelArray[1] = new Array();
	levelArray[2] = new Array();
	levelArray[3] = new Array();

	for (var i = 0; i < results.rows.length; i++) {

		var row = results.rows.item(i);

		var level = row.level == undefined ? 1 : row.level;

		var cArray = levelArray[level];

		cArray[cArray.length] = tMap[row.id]

	}
	var fArray = new Array();

	for (var i = 1; i < 4; i++) {

		var pArray = new Array();

		for (var j = 0; j < levelArray[i].length; j++) {

			fArray[fArray.length] = levelArray[i][j];

			pArray[levelArray[i][j].id] = true;
		}

		var cA = tlevelArray[i];

		for (var j = 0; j < cA.length; j++) {

			if (pArray[cA[j].index] == undefined)

				fArray[fArray.length] = cA[j];

		}

	}

	return fArray;
}

function updateSettings(key, val, layoutObj) {
	var kv = [];
	kv[key] = val;
	parseSettings(layoutObj, function(sett) {

		startApplication();

	}, kv);

}

function updateSettingsAll(settings, layoutObj) {
	var kv = [];
	for ( var kk in settings) {

		kv[kk] = settings[kk].value;
	}

	// kv[key]=val;
	parseSettings(layoutObj, function(sett) {

		startApplication();

	}, kv);

}
function updateDeckSelectionAll(name, data) {
	var datas = "";
	var app = "";
	for ( var key in decks) {

		if (!decks[key])
			continue;
		datas += app + key;
		app = ",";

	}
	updateDeckSelection(name, datas);

}
function updateDeckSelection(name, data) {
	var dataA = [ name, data ];

	DEMODB
			.transaction(function(transaction) {

				transaction
						.executeSql(
								"CREATE TABLE IF NOT EXISTS decks(layoutname TEXT ,data TEXT);",
								[],
								function() {

									transaction
											.executeSql(
													"SELECT * FROM decks where layoutname='"
															+ name + "'",
													[],
													function(transaction,
															results) {

														if (results.rows == null
																|| results.rows.length == 0
																|| results.rows
																		.item(0).layoutname == undefined) {

															transaction
																	.executeSql(
																			"INSERT INTO decks(layoutname, data) VALUES (?, ?)",
																			dataA,
																			nullDataHandler,
																			errorHandler);
														} else {
															dataA = [ data,
																	name ];
															transaction
																	.executeSql(
																			"UPDATE decks  set data=? where layoutname=?",
																			dataA,
																			nullDataHandler,
																			errorHandler);

														}
													});
								});
			});
}
var deckSelSupported = false;
var deselS = "";
function getSelDecks() {
	var dD = [];

	var as = deselS.split(",");
	for (var i = 0; i < as.length; i++) {
		dD[as[i]] = as[i];
	}

	return dD;
}

function setDeckSupported(name, callBack) {
	deckSelSupported = true;
	fetchDeckSelection(name, function(desel) {

		deselS = desel;

		// alert("DDDDD : "+deselS);

		if (callBack != null) {

			callBack();
		}

	});
}

function getSelectedDeckData(data) {
	if (!deckSelSupported) {
		return data;
	}
	// alert("FFFFFFF");
	var tdata = new Array();

	var sA = getSelDecks();
	$.each(data, function(m, n) {

		if (sA[n.Deck]) {

			tdata[tdata.length] = n;
			// alert(n.Deck);
		} else {
			// alert(n.Deck);

		}
	});
	return tdata;
}

function getFilteredData(data, filters) {
	var tdata = new Array();
	var isOr = (filters.is_or && (filters.is_or.value == false || filters.is_or.value == "false")) ? false
			: true;

	var stDate = new Date();
	var etDate = new Date();

	if (filters.use_date
			&& (filters.use_date.value == true || filters.use_date.value == "true")) {

		etDate.setHours(0);
		etDate.setMinutes(0);
		etDate.setSeconds(0);
		etDate.setMilliseconds(0);
		if (filters.date_selected.value == "All") {

			stDate = null;
			etDate = null;

		} else if (filters.date_selected.value == "Yesterday") {

			stDate.setHours(0);
			stDate.setMinutes(0);
			stDate.setSeconds(0);
			stDate.setMilliseconds(0);
			stDate.setDate(stDate.getDate() - 1);

		} else if (filters.date_selected.value == "Today") {

			stDate.setHours(0);
			stDate.setMinutes(0);
			stDate.setSeconds(0);
			stDate.setMilliseconds(0);

			etDate = new Date();

		} else if (filters.date_selected.value == "Last Week") {

			stDate.setHours(0);
			stDate.setMinutes(0);
			stDate.setSeconds(0);
			stDate.setMilliseconds(0);
			stDate.setDate(stDate.getDate() - 7);

		} else if (filters.date_selected.value == "Last Month") {

			stDate.setHours(0);
			stDate.setMinutes(0);
			stDate.setSeconds(0);
			stDate.setMilliseconds(0);
			stDate.setDate(stDate.getDate() - 30);

		}

	}

	$
			.each(
					data,
					function(m, n) {

						var andF = null;
						var orF = false;
						var donotInclude = false;
						if (filters.use_date
								&& (filters.use_date.value == true || filters.use_date.value == "true")) {

							if (n.lastaccess == null) {

								donotInclude = true;
							} else {

								if (filters.date_selected.value != "All") {

									if (n.lastaccess >= stDate.getTime()
											&& n.lastaccess <= etDate.getTime()) {

										donotInclude = false;

									} else {

										donotInclude = true;
									}

								}

							}

						}
						if (!donotInclude) {

							if (filters.barely
									&& (filters.barely.value == true || filters.barely.value == "true")) {

								if (n.level == 1) {

									if (andF == null) {

										andF = true;
									} else {
										andF = andF & true;
									}
									orF = true;

								} else {

									andF = false;
								}

							}

							if (filters.fairly
									&& (filters.fairly.value == true || filters.fairly.value == "true")) {

								if (n.level == 2) {
									if (andF == null) {

										andF = true;
									} else {
										andF = andF & true;
									}
									orF = true;

								} else {
									andF = false;
								}
							}

							if (filters.nearly
									&& (filters.nearly.value == true || filters.nearly.value == "true")) {
								if (n.level == 3) {
									if (andF == null) {

										andF = true;
									} else {
										andF = andF & true;
									}
									orF = true;
								} else {
									andF = false;
								}
							}

							if (filters.surely
									&& (filters.surely.value == true || filters.surely.value == "true")) {
								if (n.level == 4) {
									if (andF == null) {

										andF = true;
									} else {
										andF = andF & true;
									}
									orF = true;

								} else {
									andF = false;
								}
							}

							if (filters.star
									&& (filters.star.value == true || filters.star.value == "true")) {

								if (n.tag == "1") {
									if (andF == null) {

										andF = true;
									} else {
										andF = andF & true;
									}
									orF = true;

								} else {

									andF = false;
								}

							}

							if (filters.critical
									&& (filters.critical.value == true || filters.critical.value == "true")) {
								if (n.Critical == "1") {
									if (andF == null) {

										andF = true;
									} else {
										andF = andF & true;
									}
									orF = true;

								} else {

									andF = false;
								}

							}

							if (isOr && orF) {

								tdata[tdata.length] = n;

							} else if (!isOr && andF) {

								tdata[tdata.length] = n;
							}

						}

					});
	return tdata;

}

function fetchDeckSelection(name, callBack) {
	DEMODB.transaction(function(transaction) {
		transaction.executeSql("SELECT * FROM decks where layoutname='" + name
				+ "'", [], function(transaction, results) {

			if (results.rows == null || results.rows.length == 0
					|| results.rows.item(0).layoutname == undefined) {

				callBack(null);
			} else {

				callBack(results.rows.item(0).data);
			}

		}, function() {
			callBack(null);
		});
	});

}

function parseSettings(layoutObj, callBack, settingsObj) {
	var setting = [];
	var settingString = "";
	DEMODB
			.transaction(function(transaction) {

				transaction
						.executeSql(
								"CREATE TABLE IF NOT EXISTS settings(layoutname TEXT ,data TEXT);",
								[],
								function() {

									var fi = null;
									// if(settingsObj==undefined){
									if (layoutObj.settings == null)
										return "";

									fi = JSON.parse(layoutObj.settings);

									var app = "";
									$
											.each(
													fi,
													function(i, j) {

														$
																.each(
																		j,
																		function(
																				k,
																				l) {

																			l.value = l.def;

																			if (settingsObj != undefined
																					&& settingsObj[l.db_key] != null) {

																				l.value = settingsObj[l.db_key];
																			}

																			setting[l.db_key] = l;

																			// alert(l.db_key+":"+l.def);

																			settingString += app
																					+ l.db_key
																					+ ":"
																					+ l.value;

																			app = ",";

																		});

													});

									if (settingsObj != undefined) {
										var data = [ settingString,
												layoutObj.name ];
										transaction
												.executeSql(
														"UPDATE settings  set data=? where layoutname=?",
														data, nullDataHandler,
														errorHandler);

									}
									transaction
											.executeSql(
													"SELECT * FROM settings where layoutname='"
															+ layoutObj.name
															+ "'",
													[],
													function(transaction,
															results) {

														if (results.rows == null
																|| results.rows.length == 0
																|| results.rows
																		.item(0).layoutname == undefined) {

															var data = [
																	layoutObj.name,
																	settingString ];
															transaction
																	.executeSql(
																			"INSERT INTO settings(layoutname, data) VALUES (?, ?)",
																			data,
																			nullDataHandler,
																			errorHandler);
														}

														for (var i = 0; i < results.rows.length; i++) {

															var row = results.rows
																	.item(i);

															// alert(row['data']);

															var dd = row['data']
																	.split(",");

															for (var j = 0; j < dd.length; j++) {

																var kv = dd[j]
																		.split(":");

																if (kv.length < 2)
																	continue;

																setting[kv[0]].value = kv[1];

															}
														}

														callBack(setting);

													}, errorHandler);

								}, errorHandler);
			});

}
function showDetails(word) {
	$(".details iframe").height($(window).height());
	$(".details iframe").width($(window).width());
	$(".details iframe").attr("src",
			"http://websrijnatutor.appspot.com/websearch.jsp?word=" + word);
	$(".details").overlay().load();

	// window.open("https://localhost/test/websearch.jsp?word="+word,"_self");
}
var urlTemplate = "";
function openDWindow(url, obj) {
	$(".window .header").html(obj.innerHTML);
	urlTemplate = url;

	$(".window").overlay().load();
}
function createMenu(miL) {

	/*
	 * 
	 * <div onclick="window.open('settings.html','_self');" style="margin-right:
	 * 1px; width: 116.8px; height: 58.21875px;position: absolute;margin:
	 * auto;top: -30px;width: 100%;height: 30px;border-radius: 10px 10px 0px
	 * 0px;border-bottom: 1px solid #555;opacity: 0.8;"></div>
	 */
	$(".menu div").css("margin-right", "1px");

	$(".menu div").width(($(".foot").width() / miL) - 1);

	$(".menu").width($(".foot").width());

	// $("#menu_button").css("margin-left",($(".foot").width()-46)/2);

	$("#menu_button").css("margin-left", "0px");
	$("#menu_button").unbind();
	$("#menu_button").click(function() {

		$(".menu").animate({
			"height" : "toggle"
		}, 500);
	});

	// $(".menu").css("margin-top","-"+$(".menu").height()+"px");
	var off = ($(window).height() - $(".foot").position().top);
	if ($(".foot").height() > off) {
		off = $(".foot").height();
	}
	if (!off) {
		off = 60;
	}
	$(".menu").css("margin-top", "-" + off + "px");

	$(".menu div").height(off);

	// $(".menu").append("<a class=\"close\"/>");

	$(".menu .close").click(function() {

		$(".menu").animate({
			"height" : "toggle"
		}, 500);
	});

}
var help = [];
function createHelp() {
	$("body")
			.append(
					"<div class=\"help\"><input type=\"hidden\" value=\"\" id=\"key\"/><a class=\"close\"></a><div class=\"header\"></div><div class=\"helpcontent\"></div><div class=\"footer\"><input id=\"donot_show\" style=\"float:left;font-size:12pt\" type=\"checkbox\"/><h2 style=\"float:left;font-size:12pt;margin:0px\">Do not Show this again </h2><button class=\"button done\" style=\"margin:5px;float:right\">Done</button></div></div>");

	$(".help").overlay({
		top : 0,

		mask : {
			color : '#fff',
			loadSpeed : 200,
			opacity : 0.5
		},
		onBeforeLoad : function() {

		},

		closeOnClick : false,
		load : false

	});
	loadPopKeys(function() {

		$
				.getJSON(
						"json/help.json",
						function(help) {

							$
									.each(
											help,
											function(i, j) {

												help[j.dataKey] = j;

												if (loadKeys[j.dataKey] != "true") {

													$("#" + j.dataKey)
															.click(
																	function() {

																		if (loadKeys[j.dataKey] != "true") {
																			$(
																					".help .helpcontent")
																					.html(
																							"");
																			$(
																					".help #key")
																					.val(
																							$(
																									this)
																									.attr(
																											"id"));
																			$(
																					".help .helpcontent")
																					.html(
																							help[$(
																									this)
																									.attr(
																											"id")].payLoadHtml);
																			$(
																					".help .header")
																					.html(
																							help[$(
																									this)
																									.attr(
																											"id")].header);
																			$(
																					".help .helpcontent")
																					.height(
																							$(
																									".help")
																									.height()
																									- 2
																									* ($(".help .header")
																											.height())
																									- 10);
																			$(
																					".help")
																					.overlay()
																					.load();

																		}

																	});

												}

											});

						});

	});

	$(".help .footer .done")
			.click(
					function() {
						$(".help").overlay().close();
						DEMODB
								.transaction(function(transaction) {
									transaction
											.executeSql(
													"CREATE TABLE IF NOT EXISTS helppop(name TEXT ,is_show TEXT);",
													[],
													function() {

														transaction
																.executeSql(
																		"SELECT * FROM helppop where name='"
																				+ $(
																						".help #key")
																						.val()
																				+ "'",
																		[],
																		function(
																				transaction,
																				results) {

																			var vval = $(
																					"#donot_show")
																					.attr(
																							"checked") ? "true"
																					: "false";

																			if (results.rows == null
																					|| results.rows.length == 0
																					|| results.rows
																							.item(0).name == undefined) {

																				var data = [
																						$(
																								".help #key")
																								.val(),
																						vval ];

																				transaction
																						.executeSql(
																								"INSERT INTO helppop(name, is_show) VALUES (?, ?)",
																								data,
																								nullDataHandler,
																								errorHandler);
																			} else {
																				var data = [
																						vval,
																						$(
																								".help #key")
																								.val() ];

																				transaction
																						.executeSql(
																								"UPDATE helppop set is_show=? where name=?",
																								data,
																								nullDataHandler,
																								errorHandler);
																			}

																			loadKeys[$(
																					".help #key")
																					.val()] = vval;

																		});

													});
								});
					});

}
var loadKeys = [];
function loadPopKeys(callBack) {

	DEMODB
			.transaction(function(transaction) {
				transaction
						.executeSql(
								"CREATE TABLE IF NOT EXISTS helppop(name TEXT ,is_show TEXT);",
								[],
								function() {

									transaction
											.executeSql(
													"SELECT * FROM helppop",
													[],
													function(transaction,
															results) {

														if (results.rows == null
																|| results.rows.length == 0
																|| results.rows
																		.item(0).name == undefined) {

														} else {

															for (var i = 0; i < results.rows.length; i++) {

																var row = results.rows
																		.item(i);

																loadKeys[row.name] = row.is_show;

															}

														}

														callBack();

													});

								});
			});
}

var aa = 180;
function rotate() {
	// document.getElementById("panes").style.webkitTransform =
	// "rotateY("+aa+"deg)";

}
$(document).ready(function() {
	try {
		createHelp();
	} catch (e) {
	}
});

function reset() {

	// settings
	// helppop
	// identity_data
	// decks
	var dt = [ "settings", "helppop", "identity_data", "decks" ];
	DEMODB.transaction(function(transaction) {
		for (var i = 0; i < dt.length; i++) {
			transaction.executeSql("DELETE from " + dt[i] + ";", [],
					function() {
					}, errorHandler);

		}

	});

	if ($("body .reset").length == 0) {

		$("body")
				.append(
						"<div class=\"reset help\"><a class=\"close\"></a><h2>Application resetted successfully</h2></div>");

		$("body .reset").overlay({
			top : 0,

			mask : {
				color : '#fff',
				loadSpeed : 200,
				opacity : 0.5
			},
			onBeforeLoad : function() {

			},
			onBeforeClose : function() {
				$("body .reset").remove();
			},

			closeOnClick : false,
			load : false

		});
	}
	$("body .reset").overlay().load();
}

function getSummaryReport(tableName, keyName) {

	var lA = new Array();
	var cl = 2;
	DEMODB.transaction(function(transaction) {

		var sql = "SELECT count(*) as count FROM " + tableName + " where "
				+ keyName + "='" + cl + "';"
		lA["level1"] = 5000;
		execute(transaction, sql,
				function(val) {

					lA["level2"] = val;

					cl++;
					sql = "SELECT count(*) as count FROM " + tableName
							+ " where " + keyName + "='" + cl + "';"
					execute(transaction, sql, function(val) {

						lA["level3"] = val;

					});

					sql = "SELECT count(*) as count FROM " + tableName
							+ " where tag='1';"
					execute(transaction, sql, function(val) {

						lA["star"] = val;

					});

					cl++;
					sql = "SELECT count(*) as count FROM " + tableName
							+ " where " + keyName + "='" + cl + "';"
					execute(transaction, sql,
							function(val) {

								lA["level4"] = val;

								lA["level1"] = (lA["level1"] - lA["level2"]
										+ lA["level3"] + lA["level4"]);

								lA["read"] = lA["level2"] + lA["level3"]
										+ lA["level4"];

								$("#read").html(lA["read"]);
								$("#level1").html(lA["level1"]);
								$("#level2").html(lA["level2"]);
								$("#level3").html(lA["level3"]);
								$("#level4").html(lA["level4"]);
								$("#star").html(lA["star"]);

								// alert(lA["star"]);

							});

				});

	});
}

var isMobile = {
	Android : function() {
		return navigator.userAgent.match(/Android/i);
	},
	BlackBerry : function() {
		return navigator.userAgent.match(/BlackBerry/i);
	},
	iOS : function() {
		return navigator.userAgent.match(/iPhone|iPad|iPod/i);
	},
	Opera : function() {
		return navigator.userAgent.match(/Opera Mini/i);
	},
	Windows : function() {
		return navigator.userAgent.match(/IEMobile/i);
	},
	any : function() {
		return (isMobile.Android() || isMobile.BlackBerry() || isMobile.iOS()
				|| isMobile.Opera() || isMobile.Windows());
	}
};

// formatDataToSpeech(layObj.primary_field,cData[layObj.primary_field],layObj.speechHeads);
var kvp = null;
var kp = null;

function formatDataToSpeech(layObj, cData, settings) {
	kvp = new Array();
	kp = new Array();

	$.each(JSON.parse(layObj.speechHeads).speech, function(i, j) {
		if (cData[j.key] != null) {
			var valO = "";
			if (layObj.primary_field == j.key)

				valO = j.value.replace("$var", cData[j.key]);

			else

				valO = j.value.replace("$var", cData[layObj.primary_field])
						+ " " + cData[j.key];

			// alert(settings.pause_attribute.value);
			// speak(valO);

			kvp[kvp.length] = valO;
			kp[kp.length] = j.key;

		}
	});

	setTimeout("speechSynch(0," + parseInt(settings.pause_attribute.value)
			+ ")", parseInt(settings.pause_attribute.value) * 1000);

}
function mss(result) {

	alert("ok");
}
function speechSynch(indexA, sleep) {

	// alert(kvp[indexA]+kp[indexA]+sleep);
	speak(kvp[indexA], function() {

		if (indexA < kvp.length) {
			setTimeout("speechSynch(" + indexA + "," + sleep + ")",
					sleep * 1000);
		}

	});
	indexA++;
}

function startTTSFlow() {
	if (isTTSRunning) {

		$("#two img").attr("src", "image_data/ic_audio_book_on72.png");

		isTTSRunning = false;

	} else {
		$("#two img").attr("src", "image_data/ic_audio_book_off72.png");
		isTTSRunning = true;
	}

}
function isTTSRunning() {

	isTTSRunning;
}

function goSpeak() {

}
var isTTSRunning = false;

function startTTS() {
	window.plugins.tts.startup(startupWin, fail);
}
function startupWin(result) {
	// When result is equal to STARTED we are ready to play
	if (result == TTS.STARTED) {
		window.plugins.tts.getLanguage(win, fail);
		// window.plugins.tts.speak("");
		window.plugins.tts.isLanguageAvailable("en", function() {
			addLang("en");
		}, fail);
		window.plugins.tts.isLanguageAvailable("fr", function() {
			addLang("fr");
		}, fail);
	}
}

function addLang(lang) {
	var langs = document.getElementById('langs');
	var anOption = document.createElement("OPTION")
	anOption.innerText = lang;
	anOption.Value = lang;
	langs.options.add(anOption);
}

function changeLang() {
	var yourSelect = document.getElementById('langs');
	window.plugins.tts.setLanguage(
			yourSelect.options[yourSelect.selectedIndex].value, win, fail);
}

function win(result) {
	console.log(result);
}

function speak(value, ons) {
	window.plugins.tts.speak(value, ons);
}
function createToggleHtml(id, sel) {

	return "<select  "
			+ id
			+ " data-role=\"slider\" class=\"toggles\" data-theme=\"c\" data-track-theme=\"c\">"
			+ "<option value=\"no\">No</option>" + "<option value=\"yes\" "
			+ sel + ">Yes</option>" + "</select>";

}
function createChoicesHtml(id, chs, sel) {

	var ops = "";

	$.each(chs, function(l, m) {
		var sels = m == sel ? "selected" : "";

		ops += "<option " + sels + " value=\"" + m + "\">" + m + "</option>";

	});

	return "<select  " + id + ">" + ops + "</select>";

}

// //////////////////

function clickDetails(obj) {
	$("#detaildata").html("");
	$("#detaildata")
			.bind(
					'oTransitionEnd transitionEnd webkitTransitionEnd',
					event,
					function() {
						// $("#detaildata").addClass("transparent");
						if ($(event.target).hasClass("poptbv")) {

							return;
						}
						$("#detaildata").unbind();

						$
								.get(
										"studyminipop.html",
										function(data) {

											var cData = dataPrimaryMap[$(
													"h2.primary", $(obj))
													.html()];
											$("#detaildata").html(data);
											$("#detaildata #primary_field")
													.html(
															cData[secLayout.primary_field]);
											$("#detaildata #primary_type")
													.html(
															" ( "
																	+ cData[secLayout.primary_type]
																	+ " )");
											var sett = [];
											var tabs = secLayout.infotabs
													.split(",");
											$(".part2 .panes").html("");
											var tl = tabs.length;
											for (var i = 0; i < tabs.length; i++) {
												$(".part2 .panes")
														.append(
																"<div class=\"ddiv\" id=\"tab_"
																		+ tabs[i]
																		+ "\">"
																		+ cData[tabs[i]]
																		+ "</div>");
											}
											createTabs(secLayout);
											var mode = new Object();
											mode.value = "1";
											sett['mode'] = mode;
											var lc = null;
											$("#one").html(
													"<img src=\""
															+ getImage(1, sett)
															+ "\" />");
											$("#two").html(
													"<img src=\"" + getImage(2)
															+ "\" />");
											$("#three")
													.html(
															"<img  src=\""
																	+ getImage(
																			3,
																			cData['level'])
																	+ "\" />");
											$("#three")
													.click(
															function() {
																$(".poptbv")
																		.css(
																				"display",
																				"block");
																if (!$(
																		".poptbv")
																		.hasClass(
																				"easing")) {
																	$(".poptbv")
																			.addClass(
																					"easing");
																}
																if (lc == null) {
																	$(".poptbv")
																			.bind(
																					'oTransitionEnd transitionEnd webkitTransitionEnd',
																					event,
																					function() {
																						if ($(
																								event.target)
																								.hasClass(
																										"poptbv")) {
																							$(
																									".poptbv")
																									.unbind();
																							$(
																									".poptbv")
																									.css(
																											{
																												"top" : $(
																														"#three")
																														.position().top
																														+ $(
																																"#three")
																																.height()
																											});
																						}
																					});
																	$(".poptbv")
																			.css(
																					{
																						"top" : $(
																								"#three")
																								.position().top
																								+ $(
																										"#three")
																										.height()
																								+ 25
																					});
																	lc = $(".poptbv");
																} else {
																	lc = null;
																	$(".poptbv")
																			.css(
																					{
																						"top" : -($(
																								"#three")
																								.position().top
																								+ $(
																										"#three")
																										.height() + 350)
																					});

																}
															});
											$("#five")
													.click(
															function() {
																toggleStar(cData);
																if (cData.tag == ""
																		|| cData.tag == 0) {

																	$(
																			".mstar",
																			$(obj))
																			.attr(
																					"src",
																					"image_data/ic_star_disabled72.png");
																} else {

																	$(
																			".mstar",
																			$(obj))
																			.attr(
																					"src",
																					"image_data/ic_star_enabled72.png");
																}

															});
											$(".poptbv div")
													.click(
															function() {
																var lev = $(
																		this)
																		.attr(
																				"id")
																		.split(
																				"level")[1];
																updateLevel(
																		lev,
																		"level",
																		cData);
																$(".mlevel",
																		$(obj))
																		.attr(
																				"src",
																				getImage(
																						3,
																						lev));
																$("#three")
																		.html(
																				"<img style=\"max-height: 90%;\" src=\""
																						+ getImage(
																								3,
																								lev)
																						+ "\" />");
																$(".poptbv")
																		.bind(
																				'oTransitionEnd transitionEnd webkitTransitionEnd',
																				event,
																				function() {
																					$(
																							".poptbv")
																							.unbind();

																				});
																$(".poptbv")
																		.css(
																				{
																					"top" : -($(
																							"#three")
																							.position().top
																							+ $(
																									"#three")
																									.height() + 350)
																				});
																lc = null;
															});
											$("#four").html(
													"<img style=\"padding:0px;margin:0px\" src=\""
															+ getImage(4)
															+ "\" />");

											$("#four")
													.click(
															function() {

																showDetails(cData[secLayout.primary_field]);

															});

											$("#five").html(
													"<img style=\"padding:0px;margin:0px\"  src=\""
															+ getImage(5)
															+ "\" />");
											updateStarUI(cData);
											$("#detaildata .btw").css("float",
													"left");
											$("#detaildata .btw").css("width",
													"20%");
											$("#detaildata .btw img").css(
													"max-height", "90%");
											$("#detaildata .btw").css(
													"padding", "0px");
											$("#four").css("float", "right");
											$("#five").css("float", "right");

											if ((dataPrimaryMap[$("h2.primary",
													$(obj)).html()])['Critical'] == 0) {
												$("#detaildata #cImage").css(
														"display", "none");
											} else {
												$("#detaildata #cImage").css(
														"display", "block");
											}
											$("#detaildata .btw").height(
													$(".head").height());
											$("#detaildata .buttonmask")
													.height($(".head").height());
											$("#detaildata .buttonmaskbig")
													.height($(".head").height());
											$("#detaildata .buttonmaskbig")
													.width($(".head").height());
											$("#detaildata .buttonmask").width(
													$(".head").height());
											$("#detaildata .buttonmask img")
													.width(
															$(".head").height() - 2);
											$("#detaildata.buttonmaskbig img")
													.width($(".head").height());
											$(".poptbv")
													.css(
															{
																"left" : $(
																		"#three img")
																		.position().left
																		+ ($(
																				"#three img")
																				.width() - 2 - $(
																				".poptbv")
																				.width())
																		/ 2
															});
											$(".poptbv")
													.css(
															{
																"top" : $(
																		"#three")
																		.position().top
																		+ $(
																				"#three")
																				.height()
																		- 300
															});
											$("#detaildata").unbind();

										});
					});

	$("#detaildata").addClass("transparent");

	$("#back_button").css("display", "block");
	$("#menu_button").css("display", "none");
}

function createTabs(layout) {
	var tabs = layout.infotabs.split(",");
	$("#detaildata .tabs").html("");
	for (var i = 0; i < tabs.length; i++) {
		$("#detaildata  .tabs").append(
				"<li id=\"" + tabs[i] + "\"><a href=\"#" + tabs[i] + "\">"
						+ tabs[i] + "</a></li>");
	}
	$("#detaildata  .tabs li").width(
			($("#detaildata .part2").width() / tabs.length - 2.5));
	registerTabs();
	$("#detaildata  .tabs #" + layout.default_field).click();
}
function registerTabs() {
	$("#detaildata .tabs li").click(function() {
		$("#detaildata .tabs li").removeClass("select");
		$("#detaildata  .tabs li a").css("color", "black");
		$("#detaildata .ddiv").css("display", "none");
		if ($(this).hasClass("select")) {
			$("#tab_" + $(this).attr("id")).css("display", "none");
			$(this).removeClass("select");
		} else {
			$(this).addClass("select");
			$("a", $(this)).css("color", "white");
			$("#tab_" + $(this).attr("id")).css("display", "block");
		}
	});
}
function loadMenuWindow(){
	$(".window").overlay({
		top : 0,
	
		mask : {
			color : '#fff',
			loadSpeed : 200,
			opacity : 0.5
		},
		onBeforeLoad : function() {
	
			$.get(urlTemplate, function(data) {
	
				$(".window .data").html(data);
	
			});
		},
		onBeforeClose : function() {
	
		},
	
		closeOnClick : false,
		load : false
	
	});
}
