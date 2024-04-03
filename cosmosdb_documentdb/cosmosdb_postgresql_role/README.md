# azurerm_cosmosdb_postgresql_role



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "cosmosdb_documentdb/cosmosdb_postgresql_role"   
}
inputs = {
   name = "The name which should be used for this Azure Cosmos DB for PostgreSQL Role..."   
   cluster_id = "The resource ID of the Azure Cosmos DB for PostgreSQL Cluster..."   
   password = "The password of the Azure Cosmos DB for PostgreSQL Role..."   
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
| **name** | string |  The name which should be used for this Azure Cosmos DB for PostgreSQL Role. Changing this forces a new resource to be created. | 
| **cluster_id** | string |  The resource ID of the Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created. | 
| **password** | string |  The password of the Azure Cosmos DB for PostgreSQL Role. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **password** | string | Yes  | The password of the Azure Cosmos DB for PostgreSQL Role. Changing this forces a new resource to be created. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Azure Cosmos DB for PostgreSQL Role. | 

Additionally, all variables are provided as outputs.
