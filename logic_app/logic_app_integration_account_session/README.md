# azurerm_logic_app_integration_account_session

Manages a Logic App Integration Account Session.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Logic App Integration Account Session. Changing this forces a new Logic App Integration Account Session to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Logic App Integration Account Session should exist. Changing this forces a new Logic App Integration Account Session to be created. | 
| **integration_account_name** | string | True | -  |  -  | The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Session to be created. | 
| **content** | string | True | -  |  -  | The content of the Logic App Integration Account Session. | 

