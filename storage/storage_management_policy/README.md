# azurerm_storage_management_policy

Manages an Azure Storage Account Management Policy.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.storage_account_id** | string | True | -  |  -  | Specifies the id of the storage account to apply the management policy to. Changing this forces a new resource to be created. | 
| **var.rule** | block | False | -  |  -  | A `rule` block. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **storage_account_id** | string  | - | 
| **rule** | block  | - | 
| **id** | string  | The ID of the Storage Account Management Policy. | 