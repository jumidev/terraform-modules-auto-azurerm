# azurerm_cosmosdb_postgresql_coordinator_configuration

Sets a Coordinator Configuration value on Azure Cosmos DB for PostgreSQL Cluster.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cosmosdb_documentdb/cosmosdb_postgresql_coordinator_configuration" 
}

inputs = {
   name = "name of cosmosdb_postgresql_coordinator_configuration" 
   cluster_id = "cluster_id of cosmosdb_postgresql_coordinator_configuration" 
   value = "value of cosmosdb_postgresql_coordinator_configuration" 
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
| **var.name** | string |  The name of the Coordinator Configuration on Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created. | 
| **var.cluster_id** | string |  The resource ID of the Azure Cosmos DB for PostgreSQL Cluster where we want to change configuration. Changing this forces a new resource to be created. | 
| **var.value** | string |  The value of the Coordinator Configuration on Azure Cosmos DB for PostgreSQL Cluster. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Coordinator Configuration on Azure Cosmos DB for PostgreSQL Cluster. | 

Additionally, all variables are provided as outputs.
