{
	"contents": {
		"047d9326-84d9-4006-97b7-03453e4f41aa": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "testworkflow1.myworkflow1",
			"subject": "MyWorkflow1",
			"name": "MyWorkflow1",
			"documentation": "testworkflow1",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"c5ef3227-e2e1-40e6-bf55-8f4c17247a0d": {
					"name": "StartEvent2"
				},
				"dda1b36e-49e9-4537-9754-3e37d584890a": {
					"name": "EndEvent2"
				}
			},
			"activities": {
				"c7e38920-d14b-4155-9c5c-5ceca2875228": {
					"name": "UserTask1"
				},
				"79b847f2-58e4-48b2-aed9-7301ed61cb20": {
					"name": "call API"
				}
			},
			"sequenceFlows": {
				"bd8c972b-c71e-41ec-97ce-9255d9bf9af8": {
					"name": "SequenceFlow3"
				},
				"4be68335-36be-482e-8e2d-8dd1c740005d": {
					"name": "SequenceFlow4"
				},
				"90ad61f9-b74a-4271-b9d9-92b1112c4fac": {
					"name": "SequenceFlow5"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"f9ee2846-4850-4128-9165-56081b861d1d": {},
				"21dca35f-c417-4479-ab22-2e73f0e4a97d": {},
				"2ae274b0-8941-4878-adc0-ae391851c54d": {},
				"c1c3dee4-f1ab-4579-a2f1-6a26df2b5d08": {},
				"996a2a74-d1a1-46f9-9543-0489ceb90f6e": {},
				"a055769d-b6ce-434c-a531-a6e7ceab5942": {},
				"9ac33424-e2ae-4a3b-a5c7-ee9eb949386d": {}
			}
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"terminateeventdefinition": 1,
			"sequenceflow": 5,
			"startevent": 2,
			"endevent": 2,
			"usertask": 2,
			"servicetask": 1
		},
		"c7e38920-d14b-4155-9c5c-5ceca2875228": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approve",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://test_workflow_1.ApproveFormapproveform/ApproveForm.approveform",
			"recipientUsers": "tincy.thomas@innovaturelabs.com",
			"id": "usertask1",
			"name": "UserTask1"
		},
		"f9ee2846-4850-4128-9165-56081b861d1d": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"isAdjustToContent": false,
			"x": 145,
			"y": 86,
			"width": 105,
			"height": 60,
			"object": "c7e38920-d14b-4155-9c5c-5ceca2875228"
		},
		"c5ef3227-e2e1-40e6-bf55-8f4c17247a0d": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent2",
			"name": "StartEvent2"
		},
		"21dca35f-c417-4479-ab22-2e73f0e4a97d": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 3,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "c5ef3227-e2e1-40e6-bf55-8f4c17247a0d"
		},
		"bd8c972b-c71e-41ec-97ce-9255d9bf9af8": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "c5ef3227-e2e1-40e6-bf55-8f4c17247a0d",
			"targetRef": "c7e38920-d14b-4155-9c5c-5ceca2875228"
		},
		"2ae274b0-8941-4878-adc0-ae391851c54d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "34.5,116 145,116",
			"sourceSymbol": "21dca35f-c417-4479-ab22-2e73f0e4a97d",
			"targetSymbol": "f9ee2846-4850-4128-9165-56081b861d1d",
			"object": "bd8c972b-c71e-41ec-97ce-9255d9bf9af8"
		},
		"dda1b36e-49e9-4537-9754-3e37d584890a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent2",
			"name": "EndEvent2",
			"eventDefinitions": {
				"afd3a498-6c61-4034-9b0f-b68bafb44dbd": {}
			}
		},
		"afd3a498-6c61-4034-9b0f-b68bafb44dbd": {
			"classDefinition": "com.sap.bpm.wfs.TerminateEventDefinition",
			"id": "terminateeventdefinition1"
		},
		"c1c3dee4-f1ab-4579-a2f1-6a26df2b5d08": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 596.5,
			"y": 99.5,
			"width": 35,
			"height": 35,
			"object": "dda1b36e-49e9-4537-9754-3e37d584890a"
		},
		"79b847f2-58e4-48b2-aed9-7301ed61cb20": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "HD1_300_API_BUSINESS_PARTNER",
			"destinationSource": "consumer",
			"httpMethod": "POST",
			"id": "servicetask1",
			"name": "call API"
		},
		"996a2a74-d1a1-46f9-9543-0489ceb90f6e": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 370,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "79b847f2-58e4-48b2-aed9-7301ed61cb20"
		},
		"4be68335-36be-482e-8e2d-8dd1c740005d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "c7e38920-d14b-4155-9c5c-5ceca2875228",
			"targetRef": "79b847f2-58e4-48b2-aed9-7301ed61cb20"
		},
		"a055769d-b6ce-434c-a531-a6e7ceab5942": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "197.5,116 370.5,116",
			"sourceSymbol": "f9ee2846-4850-4128-9165-56081b861d1d",
			"targetSymbol": "996a2a74-d1a1-46f9-9543-0489ceb90f6e",
			"object": "4be68335-36be-482e-8e2d-8dd1c740005d"
		},
		"90ad61f9-b74a-4271-b9d9-92b1112c4fac": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "79b847f2-58e4-48b2-aed9-7301ed61cb20",
			"targetRef": "dda1b36e-49e9-4537-9754-3e37d584890a"
		},
		"9ac33424-e2ae-4a3b-a5c7-ee9eb949386d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "420,116.5 597,116.5",
			"sourceSymbol": "996a2a74-d1a1-46f9-9543-0489ceb90f6e",
			"targetSymbol": "c1c3dee4-f1ab-4579-a2f1-6a26df2b5d08",
			"object": "90ad61f9-b74a-4271-b9d9-92b1112c4fac"
		}
	}
}