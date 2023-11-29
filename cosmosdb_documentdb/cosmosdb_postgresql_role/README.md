# azurerm_cosmosdb_postgresql_role

Manages an Azure Cosmos DB for PostgreSQL Role.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this Azure Cosmos DB for PostgreSQL Role. Changing this forces a new resource to be created. | 
| **var.cluster_id** | string | True | -  |  -  | The resource ID of the Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created. | 
| **var.password** | string | True | -  |  -  | The password of the Azure Cosmos DB for PostgreSQL Role. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **cluster_id** | string  | - | 
| **password** | string  | - | 
| **id** | string  | The ID of the Azure Cosmos DB for PostgreSQL Role. | 