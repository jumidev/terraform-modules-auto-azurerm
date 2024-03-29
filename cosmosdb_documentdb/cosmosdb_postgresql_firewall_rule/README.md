# azurerm_cosmosdb_postgresql_firewall_rule

Manages an Azure Cosmos DB for PostgreSQL Firewall Rule.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "cosmosdb_documentdb/cosmosdb_postgresql_firewall_rule"   
}

inputs = {
   name = "The name which should be used for the Azure Cosmos DB for PostgreSQL Firewall Ru..."   
   # cluster_id → set in component_inputs
   end_ip_address = "The end IP address of the Azure Cosmos DB for PostgreSQL Firewall Rule..."   
   start_ip_address = "The start IP address of the Azure Cosmos DB for PostgreSQL Firewall Rule..."   
}

component_inputs = {
   cluster_id = "path/to/cosmosdb_postgresql_cluster_component:id"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The name which should be used for the Azure Cosmos DB for PostgreSQL Firewall Rule. Changing this forces a new resource to be created. | 
| **cluster_id** | string |  The resource ID of the Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created. | 
| **end_ip_address** | string |  The end IP address of the Azure Cosmos DB for PostgreSQL Firewall Rule. | 
| **start_ip_address** | string |  The start IP address of the Azure Cosmos DB for PostgreSQL Firewall Rule. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **start_ip_address** | string | No  | The start IP address of the Azure Cosmos DB for PostgreSQL Firewall Rule. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Azure Cosmos DB for PostgreSQL Firewall Rule. | 

Additionally, all variables are provided as outputs.
