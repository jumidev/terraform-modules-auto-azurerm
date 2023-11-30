# azurerm_cosmosdb_sql_stored_procedure

Manages a SQL Stored Procedure within a Cosmos DB Account SQL Database.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cosmosdb_documentdb/cosmosdb_sql_stored_procedure" 
}

inputs = {
   name = "name of cosmosdb_sql_stored_procedure" 
   resource_group_name = "${resource_group}" 
   account_name = "account_name of cosmosdb_sql_stored_procedure" 
   database_name = "database_name of cosmosdb_sql_stored_procedure" 
   container_name = "container_name of cosmosdb_sql_stored_procedure" 
   body = "body of cosmosdb_sql_stored_procedure" 
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
| **var.name** | string |  Specifies the name of the Cosmos DB SQL Stored Procedure. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  The name of the resource group in which the Cosmos DB SQL Database is created. Changing this forces a new resource to be created. | 
| **var.account_name** | string |  The name of the Cosmos DB Account to create the stored procedure within. Changing this forces a new resource to be created. | 
| **var.database_name** | string |  The name of the Cosmos DB SQL Database to create the stored procedure within. Changing this forces a new resource to be created. | 
| **var.container_name** | string |  The name of the Cosmos DB SQL Container to create the stored procedure within. Changing this forces a new resource to be created. | 
| **var.body** | string |  The body of the stored procedure. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Cosmos DB SQL Stored Procedure. | 

Additionally, all variables are provided as outputs.
