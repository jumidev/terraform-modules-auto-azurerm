# azurerm_media_services_account

Manages a Media Services Account.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "media/media_services_account"   
}

inputs = {
   name = "Specifies the name of the Media Services Account"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   storage_account = {
      this_storage_account = {
      }
      
   }
   
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
| **name** | string |  Specifies the name of the Media Services Account. Only lowercase Alphanumeric characters allowed. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the Media Services Account. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **storage_account** | [block](#storage_account-block-structure) |  One or more `storage_account` blocks. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **encryption** | [block](#encryption-block-structure) |  -  |  An `encryption` block. | 
| **identity** | [block](#identity-block-structure) |  -  |  An `identity` block. | 
| **public_network_access_enabled** | bool |  `True`  |  Whether public network access is allowed for this server. Defaults to `true`. | 
| **storage_authentication_type** | string |  -  |  Specifies the storage authentication type. Possible value is `ManagedIdentity` or `System`. | 
| **key_delivery_access_control** | [block](#key_delivery_access_control-block-structure) |  -  |  A `key_delivery_access_control` block. | 
| **tags** | map |  -  |  A mapping of tags assigned to the resource. | 

### `storage_account` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `is_primary` | bool | No | False | Specifies whether the storage account should be the primary account or not. Defaults to 'false'. |
| `managed_identity` | [block](#managed_identity-block-structure) | No | - | A 'managed_identity' block. |

### `encryption` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | No | SystemKey | Specifies the type of key used to encrypt the account data. Possible values are 'SystemKey' and 'CustomerKey'. Defaults to 'SystemKey'. |
| `key_vault_key_identifier` | string | No | - | Specifies the URI of the Key Vault Key used to encrypt data. The key may either be versioned (for example https://vault/keys/mykey/version1) or reference a key without a version (for example https://vault/keys/mykey). |
| `managed_identity` | [block](#managed_identity-block-structure) | No | - | A 'managed_identity' block. |

### `managed_identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `user_assigned_identity_id` | string | No | - | The ID of the User Assigned Identity. This value can only be set when 'use_system_assigned_identity' is 'false' |
| `use_system_assigned_identity` | bool | No | - | Whether to use System Assigned Identity. Possible Values are 'true' and 'false'. |

### `key_delivery_access_control` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `default_action` | string | No | - | The Default Action to use when no rules match from 'ip_allow_list'. Possible values are 'Allow' and 'Deny'. |
| `ip_allow_list` | list | No | - | One or more IP Addresses, or CIDR Blocks which should be able to access the Key Delivery. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Media Services Account. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). |
| `identity_ids` | string | No | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this Media Services Account. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Media Services Account. | 
| **identity** | block | No  | An `identity` block. | 
| **current_key_identifier** | string | No  | The current key used to encrypt the Media Services Account, including the key version. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
