# azurerm_logic_app_trigger_http_request

Manages a HTTP Request Trigger within a Logic App Workflow

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of the HTTP Request Trigger to be created within the Logic App Workflow. Changing this forces a new resource to be created. | 
| **var.logic_app_id** | string | True | -  |  Specifies the ID of the Logic App Workflow. Changing this forces a new resource to be created. | 
| **var.schema** | string | True | -  |  A JSON Blob defining the Schema of the incoming request. This needs to be valid JSON. | 
| **var.method** | string | False | `DELETE`, `GET`, `PATCH`, `POST`, `PUT`  |  Specifies the HTTP Method which the request be using. Possible values include `DELETE`, `GET`, `PATCH`, `POST` or `PUT`. | 
| **var.relative_path** | string | False | -  |  Specifies the Relative Path used for this Request. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **logic_app_id** | string  | - | 
| **schema** | string  | - | 
| **method** | string  | - | 
| **relative_path** | string  | - | 
| **id** | string  | The ID of the HTTP Request Trigger within the Logic App Workflow. | 
| **callback_url** | string  | The URL for the workflow trigger | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "logic_app/logic_app_trigger_http_request" 
}

inputs = {
   name = "name of logic_app_trigger_http_request" 
   logic_app_id = "logic_app_id of logic_app_trigger_http_request" 
   schema = "schema of logic_app_trigger_http_request" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```