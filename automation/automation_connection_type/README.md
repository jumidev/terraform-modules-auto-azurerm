# azurerm_automation_connection_type

Manages anAutomation Connection Type.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Automation Connection Type. Changing this forces a new Automation to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Automation should exist. Changing this forces a new Automation to be created. | 
| **automation_account_name** | string | True | -  |  -  | The name of the automation account in which the Connection is created. Changing this forces a new resource to be created. | 
| **field** | block | True | -  |  -  | One or more `field` blocks. Changing this forces a new Automation to be created. | 
| **is_global** | bool | False | -  |  -  | Whether the connection type is global. Changing this forces a new Automation to be created. | 

