# azurerm_cosmosdb_gremlin_graph

Manages a Gremlin Graph within a Cosmos DB Account.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "cosmosdb_documentdb/cosmosdb_gremlin_graph"   
}

inputs = {
   name = "Specifies the name of the Cosmos DB Gremlin Graph"   
   resource_group_name = "${resource_group}"   
   account_name = "The name of the CosmosDB Account to create the Gremlin Graph within..."   
   database_name = "The name of the Cosmos DB Graph Database in which the Cosmos DB Gremlin Graph is..."   
   partition_key_path = "Define a partition key"   
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
| **name** | string |  Specifies the name of the Cosmos DB Gremlin Graph. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which the Cosmos DB Gremlin Graph is created. Changing this forces a new resource to be created. | 
| **account_name** | string |  The name of the CosmosDB Account to create the Gremlin Graph within. Changing this forces a new resource to be created. | 
| **database_name** | string |  The name of the Cosmos DB Graph Database in which the Cosmos DB Gremlin Graph is created. Changing this forces a new resource to be created. | 
| **partition_key_path** | string |  Define a partition key. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **partition_key_version** | string |  `1`, `2`  |  Define a partition key version. Changing this forces a new resource to be created. Possible values are `1`and `2`. This should be set to `2` in order to use large partition keys. | 
| **throughput** | string |  -  |  The throughput of the Gremlin graph (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. | 
| **analytical_storage_ttl** | string |  `-1`, `2147483647`, `0`  |  The time to live of Analytical Storage for this Cosmos DB Gremlin Graph. Possible values are between `-1` to `2147483647` not including `0`. If present and the value is set to `-1`, it means never expire. | 
| **default_ttl** | string |  -  |  The default time to live (TTL) of the Gremlin graph. If the value is missing or set to "-1", items don’t expire. | 
| **autoscale_settings** | [block](#autoscale_settings-block-structure) |  -  |  An `autoscale_settings` block. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. Requires `partition_key_path` to be set. | 
| **index_policy** | [block](#index_policy-block-structure) |  -  |  The configuration of the indexing policy. One or more `index_policy` blocks. | 
| **conflict_resolution_policy** | [block](#conflict_resolution_policy-block-structure) |  -  |  A `conflict_resolution_policy` blocks. Changing this forces a new resource to be created. | 
| **unique_key** | [block](#unique_key-block-structure) |  -  |  One or more `unique_key` blocks. Changing this forces a new resource to be created. | 

### `composite_index` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `index` | [block](#index-block-structure) | Yes | - | One or more 'index' blocks. |

### `index` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `path` | string | Yes | - | Path for which the indexing behaviour applies to. |
| `order` | string | Yes | - | Order of the index. Possible values are 'Ascending' or 'Descending'. |

### `autoscale_settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `max_throughput` | string | No | - | The maximum throughput of the Gremlin graph (RU/s). Must be between '1,000' and '1,000,000'. Must be set in increments of '1,000'. Conflicts with 'throughput'. |

### `unique_key` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `paths` | list | Yes | - | A list of paths to use for this unique key. Changing this forces a new resource to be created. |

### `conflict_resolution_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `mode` | string | Yes | - | Indicates the conflict resolution mode. Possible values include: 'LastWriterWins', 'Custom'. |
| `conflict_resolution_path` | string | No | - | The conflict resolution path in the case of LastWriterWins mode. |
| `conflict_resolution_procedure` | string | No | - | The procedure to resolve conflicts in the case of custom mode. |

### `spatial_index` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `path` | string | Yes | - | Path for which the indexing behaviour applies to. According to the service design, all spatial types including 'LineString', 'MultiPolygon', 'Point', and 'Polygon' will be applied to the path. |

### `index_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `automatic` | bool | No | True | Indicates if the indexing policy is automatic. Defaults to 'true'. |
| `indexing_mode` | string | Yes | - | Indicates the indexing mode. Possible values include: 'Consistent', 'Lazy', 'None'. |
| `included_paths` | string | No | - | List of paths to include in the indexing. Required if 'indexing_mode' is 'Consistent' or 'Lazy'. |
| `excluded_paths` | string | No | - | List of paths to exclude from indexing. Required if 'indexing_mode' is 'Consistent' or 'Lazy'. |
| `composite_index` | [block](#composite_index-block-structure) | No | - | One or more 'composite_index' blocks. |
| `spatial_index` | [block](#spatial_index-block-structure) | No | - | One or more 'spatial_index' blocks. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the CosmosDB Gremlin Graph. | 

Additionally, all variables are provided as outputs.
