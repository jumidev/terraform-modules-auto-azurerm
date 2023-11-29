# azurerm_cosmosdb_sql_dedicated_gateway

Manages a SQL Dedicated Gateway within a Cosmos DB Account.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.cosmosdb_account_id** | string | True | -  |  The resource ID of the CosmosDB Account. Changing this forces a new resource to be created. | 
| **var.instance_size** | string | True | `Cosmos.D4s`, `Cosmos.D8s`, `Cosmos.D16s`  |  The instance size for the CosmosDB SQL Dedicated Gateway. Changing this forces a new resource to be created. Possible values are `Cosmos.D4s`, `Cosmos.D8s` and `Cosmos.D16s`. | 
| **var.instance_count** | int | True | -  |  The instance count for the CosmosDB SQL Dedicated Gateway. Possible value is between `1` and `5`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **cosmosdb_account_id** | string  | - | 
| **instance_size** | string  | - | 
| **instance_count** | int  | - | 
| **id** | string  | The ID of the CosmosDB SQL Dedicated Gateway. | 