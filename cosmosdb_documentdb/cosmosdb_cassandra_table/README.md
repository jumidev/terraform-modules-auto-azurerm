# azurerm_cosmosdb_cassandra_table

Manages a Cassandra Table within a Cosmos DB Cassandra Keyspace.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "cosmosdb_documentdb/cosmosdb_cassandra_table"   
}

inputs = {
   name = "Specifies the name of the Cosmos DB Cassandra Table..."   
   # cassandra_keyspace_id → set in component_inputs
   schema = {
      column = "..."      
      partition_key = "..."      
   }
   
}

component_inputs = {
   cassandra_keyspace_id = "path/to/cosmosdb_cassandra_keyspace_component:id"   
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
| **name** | string |  Specifies the name of the Cosmos DB Cassandra Table. Changing this forces a new resource to be created. | 
| **cassandra_keyspace_id** | string |  The ID of the Cosmos DB Cassandra Keyspace to create the table within. Changing this forces a new resource to be created. | 
| **schema** | [block](#schema-block-structure) |  A `schema` block. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **throughput** | string |  -  |  The throughput of Cassandra KeySpace (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. | 
| **default_ttl** | string |  `-1`  |  Time to live of the Cosmos DB Cassandra table. Possible values are at least `-1`. `-1` means the Cassandra table never expires. | 
| **analytical_storage_ttl** | string |  `-1`, `2147483647`, `0`  |  Time to live of the Analytical Storage. Possible values are between `-1` and `2147483647` except `0`. `-1` means the Analytical Storage never expires. Changing this forces a new resource to be created. | 
| **autoscale_settings** | [block](#autoscale_settings-block-structure) |  -  |  An `autoscale_settings` block. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. | 

### `column` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | Name of the column to be created. |
| `type` | string | Yes | - | Type of the column to be created. |

### `autoscale_settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `max_throughput` | string | No | - | The maximum throughput of the Cassandra Table (RU/s). Must be between '1,000' and '1,000,000'. Must be set in increments of '1,000'. Conflicts with 'throughput'. |

### `schema` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `column` | [block](#column-block-structure) | Yes | - | One or more 'column' blocks. |
| `partition_key` | [block](#partition_key-block-structure) | Yes | - | One or more 'partition_key' blocks. |
| `cluster_key` | [block](#cluster_key-block-structure) | No | - | One or more 'cluster_key' blocks. |

### `cluster_key` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | Name of the cluster key to be created. |
| `order_by` | string | Yes | - | Order of the key. Currently supported values are 'Asc' and 'Desc'. |

### `partition_key` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | Name of the column to partition by. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | the ID of the CosmosDB Cassandra Table. | 

Additionally, all variables are provided as outputs.
