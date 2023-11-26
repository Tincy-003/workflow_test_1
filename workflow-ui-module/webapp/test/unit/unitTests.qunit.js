/* global QUnit */
QUnit.config.autostart = false;

sap.ui.getCore().attachInit(function () {
	"use strict";

	sap.ui.require([
		"startui_test/workflow-ui-module/test/unit/AllTests"
	], function () {
		QUnit.start();
	});
});
