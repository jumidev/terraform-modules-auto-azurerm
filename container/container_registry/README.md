# azurerm_container_registry

Manages an Azure Container Registry.~> **Note:** All arguments including the access key will be stored in the raw state as plain-text.[Read more about sensitive data in state](/docs/state/sensitive-data.html).

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the Container Registry. Only Alphanumeric characters allowed. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Container Registry. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.sku** | string | True | -  |  `Basic`, `Standard`, `Premium`  | The SKU name of the container registry. Possible values are `Basic`, `Standard` and `Premium`. | 
| **var.admin_enabled** | bool | False | `False`  |  -  | Specifies whether the admin user is enabled. Defaults to `false`. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 
| **var.georeplications** | block | False | -  |  -  | A `georeplications` block. | 
| **var.network_rule_set** | block | False | -  |  -  | A `network_rule_set` block. | 
| **var.public_network_access_enabled** | bool | False | `True`  |  -  | Whether public network access is allowed for the container registry. Defaults to `true`. | 
| **var.quarantine_policy_enabled** | bool | False | -  |  -  | Boolean value that indicates whether quarantine policy is enabled. | 
| **var.retention_policy** | block | False | -  |  -  | A `retention_policy` block. | 
| **var.trust_policy** | block | False | -  |  -  | A `trust_policy` block. | 
| **var.zone_redundancy_enabled** | bool | False | `False`  |  -  | Whether zone redundancy is enabled for this Container Registry? Changing this forces a new resource to be created. Defaults to `false`. | 
| **var.export_policy_enabled** | bool | False | `True`  |  -  | Boolean value that indicates whether export policy is enabled. Defaults to `true`. In order to set it to `false`, make sure the `public_network_access_enabled` is also set to `false`. | 
| **var.identity** | block | False | -  |  -  | An `identity` block. | 
| **var.encryption** | block | False | -  |  -  | An `encryption` block. | 
| **var.anonymous_pull_enabled** | bool | False | -  |  -  | Whether allows anonymous (unauthenticated) pull access to this Container Registry? This is only supported on resources with the `Standard` or `Premium` SKU. | 
| **var.data_endpoint_enabled** | bool | False | -  |  -  | Whether to enable dedicated data endpoints for this Container Registry? This is only supported on resources with the `Premium` SKU. | 
| **var.network_rule_bypass_option** | string | False | `AzureServices`  |  `None`, `AzureServices`  | Whether to allow trusted Azure services to access a network restricted Container Registry? Possible values are `None` and `AzureServices`. Defaults to `AzureServices`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **sku** | string  | - | 
| **admin_enabled** | bool  | - | 
| **tags** | map  | - | 
| **georeplications** | block  | - | 
| **network_rule_set** | block  | - | 
| **public_network_access_enabled** | bool  | - | 
| **quarantine_policy_enabled** | bool  | - | 
| **retention_policy** | block  | - | 
| **trust_policy** | block  | - | 
| **zone_redundancy_enabled** | bool  | - | 
| **export_policy_enabled** | bool  | - | 
| **identity** | block  | - | 
| **encryption** | block  | - | 
| **anonymous_pull_enabled** | bool  | - | 
| **data_endpoint_enabled** | bool  | - | 
| **network_rule_bypass_option** | string  | - | 
| **id** | string  | The ID of the Container Registry. | 
| **login_server** | string  | The URL that can be used to log into the container registry. | 
| **admin_username** | string  | The Username associated with the Container Registry Admin account - if the admin account is enabled. | 
| **admin_password** | string  | The Password associated with the Container Registry Admin account - if the admin account is enabled. | 
| **identity** | block  | An `identity` block. | 
| **principal_id** | string  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string  | The Tenant ID associated with this Managed Service Identity. | 