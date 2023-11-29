# azurerm_batch_application

Manages Azure Batch Application instance.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name of the application. This must be unique within the account. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group that contains the Batch account. Changing this forces a new resource to be created. | 
| **var.account_name** | string | True | -  |  -  | The name of the Batch account. Changing this forces a new resource to be created. | 
| **var.allow_updates** | bool | False | `True`  |  -  | A value indicating whether packages within the application may be overwritten using the same version string. Defaults to `true`. | 
| **var.default_version** | string | False | -  |  -  | The package to use if a client requests the application but does not specify a version. This property can only be set to the name of an existing package. | 
| **var.display_name** | string | False | -  |  -  | The display name for the application. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **account_name** | string  | - | 
| **allow_updates** | bool  | - | 
| **default_version** | string  | - | 
| **display_name** | string  | - | 
| **id** | string  | The ID of the Batch Application. | 