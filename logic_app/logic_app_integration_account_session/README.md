# azurerm_logic_app_integration_account_session

Manages a Logic App Integration Account Session.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this Logic App Integration Account Session. Changing this forces a new Logic App Integration Account Session to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Logic App Integration Account Session should exist. Changing this forces a new Logic App Integration Account Session to be created. | 
| **var.integration_account_name** | string | True | -  |  -  | The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Session to be created. | 
| **var.content** | string | True | -  |  -  | The content of the Logic App Integration Account Session. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **integration_account_name** | string  | - | 
| **content** | string  | - | 
| **id** | string  | The ID of the Logic App Integration Account Session. | 