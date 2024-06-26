# azurerm_cosmosdb_sql_container



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "cosmosdb_documentdb/cosmosdb_sql_container"   
}
inputs = {
   name = "Specifies the name of the Cosmos DB SQL Container"   
   resource_group_name = "${resource_group}"   
   # account_name → set in component_inputs
   # database_name → set in component_inputs
   partition_key_paths = "A list of partition key paths"   
}
component_inputs = {
   account_name = "path/to/cosmosdb_account_component:name"   
   database_name = "path/to/cosmosdb_sql_database_component:name"   
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
| **name** | string |  Specifies the name of the Cosmos DB SQL Container. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which the Cosmos DB SQL Container is created. Changing this forces a new resource to be created. | 
| **account_name** | string |  The name of the Cosmos DB Account to create the container within. Changing this forces a new resource to be created. | 
| **database_name** | string |  The name of the Cosmos DB SQL Database to create the container within. Changing this forces a new resource to be created. | 
| **partition_key_paths** | list |  A list of partition key paths. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **partition_key_kind** | string |  `Hash`  |  `Hash`, `MultiHash`  |  Define a partition key kind. Possible values are `Hash` and `MultiHash`. Defaults to `Hash`. Changing this forces a new resource to be created. | 
| **partition_key_version** | string |  -  |  `1`, `2`  |  Define a partition key version. Changing this forces a new resource to be created. Possible values are `1`and `2`. This should be set to `2` in order to use large partition keys. | 
| **unique_keys** | [block](#unique_key-block-structure) |  -  |  -  |  One or more `unique_key` blocks. Changing this forces a new resource to be created. | 
| **throughput** | string |  -  |  -  |  The throughput of SQL container (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon container creation otherwise it cannot be updated without a manual terraform destroy-apply. | 
| **autoscale_settings** | [block](#autoscale_settings-block-structure) |  -  |  -  |  An `autoscale_settings` block. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. Requires `partition_key_path` to be set. ~> **Note:** Switching between autoscale and manual throughput is not supported via Terraform and must be completed via the Azure Portal and refreshed. | 
| **indexing_policy** | [block](#indexing_policy-block-structure) |  -  |  -  |  An `indexing_policy` block. | 
| **default_ttl** | string |  -  |  -  |  The default time to live of SQL container. If missing, items are not expired automatically. If present and the value is set to `-1`, it is equal to infinity, and items don't expire by default. If present and the value is set to some number `n` - items will expire `n` seconds after their last modified time. | 
| **analytical_storage_ttl** | string |  -  |  -  |  The default time to live of Analytical Storage for this SQL container. If present and the value is set to `-1`, it is equal to infinity, and items don't expire by default. If present and the value is set to some number `n` - items will expire `n` seconds after their last modified time. | 
| **conflict_resolution_policys** | [block](#conflict_resolution_policy-block-structure) |  -  |  -  |  A `conflict_resolution_policy` blocks. Changing this forces a new resource to be created. | 

### `unique_key` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `paths` | list | Yes | - | A list of paths to use for this unique key. Changing this forces a new resource to be created. |

### `excluded_path` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `path` | string | Yes | - | Path that is excluded from indexing. |

### `indexing_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `indexing_mode` | string | No | consistent | Indicates the indexing mode. Possible values include: 'consistent' and 'none'. Defaults to 'consistent'. |
| `included_path` | [block](#included_path-block-structure) | No | - | One or more 'included_path' blocks. Either 'included_path' or 'excluded_path' must contain the 'path' '/*' |
| `excluded_path` | [block](#excluded_path-block-structure) | No | - | One or more 'excluded_path' blocks. Either 'included_path' or 'excluded_path' must contain the 'path' '/*' |
| `composite_index` | [block](#composite_index-block-structure) | No | - | One or more 'composite_index' blocks. |
| `spatial_index` | [block](#spatial_index-block-structure) | No | - | One or more 'spatial_index' blocks. |

### `autoscale_settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `max_throughput` | string | No | - | The maximum throughput of the SQL container (RU/s). Must be between '1,000' and '1,000,000'. Must be set in increments of '1,000'. Conflicts with 'throughput'. |

### `conflict_resolution_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `mode` | string | Yes | - | Indicates the conflict resolution mode. Possible values include: 'LastWriterWins', 'Custom'. |
| `conflict_resolution_path` | string | No | - | The conflict resolution path in the case of 'LastWriterWins' mode. |
| `conflict_resolution_procedure` | string | No | - | The procedure to resolve conflicts in the case of 'Custom' mode. |

### `included_path` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `path` | string | Yes | - | Path for which the indexing behaviour applies to. |

### `index` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `path` | string | Yes | - | Path for which the indexing behaviour applies to. |
| `order` | string | Yes | - | Order of the index. Possible values are 'Ascending' or 'Descending'. |

### `spatial_index` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `path` | string | Yes | - | Path for which the indexing behaviour applies to. According to the service design, all spatial types including 'LineString', 'MultiPolygon', 'Point', and 'Polygon' will be applied to the path. |

### `composite_index` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `index` | [block](#index-block-structure) | Yes | - | One or more 'index' blocks. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **conflict_resolution_procedure** | string | No  | The procedure to resolve conflicts in the case of `Custom` mode. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the CosmosDB SQL Container. | 
| **types** | string | No  | A set of spatial types of the path. | 

Additionally, all variables are provided as outputs.
