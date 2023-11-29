# azurerm_batch_account

Manages an Azure Batch account.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Batch account. Only lowercase Alphanumeric characters allowed. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Batch account. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **network_profile** | block | False | -  |  -  | A `network_profile` block. | 
| **pool_allocation_mode** | string | False | `BatchService`  |  `BatchService`, `UserSubscription`  | Specifies the mode to use for pool allocation. Possible values are `BatchService` or `UserSubscription`. Defaults to `BatchService`. | 
| **public_network_access_enabled** | bool | False | `True`  |  -  | Whether public network access is allowed for this server. Defaults to `true`. | 
| **key_vault_reference** | block | False | -  |  -  | A `key_vault_reference` block, as defined below, that describes the Azure KeyVault reference to use when deploying the Azure Batch account using the `UserSubscription` pool allocation mode. | 
| **storage_account_id** | string | False | -  |  -  | Specifies the storage account to use for the Batch account. If not specified, Azure Batch will manage the storage. | 
| **storage_account_authentication_mode** | string | False | -  |  `StorageKeys`, `BatchAccountManagedIdentity`  | Specifies the storage account authentication mode. Possible values include `StorageKeys`, `BatchAccountManagedIdentity`. | 
| **storage_account_node_identity** | string | False | -  |  -  | Specifies the user assigned identity for the storage account. | 
| **allowed_authentication_modes** | string | False | -  |  `AAD`, `SharedKey`, `TaskAuthenticationToken`  | Specifies the allowed authentication mode for the Batch account. Possible values include `AAD`, `SharedKey` or `TaskAuthenticationToken`. | 
| **encryption** | block | False | -  |  -  | Specifies if customer managed key encryption should be used to encrypt batch account data. One `encryption` block. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

