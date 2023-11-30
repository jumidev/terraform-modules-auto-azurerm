# azurerm_batch_account

Manages an Azure Batch account.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "batch/batch_account" 
}

inputs = {
   name = "name of batch_account" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name of the Batch account. Only lowercase Alphanumeric characters allowed. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group in which to create the Batch account. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.identity** | block | False | -  |  -  |  An `identity` block. | 
| **var.network_profile** | block | False | -  |  -  |  A `network_profile` block. | 
| **var.pool_allocation_mode** | string | False | `BatchService`  |  `BatchService`, `UserSubscription`  |  Specifies the mode to use for pool allocation. Possible values are `BatchService` or `UserSubscription`. Defaults to `BatchService`. | 
| **var.public_network_access_enabled** | bool | False | `True`  |  -  |  Whether public network access is allowed for this server. Defaults to `true`. | 
| **var.key_vault_reference** | block | False | -  |  -  |  A `key_vault_reference` block, as defined below, that describes the Azure KeyVault reference to use when deploying the Azure Batch account using the `UserSubscription` pool allocation mode. | 
| **var.storage_account_id** | string | False | -  |  -  |  Specifies the storage account to use for the Batch account. If not specified, Azure Batch will manage the storage. | 
| **var.storage_account_authentication_mode** | string | False | -  |  `StorageKeys`, `BatchAccountManagedIdentity`  |  Specifies the storage account authentication mode. Possible values include `StorageKeys`, `BatchAccountManagedIdentity`. | 
| **var.storage_account_node_identity** | string | False | -  |  -  |  Specifies the user assigned identity for the storage account. | 
| **var.allowed_authentication_modes** | string | False | -  |  `AAD`, `SharedKey`, `TaskAuthenticationToken`  |  Specifies the allowed authentication mode for the Batch account. Possible values include `AAD`, `SharedKey` or `TaskAuthenticationToken`. | 
| **var.encryption** | block | False | -  |  -  |  Specifies if customer managed key encryption should be used to encrypt batch account data. One `encryption` block. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Batch Account. | 
| **identity** | block | No  | An `identity` block. | 
| **primary_access_key** | string | No  | The Batch account primary access key. | 
| **secondary_access_key** | string | No  | The Batch account secondary access key. | 
| **account_endpoint** | string | No  | The account endpoint used to interact with the Batch service. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
