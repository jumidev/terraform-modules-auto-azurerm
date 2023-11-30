# azurerm_cosmosdb_cassandra_table

Manages a Cassandra Table within a Cosmos DB Cassandra Keyspace.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cosmosdb_documentdb/cosmosdb_cassandra_table" 
}

inputs = {
   name = "name of cosmosdb_cassandra_table" 
   cassandra_keyspace_id = "cassandra_keyspace_id of cosmosdb_cassandra_table" 
   schema = "schema of cosmosdb_cassandra_table" 
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
| **var.name** | string | True | -  |  Specifies the name of the Cosmos DB Cassandra Table. Changing this forces a new resource to be created. | 
| **var.cassandra_keyspace_id** | string | True | -  |  The ID of the Cosmos DB Cassandra Keyspace to create the table within. Changing this forces a new resource to be created. | 
| **var.schema** | block | True | -  |  A `schema` block. | 
| **var.throughput** | string | False | -  |  The throughput of Cassandra KeySpace (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. | 
| **var.default_ttl** | string | False | `-1`  |  Time to live of the Cosmos DB Cassandra table. Possible values are at least `-1`. `-1` means the Cassandra table never expires. | 
| **var.analytical_storage_ttl** | string | False | `-1`, `2147483647`, `0`  |  Time to live of the Analytical Storage. Possible values are between `-1` and `2147483647` except `0`. `-1` means the Analytical Storage never expires. Changing this forces a new resource to be created. | 
| **var.autoscale_settings** | block | False | -  |  An `autoscale_settings` block. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. | 

### `schema` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `column` | block | Yes | - | One or more 'column' blocks. |
| `partition_key` | block | Yes | - | One or more 'partition_key' blocks. |
| `cluster_key` | block | No | - | One or more 'cluster_key' blocks. |

### `autoscale_settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `max_throughput` | string | No | - | The maximum throughput of the Cassandra Table (RU/s). Must be between '1,000' and '1,000,000'. Must be set in increments of '1,000'. Conflicts with 'throughput'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | the ID of the CosmosDB Cassandra Table. | 

Additionally, all variables are provided as outputs.
