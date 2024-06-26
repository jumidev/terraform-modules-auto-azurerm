# azurerm_cosmosdb_postgresql_coordinator_configuration



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "cosmosdb_documentdb/cosmosdb_postgresql_coordinator_configuration"   
}
inputs = {
   name = "The name of the Coordinator Configuration on Azure Cosmos DB for PostgreSQL Clus..."   
   cluster_id = "The resource ID of the Azure Cosmos DB for PostgreSQL Cluster where we want to c..."   
   value = "The value of the Coordinator Configuration on Azure Cosmos DB for PostgreSQL Clu..."   
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
| **name** | string |  The name of the Coordinator Configuration on Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created. | 
| **cluster_id** | string |  The resource ID of the Azure Cosmos DB for PostgreSQL Cluster where we want to change configuration. Changing this forces a new resource to be created. | 
| **value** | string |  The value of the Coordinator Configuration on Azure Cosmos DB for PostgreSQL Cluster. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **value** | string | No  | The value of the Coordinator Configuration on Azure Cosmos DB for PostgreSQL Cluster. The following attributes are exported: | 
| **id** | string | No  | The ID of the Coordinator Configuration on Azure Cosmos DB for PostgreSQL Cluster. | 

Additionally, all variables are provided as outputs.
