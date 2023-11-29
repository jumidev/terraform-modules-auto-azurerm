# azurerm_cosmosdb_mongo_database

Manages a Mongo Database within a Cosmos DB Account.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the Cosmos DB Mongo Database. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group in which the Cosmos DB Mongo Database is created. Changing this forces a new resource to be created. | 
| **var.account_name** | string | True | The name of the Cosmos DB Mongo Database to create the table within. Changing this forces a new resource to be created. | 
| **var.throughput** | string | False | The throughput of the MongoDB database (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. | 
| **var.autoscale_settings** | block | False | An `autoscale_settings` block. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **account_name** | string  | - | 
| **throughput** | string  | - | 
| **autoscale_settings** | block  | - | 
| **id** | string  | The ID of the Cosmos DB Mongo Database. | 