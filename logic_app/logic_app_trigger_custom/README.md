# azurerm_logic_app_trigger_custom

Manages a Custom Trigger within a Logic App Workflow

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "logic_app/logic_app_trigger_custom"   
}

inputs = {
   name = "Specifies the name of the HTTP Trigger to be created within the Logic App Workfl..."   
   # logic_app_id → set in component_inputs
   body = "Specifies the JSON Blob defining the Body of this Custom Trigger..."   
}

component_inputs = {
   logic_app_id = "path/to/logic_app_workflow_component:id"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  Specifies the name of the HTTP Trigger to be created within the Logic App Workflow. Changing this forces a new resource to be created. | 
| **logic_app_id** | string |  Specifies the ID of the Logic App Workflow. Changing this forces a new resource to be created. | 
| **body** | string |  Specifies the JSON Blob defining the Body of this Custom Trigger. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Trigger within the Logic App Workflow. | 

Additionally, all variables are provided as outputs.
