# azurerm_cosmosdb_postgresql_coordinator_configuration

Sets a Coordinator Configuration value on Azure Cosmos DB for PostgreSQL Cluster.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Coordinator Configuration on Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created. | 
| **cluster_id** | string | True | -  |  -  | The resource ID of the Azure Cosmos DB for PostgreSQL Cluster where we want to change configuration. Changing this forces a new resource to be created. | 
| **value** | string | True | -  |  -  | The value of the Coordinator Configuration on Azure Cosmos DB for PostgreSQL Cluster. | 

