# azurerm_container_registry

Manages an Azure Container Registry.~> **Note:** All arguments including the access key will be stored in the raw state as plain-text.[Read more about sensitive data in state](/docs/state/sensitive-data.html).

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Container Registry. Only Alphanumeric characters allowed. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Container Registry. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **sku** | string | True | -  |  `Basic`, `Standard`, `Premium`  | The SKU name of the container registry. Possible values are `Basic`, `Standard` and `Premium`. | 
| **admin_enabled** | bool | False | `False`  |  -  | Specifies whether the admin user is enabled. Defaults to `false`. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 
| **georeplications** | block | False | -  |  -  | A `georeplications` block. | 
| **network_rule_set** | block | False | -  |  -  | A `network_rule_set` block. | 
| **public_network_access_enabled** | bool | False | `True`  |  -  | Whether public network access is allowed for the container registry. Defaults to `true`. | 
| **quarantine_policy_enabled** | bool | False | -  |  -  | Boolean value that indicates whether quarantine policy is enabled. | 
| **retention_policy** | block | False | -  |  -  | A `retention_policy` block. | 
| **trust_policy** | block | False | -  |  -  | A `trust_policy` block. | 
| **zone_redundancy_enabled** | bool | False | `False`  |  -  | Whether zone redundancy is enabled for this Container Registry? Changing this forces a new resource to be created. Defaults to `false`. | 
| **export_policy_enabled** | bool | False | `True`  |  -  | Boolean value that indicates whether export policy is enabled. Defaults to `true`. In order to set it to `false`, make sure the `public_network_access_enabled` is also set to `false`. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **encryption** | block | False | -  |  -  | An `encryption` block. | 
| **anonymous_pull_enabled** | bool | False | -  |  -  | Whether allows anonymous (unauthenticated) pull access to this Container Registry? This is only supported on resources with the `Standard` or `Premium` SKU. | 
| **data_endpoint_enabled** | bool | False | -  |  -  | Whether to enable dedicated data endpoints for this Container Registry? This is only supported on resources with the `Premium` SKU. | 
| **network_rule_bypass_option** | string | False | `AzureServices`  |  `None`, `AzureServices`  | Whether to allow trusted Azure services to access a network restricted Container Registry? Possible values are `None` and `AzureServices`. Defaults to `AzureServices`. | 

