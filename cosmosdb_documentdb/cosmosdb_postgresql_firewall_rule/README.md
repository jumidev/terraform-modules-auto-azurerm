# azurerm_cosmosdb_postgresql_firewall_rule

Manages an Azure Cosmos DB for PostgreSQL Firewall Rule.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for the Azure Cosmos DB for PostgreSQL Firewall Rule. Changing this forces a new resource to be created. | 
| **cluster_id** | string | True | -  |  -  | The resource ID of the Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created. | 
| **end_ip_address** | string | True | -  |  -  | The end IP address of the Azure Cosmos DB for PostgreSQL Firewall Rule. | 
| **start_ip_address** | string | True | -  |  -  | The start IP address of the Azure Cosmos DB for PostgreSQL Firewall Rule. | 

