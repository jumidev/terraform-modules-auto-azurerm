# azurerm_logic_app_action_custom

Manages a Custom Action within a Logic App Workflow

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the HTTP Action to be created within the Logic App Workflow. Changing this forces a new resource to be created. | 
| **var.logic_app_id** | string | True | -  |  -  | Specifies the ID of the Logic App Workflow. Changing this forces a new resource to be created. | 
| **var.body** | string | True | -  |  -  | Specifies the JSON Blob defining the Body of this Custom Action. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **logic_app_id** | string  | - | 
| **body** | string  | - | 
| **id** | string  | The ID of the Action within the Logic App Workflow. | 