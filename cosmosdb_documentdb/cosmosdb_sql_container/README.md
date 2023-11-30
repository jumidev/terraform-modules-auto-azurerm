# azurerm_cosmosdb_sql_container

Manages a SQL Container within a Cosmos DB Account.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cosmosdb_documentdb/cosmosdb_sql_container" 
}

inputs = {
   name = "name of cosmosdb_sql_container" 
   resource_group_name = "${resource_group}" 
   account_name = "account_name of cosmosdb_sql_container" 
   database_name = "database_name of cosmosdb_sql_container" 
   partition_key_path = "partition_key_path of cosmosdb_sql_container" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of the Cosmos DB SQL Container. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the resource group in which the Cosmos DB SQL Container is created. Changing this forces a new resource to be created. | 
| **var.account_name** | string | True | -  |  The name of the Cosmos DB Account to create the container within. Changing this forces a new resource to be created. | 
| **var.database_name** | string | True | -  |  The name of the Cosmos DB SQL Database to create the container within. Changing this forces a new resource to be created. | 
| **var.partition_key_path** | string | True | -  |  Define a partition key. Changing this forces a new resource to be created. | 
| **var.partition_key_version** | string | False | `1`, `2`  |  Define a partition key version. Changing this forces a new resource to be created. Possible values are `1`and `2`. This should be set to `2` in order to use large partition keys. | 
| **var.unique_key** | block | False | -  |  One or more `unique_key` blocks. Changing this forces a new resource to be created. | 
| **var.throughput** | string | False | -  |  The throughput of SQL container (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon container creation otherwise it cannot be updated without a manual terraform destroy-apply. | 
| **var.autoscale_settings** | block | False | -  |  An `autoscale_settings` block. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. Requires `partition_key_path` to be set. | 
| **var.indexing_policy** | block | False | -  |  An `indexing_policy` block. | 
| **var.default_ttl** | string | False | -  |  The default time to live of SQL container. If missing, items are not expired automatically. If present and the value is set to `-1`, it is equal to infinity, and items don’t expire by default. If present and the value is set to some number `n` – items will expire `n` seconds after their last modified time. | 
| **var.analytical_storage_ttl** | string | False | -  |  The default time to live of Analytical Storage for this SQL container. If present and the value is set to `-1`, it is equal to infinity, and items don’t expire by default. If present and the value is set to some number `n` – items will expire `n` seconds after their last modified time. | 
| **var.conflict_resolution_policy** | block | False | -  |  A `conflict_resolution_policy` blocks. Changing this forces a new resource to be created. | 

### `unique_key` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `paths` | list | Yes | - | A list of paths to use for this unique key. Changing this forces a new resource to be created. |

### `autoscale_settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `max_throughput` | string | No | - | The maximum throughput of the SQL container (RU/s). Must be between '1,000' and '1,000,000'. Must be set in increments of '1,000'. Conflicts with 'throughput'. |

### `indexing_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `indexing_mode` | string | No | consistent | Indicates the indexing mode. Possible values include: 'consistent' and 'none'. Defaults to 'consistent'. |
| `included_path` | block | No | - | One or more 'included_path' blocks. Either 'included_path' or 'excluded_path' must contain the 'path' '/*' |
| `excluded_path` | block | No | - | One or more 'excluded_path' blocks. Either 'included_path' or 'excluded_path' must contain the 'path' '/*' |
| `composite_index` | block | No | - | One or more 'composite_index' blocks. |
| `spatial_index` | block | No | - | One or more 'spatial_index' blocks. |

### `conflict_resolution_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `mode` | string | Yes | - | Indicates the conflict resolution mode. Possible values include: 'LastWriterWins', 'Custom'. |
| `conflict_resolution_path` | string | No | - | The conflict resolution path in the case of 'LastWriterWins' mode. |
| `conflict_resolution_procedure` | string | No | - | The procedure to resolve conflicts in the case of 'Custom' mode. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the CosmosDB SQL Container. | 
| **types** | string | No  | A set of spatial types of the path. | 

Additionally, all variables are provided as outputs.
