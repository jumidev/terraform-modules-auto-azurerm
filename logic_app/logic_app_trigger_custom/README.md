# azurerm_logic_app_trigger_custom

Manages a Custom Trigger within a Logic App Workflow

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the HTTP Trigger to be created within the Logic App Workflow. Changing this forces a new resource to be created. | 
| **logic_app_id** | string | True | -  |  -  | Specifies the ID of the Logic App Workflow. Changing this forces a new resource to be created. | 
| **body** | string | True | -  |  -  | Specifies the JSON Blob defining the Body of this Custom Trigger. | 

