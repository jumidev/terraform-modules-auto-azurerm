# azurerm_cosmosdb_cassandra_table

Manages a Cassandra Table within a Cosmos DB Cassandra Keyspace.

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



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **cassandra_keyspace_id** | string  | - | 
| **schema** | block  | - | 
| **throughput** | string  | - | 
| **default_ttl** | string  | - | 
| **analytical_storage_ttl** | string  | - | 
| **autoscale_settings** | block  | - | 
| **id** | string  | the ID of the CosmosDB Cassandra Table. | 

## Example minimal hclt

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