/* global QUnit */
QUnit.config.autostart = false;

sap.ui.getCore().attachInit(function () {
	"use strict";

	sap.ui.require([
		"ApproveForm/approveform/test/unit/AllTests"
	], function () {
		QUnit.start();
	});
});
