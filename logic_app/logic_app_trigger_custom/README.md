# azurerm_logic_app_trigger_custom

Manages a Custom Trigger within a Logic App Workflow

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "logic_app/logic_app_trigger_custom" 
}

inputs = {
   name = "name of logic_app_trigger_custom" 
   logic_app_id = "logic_app_id of logic_app_trigger_custom" 
   body = "body of logic_app_trigger_custom" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the HTTP Trigger to be created within the Logic App Workflow. Changing this forces a new resource to be created. | 
| **var.logic_app_id** | string | True | Specifies the ID of the Logic App Workflow. Changing this forces a new resource to be created. | 
| **var.body** | string | True | Specifies the JSON Blob defining the Body of this Custom Trigger. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Trigger within the Logic App Workflow. | 

Additionally, all variables are provided as outputs.
