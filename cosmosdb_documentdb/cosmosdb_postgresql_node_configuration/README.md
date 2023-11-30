# azurerm_cosmosdb_postgresql_node_configuration

Sets a Node Configuration value on Azure Cosmos DB for PostgreSQL Cluster.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cosmosdb_documentdb/cosmosdb_postgresql_node_configuration" 
}

inputs = {
   name = "name of cosmosdb_postgresql_node_configuration" 
   cluster_id = "cluster_id of cosmosdb_postgresql_node_configuration" 
   value = "value of cosmosdb_postgresql_node_configuration" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the Node Configuration on Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created. | 
| **var.cluster_id** | string | True | The resource ID of the Azure Cosmos DB for PostgreSQL Cluster where we want to change configuration. Changing this forces a new resource to be created. | 
| **var.value** | string | True | The value of the Node Configuration on Azure Cosmos DB for PostgreSQL Cluster. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Node Configuration on Azure Cosmos DB for PostgreSQL Cluster. | 

Additionally, all variables are provided as outputs.
