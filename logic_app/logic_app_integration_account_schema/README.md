# azurerm_logic_app_integration_account_schema

Manages a Logic App Integration Account Schema.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Logic App Integration Account Schema. Changing this forces a new Logic App Integration Account Schema to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Logic App Integration Account Schema should exist. Changing this forces a new Logic App Integration Account Schema to be created. | 
| **integration_account_name** | string | True | -  |  -  | The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Schema to be created. | 
| **content** | string | True | -  |  -  | The content of the Logic App Integration Account Schema. | 
| **file_name** | string | False | -  |  -  | The file name of the Logic App Integration Account Schema. | 
| **metadata** | string | False | -  |  -  | The metadata of the Logic App Integration Account Schema. | 

