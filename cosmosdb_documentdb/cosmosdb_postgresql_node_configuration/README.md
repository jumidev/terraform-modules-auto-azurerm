# azurerm_cosmosdb_postgresql_node_configuration

Sets a Node Configuration value on Azure Cosmos DB for PostgreSQL Cluster.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "cosmosdb_documentdb/cosmosdb_postgresql_node_configuration"   
}

inputs = {
   name = "The name of the Node Configuration on Azure Cosmos DB for PostgreSQL Cluster..."   
   # cluster_id → set in component_inputs
   value = "The value of the Node Configuration on Azure Cosmos DB for PostgreSQL Cluster..."   
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
| **name** | string |  The name of the Node Configuration on Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created. | 
| **cluster_id** | string |  The resource ID of the Azure Cosmos DB for PostgreSQL Cluster where we want to change configuration. Changing this forces a new resource to be created. | 
| **value** | string |  The value of the Node Configuration on Azure Cosmos DB for PostgreSQL Cluster. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Node Configuration on Azure Cosmos DB for PostgreSQL Cluster. | 

Additionally, all variables are provided as outputs.
