# azurerm_cosmosdb_postgresql_node_configuration

Sets a Node Configuration value on Azure Cosmos DB for PostgreSQL Cluster.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Node Configuration on Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created. | 
| **cluster_id** | string | True | -  |  -  | The resource ID of the Azure Cosmos DB for PostgreSQL Cluster where we want to change configuration. Changing this forces a new resource to be created. | 
| **value** | string | True | -  |  -  | The value of the Node Configuration on Azure Cosmos DB for PostgreSQL Cluster. | 

