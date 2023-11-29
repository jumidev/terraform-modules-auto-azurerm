# azurerm_logic_app_action_http

Manages an HTTP Action within a Logic App Workflow

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the HTTP Action to be created within the Logic App Workflow. Changing this forces a new resource to be created. | 
| **var.logic_app_id** | string | True | -  |  -  | Specifies the ID of the Logic App Workflow. Changing this forces a new resource to be created. | 
| **var.method** | string | True | -  |  `DELETE`, `GET`, `PATCH`, `POST`, `PUT`  | Specifies the HTTP Method which should be used for this HTTP Action. Possible values include `DELETE`, `GET`, `PATCH`, `POST` and `PUT`. | 
| **var.uri** | string | True | -  |  -  | Specifies the URI which will be called when this HTTP Action is triggered. | 
| **var.body** | string | False | -  |  -  | Specifies the HTTP Body that should be sent to the `uri` when this HTTP Action is triggered. | 
| **var.headers** | string | False | -  |  -  | Specifies a Map of Key-Value Pairs that should be sent to the `uri` when this HTTP Action is triggered. | 
| **var.queries** | string | False | -  |  -  | Specifies a Map of Key-Value Pairs that should be sent to the `uri` when this HTTP Action is triggered. | 
| **var.run_after** | string | False | -  |  -  | Specifies the place of the HTTP Action in the Logic App Workflow. If not specified, the HTTP Action is right after the Trigger. A `run_after` block is as defined below. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **logic_app_id** | string  | - | 
| **method** | string  | - | 
| **uri** | string  | - | 
| **body** | string  | - | 
| **headers** | string  | - | 
| **queries** | string  | - | 
| **run_after** | string  | - | 
| **id** | string  | The ID of the HTTP Action within the Logic App Workflow. | 