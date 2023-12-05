# azurerm_logic_app_action_http

Manages an HTTP Action within a Logic App Workflow

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "logic_app/logic_app_action_http"   
}

inputs = {
   name = "Specifies the name of the HTTP Action to be created within the Logic App Workflo..."   
   logic_app_id = "Specifies the ID of the Logic App Workflow"   
   method = "Specifies the HTTP Method which should be used for this HTTP Action..."   
   uri = "Specifies the URI which will be called when this HTTP Action is triggered..."   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  Specifies the name of the HTTP Action to be created within the Logic App Workflow. Changing this forces a new resource to be created. | 
| **logic_app_id** | string |  -  |  Specifies the ID of the Logic App Workflow. Changing this forces a new resource to be created. | 
| **method** | string |  `DELETE`, `GET`, `PATCH`, `POST`, `PUT`  |  Specifies the HTTP Method which should be used for this HTTP Action. Possible values include `DELETE`, `GET`, `PATCH`, `POST` and `PUT`. | 
| **uri** | string |  -  |  Specifies the URI which will be called when this HTTP Action is triggered. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **body** | string |  Specifies the HTTP Body that should be sent to the `uri` when this HTTP Action is triggered. | 
| **headers** | string |  Specifies a Map of Key-Value Pairs that should be sent to the `uri` when this HTTP Action is triggered. | 
| **queries** | string |  Specifies a Map of Key-Value Pairs that should be sent to the `uri` when this HTTP Action is triggered. | 
| **run_after** | string |  Specifies the place of the HTTP Action in the Logic App Workflow. If not specified, the HTTP Action is right after the Trigger. A `run_after` block is as defined below. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the HTTP Action within the Logic App Workflow. | 

Additionally, all variables are provided as outputs.
