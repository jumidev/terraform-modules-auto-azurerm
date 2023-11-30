# azurerm_container_registry

Manages an Azure Container Registry.~> **Note:** All arguments including the access key will be stored in the raw state as plain-text.[Read more about sensitive data in state](/docs/state/sensitive-data.html).

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "container/container_registry" 
}

inputs = {
   name = "name of container_registry" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   sku = "sku of container_registry" 
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
| **var.name** | string | True | -  |  -  |  Specifies the name of the Container Registry. Only Alphanumeric characters allowed. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group in which to create the Container Registry. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.sku** | string | True | -  |  `Basic`, `Standard`, `Premium`  |  The SKU name of the container registry. Possible values are `Basic`, `Standard` and `Premium`. | 
| **var.admin_enabled** | bool | False | `False`  |  -  |  Specifies whether the admin user is enabled. Defaults to `false`. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 
| **var.georeplications** | block | False | -  |  -  |  A `georeplications` block. | 
| **var.network_rule_set** | block | False | -  |  -  |  A `network_rule_set` block. | 
| **var.public_network_access_enabled** | bool | False | `True`  |  -  |  Whether public network access is allowed for the container registry. Defaults to `true`. | 
| **var.quarantine_policy_enabled** | bool | False | -  |  -  |  Boolean value that indicates whether quarantine policy is enabled. | 
| **var.retention_policy** | block | False | -  |  -  |  A `retention_policy` block. | 
| **var.trust_policy** | block | False | -  |  -  |  A `trust_policy` block. | 
| **var.zone_redundancy_enabled** | bool | False | `False`  |  -  |  Whether zone redundancy is enabled for this Container Registry? Changing this forces a new resource to be created. Defaults to `false`. | 
| **var.export_policy_enabled** | bool | False | `True`  |  -  |  Boolean value that indicates whether export policy is enabled. Defaults to `true`. In order to set it to `false`, make sure the `public_network_access_enabled` is also set to `false`. | 
| **var.identity** | block | False | -  |  -  |  An `identity` block. | 
| **var.encryption** | block | False | -  |  -  |  An `encryption` block. | 
| **var.anonymous_pull_enabled** | bool | False | -  |  -  |  Whether allows anonymous (unauthenticated) pull access to this Container Registry? This is only supported on resources with the `Standard` or `Premium` SKU. | 
| **var.data_endpoint_enabled** | bool | False | -  |  -  |  Whether to enable dedicated data endpoints for this Container Registry? This is only supported on resources with the `Premium` SKU. | 
| **var.network_rule_bypass_option** | string | False | `AzureServices`  |  `None`, `AzureServices`  |  Whether to allow trusted Azure services to access a network restricted Container Registry? Possible values are `None` and `AzureServices`. Defaults to `AzureServices`. | 

### `georeplications` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `location` | string | Yes | - | A location where the container registry should be geo-replicated. |
| `regional_endpoint_enabled` | bool | No | - | Whether regional endpoint is enabled for this Container Registry? |
| `zone_redundancy_enabled` | bool | No | False | Whether zone redundancy is enabled for this replication location? Defaults to 'false'. |
| `tags` | map | No | - | A mapping of tags to assign to this replication location. |

### `network_rule_set` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `default_action` | string | No | Allow | The behaviour for requests matching no rules. Either 'Allow' or 'Deny'. Defaults to 'Allow' |
| `ip_rule` | block | No | - | One or more 'ip_rule' blocks. |
| `virtual_network` | block | No | - | One or more 'virtual_network' blocks. |

### `retention_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `days` | int | No | 7 | The number of days to retain an untagged manifest after which it gets purged. Default is '7'. |
| `enabled` | bool | No | - | Boolean value that indicates whether the policy is enabled. |

### `trust_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | No | - | Boolean value that indicates whether the policy is enabled. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Container Registry. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). |
| `identity_ids` | string | No | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this Container Registry. |

### `encryption` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | No | - | Boolean value that indicates whether encryption is enabled. |
| `key_vault_key_id` | string | Yes | - | The ID of the Key Vault Key. |
| `identity_client_id` | string | Yes | - | The client ID of the managed identity associated with the encryption key. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Container Registry. | 
| **login_server** | string | No  | The URL that can be used to log into the container registry. | 
| **admin_username** | string | No  | The Username associated with the Container Registry Admin account - if the admin account is enabled. | 
| **admin_password** | string | No  | The Password associated with the Container Registry Admin account - if the admin account is enabled. | 
| **identity** | block | No  | An `identity` block. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
