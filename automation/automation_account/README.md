# azurerm_automation_account

Manages a Automation Account.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Automation Account. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which the Automation Account is created. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **sku_name** | string | True | -  |  `Basic`, `Free`  | The SKU of the account. Possible values are `Basic` and `Free`. | 
| **local_authentication_enabled** | bool | False | `True`  |  -  | Whether requests using non-AAD authentication are blocked. Defaults to `true`. | 
| **public_network_access_enabled** | bool | False | `True`  |  -  | Whether public network access is allowed for the automation account. Defaults to `true`. | 

