# azurerm_logic_app_integration_account_schema

Manages a Logic App Integration Account Schema.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this Logic App Integration Account Schema. Changing this forces a new Logic App Integration Account Schema to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Logic App Integration Account Schema should exist. Changing this forces a new Logic App Integration Account Schema to be created. | 
| **var.integration_account_name** | string | True | -  |  -  | The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Schema to be created. | 
| **var.content** | string | True | -  |  -  | The content of the Logic App Integration Account Schema. | 
| **var.file_name** | string | False | -  |  -  | The file name of the Logic App Integration Account Schema. | 
| **var.metadata** | string | False | -  |  -  | The metadata of the Logic App Integration Account Schema. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **integration_account_name** | string  | - | 
| **content** | string  | - | 
| **file_name** | string  | - | 
| **metadata** | string  | - | 
| **id** | string  | The ID of the Logic App Integration Account Schema. | 