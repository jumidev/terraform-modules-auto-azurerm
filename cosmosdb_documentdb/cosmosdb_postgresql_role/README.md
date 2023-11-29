# azurerm_cosmosdb_postgresql_role

Manages an Azure Cosmos DB for PostgreSQL Role.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Azure Cosmos DB for PostgreSQL Role. Changing this forces a new resource to be created. | 
| **cluster_id** | string | True | -  |  -  | The resource ID of the Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created. | 
| **password** | string | True | -  |  -  | The password of the Azure Cosmos DB for PostgreSQL Role. Changing this forces a new resource to be created. | 

