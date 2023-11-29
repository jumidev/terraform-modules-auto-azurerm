# azurerm_cosmosdb_postgresql_firewall_rule

Manages an Azure Cosmos DB for PostgreSQL Firewall Rule.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for the Azure Cosmos DB for PostgreSQL Firewall Rule. Changing this forces a new resource to be created. | 
| **var.cluster_id** | string | True | The resource ID of the Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created. | 
| **var.end_ip_address** | string | True | The end IP address of the Azure Cosmos DB for PostgreSQL Firewall Rule. | 
| **var.start_ip_address** | string | True | The start IP address of the Azure Cosmos DB for PostgreSQL Firewall Rule. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **cluster_id** | string  | - | 
| **end_ip_address** | string  | - | 
| **start_ip_address** | string  | - | 
| **id** | string  | The ID of the Azure Cosmos DB for PostgreSQL Firewall Rule. | 