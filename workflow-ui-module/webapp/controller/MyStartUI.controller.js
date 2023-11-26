sap.ui.define([
"sap/ui/core/mvc/Controller",
 "sap/ui/model/json/JSONModel",
 "sap/ui/core/Fragment",
   "sap/ui/model/Filter",
   "sap/ui/model/FilterOperator",
   "sap/m/MessageToast"
   ],
   /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
 function (Controller) {
   "use strict";
   return Controller.extend(
   "startui_test.workflowuimodule.controller.MyStartUI",
   {
   onInit: function () {
            /*
            this.getView().setModel(
              new sap.ui.model.json.JSONModel({
                initialContext: JSON.stringify(
                  { someProperty: "some value" },
                  null,
                  4
                ),
                apiResponse: "",
              })
            );
            */
            var oModel = this.getOwnerComponent().getModel("mBP");
            this.getView().setModel(oModel);
          },
          startWorkflowInstance: function () {
            //var model = this.getView().getModel();
            var definitionId = "testworkflow1.myworkflow";
            //var initialContext = model.getProperty("/initialContext");
            var model2 = this.getOwnerComponent().getModel("mBP");
            var initialContext2 = model2.getProperty("/");
            var initialContext3 = JSON.stringify(initialContext2);
            /*
            var data = {
              definitionId: definitionId,
              context: JSON.parse(initialContext),
            };
            */
            var data = {
              definitionId: definitionId,
              context: JSON.parse(initialContext3),
            };
            $.ajax({
              url: this._getWorkflowRuntimeBaseURL() + "/workflow-instances",
              method: "POST",
              async: false,
              contentType: "application/json",
              headers: {
                "X-CSRF-Token": this._fetchToken(),
              },
              data: JSON.stringify(data),
              success: function (result, xhr, data) {
                model.setProperty(
                  "/apiResponse",
                  JSON.stringify(result, null, 4)
                );
              },
              error: function (request, status, error) {
                var response = JSON.parse(request.responseText);
                model.setProperty(
                  "/apiResponse",
                  JSON.stringify(response, null, 4)
                );
              },
            });
          },
          _fetchToken: function () {
            var fetchedToken;
            jQuery.ajax({
              url: this._getWorkflowRuntimeBaseURL() + "/xsrf-token",
              method: "GET",
              async: false,
              headers: {
                "X-CSRF-Token": "Fetch",
              },
              success(result, xhr, data) {
                fetchedToken = data.getResponseHeader("X-CSRF-Token");
              },
            });
            return fetchedToken;
          },
          _getWorkflowRuntimeBaseURL: function () {
            var appId = this.getOwnerComponent().getManifestEntry("/sap.app/id");
            var appPath = appId.replaceAll(".", "/");
            var appModulePath = jQuery.sap.getModulePath(appPath);
            return appModulePath + "/bpmworkflowruntime/v1";
          },
        }
      );
    }
  );
  