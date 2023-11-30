# azurerm_cosmosdb_postgresql_role

Manages an Azure Cosmos DB for PostgreSQL Role.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cosmosdb_documentdb/cosmosdb_postgresql_role" 
}

inputs = {
   name = "name of cosmosdb_postgresql_role" 
   cluster_id = "cluster_id of cosmosdb_postgresql_role" 
   password = "password of cosmosdb_postgresql_role" 
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
| **var.name** | string  The name which should be used for this Azure Cosmos DB for PostgreSQL Role. Changing this forces a new resource to be created. | 
| **var.cluster_id** | string  The resource ID of the Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created. | 
| **var.password** | string  The password of the Azure Cosmos DB for PostgreSQL Role. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Azure Cosmos DB for PostgreSQL Role. | 

Additionally, all variables are provided as outputs.
