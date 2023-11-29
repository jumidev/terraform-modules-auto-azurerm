# azurerm_logic_app_integration_account

Manages a Logic App Integration Account.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Logic App Integration Account. Changing this forces a new Logic App Integration Account to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Logic App Integration Account should exist. Changing this forces a new Logic App Integration Account to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Logic App Integration Account should exist. Changing this forces a new Logic App Integration Account to be created. | 
| **sku_name** | string | True | -  |  -  | The SKU name of the Logic App Integration Account. Possible Values are `Basic`, `Free` and `Standard`. | 
| **integration_service_environment_id** | string | False | -  |  -  | The resource ID of the Integration Service Environment. Changing this forces a new Logic App Integration Account to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Logic App Integration Account. | 

