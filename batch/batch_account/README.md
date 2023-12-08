# azurerm_batch_account

Manages an Azure Batch account.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "batch/batch_account"   
}

inputs = {
   name = "Specifies the name of the Batch account"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  Specifies the name of the Batch account. Only lowercase Alphanumeric characters allowed. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the Batch account. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **identity** | [block](#identity-block-structure) |  -  |  -  |  An `identity` block. | 
| **network_profile** | [block](#network_profile-block-structure) |  -  |  -  |  A `network_profile` block. | 
| **pool_allocation_mode** | string |  `BatchService`  |  `BatchService`, `UserSubscription`  |  Specifies the mode to use for pool allocation. Possible values are `BatchService` or `UserSubscription`. Defaults to `BatchService`. | 
| **public_network_access_enabled** | bool |  `True`  |  -  |  Whether public network access is allowed for this server. Defaults to `true`. | 
| **key_vault_reference** | [block](#key_vault_reference-block-structure) |  -  |  -  |  A `key_vault_reference` block, as defined below, that describes the Azure KeyVault reference to use when deploying the Azure Batch account using the `UserSubscription` pool allocation mode. | 
| **storage_account_id** | string |  -  |  -  |  Specifies the storage account to use for the Batch account. If not specified, Azure Batch will manage the storage. | 
| **storage_account_authentication_mode** | string |  -  |  `StorageKeys`, `BatchAccountManagedIdentity`  |  Specifies the storage account authentication mode. Possible values include `StorageKeys`, `BatchAccountManagedIdentity`. | 
| **storage_account_node_identity** | string |  -  |  -  |  Specifies the user assigned identity for the storage account. | 
| **allowed_authentication_modes** | string |  -  |  `AAD`, `SharedKey`, `TaskAuthenticationToken`  |  Specifies the allowed authentication mode for the Batch account. Possible values include `AAD`, `SharedKey` or `TaskAuthenticationToken`. | 
| **encryption** | [block](#encryption-block-structure) |  -  |  -  |  Specifies if customer managed key encryption should be used to encrypt batch account data. One `encryption` block. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 

### `node_management_access` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `default_action` | string | No | Deny | Specifies the default action for the node management access. Possible values are 'Allow' and 'Deny'. Defaults to 'Deny'. |
| `ip_rule` | [block](#ip_rule-block-structure) | No | - | One or more 'ip_rule' blocks. |

### `ip_rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `ip_range` | string | Yes | - | The CIDR block from which requests will match the rule. |
| `action` | string | No | Allow | Specifies the action of the ip rule. The only possible value is 'Allow'. Defaults to 'Allow'. |

### `key_vault_reference` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `url` | string | Yes | - | The HTTPS URL of the Azure KeyVault to use. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Batch Account. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). |
| `identity_ids` | list | No | - | A list of User Assigned Managed Identity IDs to be assigned to this Batch Account. |

### `account_access` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `default_action` | string | No | Deny | Specifies the default action for the account access. Possible values are 'Allow' and 'Deny'. Defaults to 'Deny'. |
| `ip_rule` | [block](#ip_rule-block-structure) | No | - | One or more 'ip_rule' blocks. |

### `encryption` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `key_vault_key_id` | string | Yes | - | The full URL path to the Azure key vault key id that should be used to encrypt data, as documented [here](https://docs.microsoft.com/azure/batch/batch-customer-managed-key). Both versioned and versionless keys are supported. |

### `network_profile` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `account_access` | [block](#account_access-block-structure) | No | - | An 'account_access' block. |
| `node_management_access` | [block](#node_management_access-block-structure) | No | - | A 'node_management_access' block. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Batch Account. | 
| **identity** | block | No  | An `identity` block. | 
| **primary_access_key** | string | Yes  | The Batch account primary access key. | 
| **secondary_access_key** | string | Yes  | The Batch account secondary access key. | 
| **account_endpoint** | string | No  | The account endpoint used to interact with the Batch service. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
