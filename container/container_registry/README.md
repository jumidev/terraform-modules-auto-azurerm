# azurerm_container_registry



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "container/container_registry"   
}
inputs = {
   name = "Specifies the name of the Container Registry"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   sku = "The SKU name of the container registry"   
}
tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}
```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  Specifies the name of the Container Registry. Only Alphanumeric characters allowed. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the resource group in which to create the Container Registry. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **sku** | string |  `Basic`, `Standard`, `Premium`  |  The SKU name of the container registry. Possible values are `Basic`, `Standard` and `Premium`. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **admin_enabled** | bool |  `False`  |  -  |  Specifies whether the admin user is enabled. Defaults to `false`. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 
| **georeplications** | [block](#georeplications-block-structure) |  -  |  -  |  A `georeplications` block. ~> **NOTE:** The `georeplications` is only supported on new resources with the `Premium` SKU. ~> **NOTE:** The `georeplications` list cannot contain the location where the Container Registry exists. ~> **NOTE:** If more than one `georeplications` block is specified, they are expected to follow the alphabetic order on the `location` property. | 
| **network_rule_set** | [block](#network_rule_set-block-structure) |  -  |  -  |  A `network_rule_set` block. | 
| **public_network_access_enabled** | bool |  `True`  |  -  |  Whether public network access is allowed for the container registry. Defaults to `true`. | 
| **quarantine_policy_enabled** | bool |  -  |  -  |  Boolean value that indicates whether quarantine policy is enabled. | 
| **retention_policy** | [block](#retention_policy-block-structure) |  -  |  -  |  A `retention_policy` block. | 
| **trust_policy** | [block](#trust_policy-block-structure) |  -  |  -  |  A `trust_policy` block. | 
| **zone_redundancy_enabled** | bool |  `False`  |  -  |  Whether zone redundancy is enabled for this Container Registry? Changing this forces a new resource to be created. Defaults to `false`. | 
| **export_policy_enabled** | bool |  `True`  |  -  |  Boolean value that indicates whether export policy is enabled. Defaults to `true`. In order to set it to `false`, make sure the `public_network_access_enabled` is also set to `false`. ~> **NOTE:** `quarantine_policy_enabled`, `retention_policy`, `trust_policy`, `export_policy_enabled` and `zone_redundancy_enabled` are only supported on resources with the `Premium` SKU. | 
| **identity** | [block](#identity-block-structure) |  -  |  -  |  An `identity` block. | 
| **encryption** | [block](#encryption-block-structure) |  -  |  -  |  An `encryption` block. | 
| **anonymous_pull_enabled** | bool |  -  |  -  |  Whether allows anonymous (unauthenticated) pull access to this Container Registry? This is only supported on resources with the `Standard` or `Premium` SKU. | 
| **data_endpoint_enabled** | bool |  -  |  -  |  Whether to enable dedicated data endpoints for this Container Registry? This is only supported on resources with the `Premium` SKU. | 
| **network_rule_bypass_option** | string |  `AzureServices`  |  `None`, `AzureServices`  |  Whether to allow trusted Azure services to access a network restricted Container Registry? Possible values are `None` and `AzureServices`. Defaults to `AzureServices`. | 

### `encryption` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `key_vault_key_id` | string | Yes | - | The ID of the Key Vault Key. |
| `identity_client_id` | string | Yes | - | The client ID of the managed identity associated with the encryption key. ~> **NOTE** The managed identity used in 'encryption' also needs to be part of the 'identity' block under 'identity_ids' |

### `georeplications` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `location` | string | Yes | - | A location where the container registry should be geo-replicated. |
| `regional_endpoint_enabled` | bool | No | - | Whether regional endpoint is enabled for this Container Registry? |
| `zone_redundancy_enabled` | bool | No | False | Whether zone redundancy is enabled for this replication location? Defaults to 'false'. ~> **NOTE:** Changing the 'zone_redundancy_enabled' forces the a underlying replication to be created. |
| `tags` | map | No | - | A mapping of tags to assign to this replication location. |

### `trust_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | No | - | Boolean value that indicates whether the policy is enabled. |

### `ip_rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `action` | string | Yes | - | The behaviour for requests matching this rule. At this time the only supported value is 'Allow' |
| `ip_range` | string | Yes | - | The CIDR block from which requests will match the rule. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Container Registry. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). |
| `identity_ids` | list | No | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this Container Registry. ~> **NOTE:** This is required when 'type' is set to 'UserAssigned' or 'SystemAssigned, UserAssigned'. |

### `retention_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `days` | number | No | 7 | The number of days to retain an untagged manifest after which it gets purged. Default is '7'. |
| `enabled` | bool | No | - | Boolean value that indicates whether the policy is enabled. |

### `network_rule_set` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `default_action` | string | No | Allow | The behaviour for requests matching no rules. Either 'Allow' or 'Deny'. Defaults to 'Allow' |
| `ip_rule` | [block](#ip_rule-block-structure) | No | - | One or more 'ip_rule' blocks. ~> **NOTE:** 'network_rule_set' is only supported with the 'Premium' SKU at this time. ~> **NOTE:** Azure automatically configures Network Rules - to remove these you'll need to specify an 'network_rule_set' block with 'default_action' set to 'Deny'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Container Registry. | 
| **login_server** | string | No  | The URL that can be used to log into the container registry. | 
| **admin_username** | string | No  | The Username associated with the Container Registry Admin account - if the admin account is enabled. | 
| **admin_password** | string | No  | The Password associated with the Container Registry Admin account - if the admin account is enabled. | 
| **identity** | block | No  | An `identity` block. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. -> You can access the Principal ID via `azurerm_container_registry.example.identity[0].principal_id` and the Tenant ID via `azurerm_container_registry.example.identity[0].tenant_id` | 

Additionally, all variables are provided as outputs.
