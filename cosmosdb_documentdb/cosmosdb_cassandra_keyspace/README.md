# azurerm_cosmosdb_cassandra_keyspace

Manages a Cassandra KeySpace within a Cosmos DB Account.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the Cosmos DB Cassandra KeySpace. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group in which the Cosmos DB Cassandra KeySpace is created. Changing this forces a new resource to be created. | 
| **var.account_name** | string | True | The name of the Cosmos DB Cassandra KeySpace to create the table within. Changing this forces a new resource to be created. | 
| **var.throughput** | string | False | The throughput of Cassandra KeySpace (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. | 
| **var.autoscale_settings** | block | False | An `autoscale_settings` block. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **account_name** | string  | - | 
| **throughput** | string  | - | 
| **autoscale_settings** | block  | - | 
| **id** | string  | the ID of the CosmosDB Cassandra KeySpace. | 