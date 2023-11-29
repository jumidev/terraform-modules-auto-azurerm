# azurerm_storage_management_policy

Manages an Azure Storage Account Management Policy.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **storage_account_id** | string | True | -  |  -  | Specifies the id of the storage account to apply the management policy to. Changing this forces a new resource to be created. | 
| **rule** | block | False | -  |  -  | A `rule` block. | 

