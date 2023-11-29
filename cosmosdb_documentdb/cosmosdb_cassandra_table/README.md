# azurerm_cosmosdb_cassandra_table

Manages a Cassandra Table within a Cosmos DB Cassandra Keyspace.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Cosmos DB Cassandra Table. Changing this forces a new resource to be created. | 
| **cassandra_keyspace_id** | string | True | -  |  -  | The ID of the Cosmos DB Cassandra Keyspace to create the table within. Changing this forces a new resource to be created. | 
| **schema** | block | True | -  |  -  | A `schema` block. | 
| **throughput** | string | False | -  |  -  | The throughput of Cassandra KeySpace (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. | 
| **default_ttl** | string | False | -  |  `-1`  | Time to live of the Cosmos DB Cassandra table. Possible values are at least `-1`. `-1` means the Cassandra table never expires. | 
| **analytical_storage_ttl** | string | False | -  |  `-1`, `2147483647`, `0`  | Time to live of the Analytical Storage. Possible values are between `-1` and `2147483647` except `0`. `-1` means the Analytical Storage never expires. Changing this forces a new resource to be created. | 
| **autoscale_settings** | block | False | -  |  -  | An `autoscale_settings` block. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. | 

