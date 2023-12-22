# azurerm_cosmosdb_sql_stored_procedure

Manages a SQL Stored Procedure within a Cosmos DB Account SQL Database.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "cosmosdb_documentdb/cosmosdb_sql_stored_procedure"   
}

inputs = {
   name = "Specifies the name of the Cosmos DB SQL Stored Procedure..."   
   resource_group_name = "${resource_group}"   
   # account_name → set in component_inputs
   # database_name → set in component_inputs
   container_name = "The name of the Cosmos DB SQL Container to create the stored procedure within..."   
   body = "The body of the stored procedure"   
}

component_inputs = {
   account_name = "path/to/cosmosdb_account_component:name"   
   database_name = "path/to/cosmosdb_sql_database_component:name"   
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
| **name** | string |  Specifies the name of the Cosmos DB SQL Stored Procedure. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which the Cosmos DB SQL Database is created. Changing this forces a new resource to be created. | 
| **account_name** | string |  The name of the Cosmos DB Account to create the stored procedure within. Changing this forces a new resource to be created. | 
| **database_name** | string |  The name of the Cosmos DB SQL Database to create the stored procedure within. Changing this forces a new resource to be created. | 
| **container_name** | string |  The name of the Cosmos DB SQL Container to create the stored procedure within. Changing this forces a new resource to be created. | 
| **body** | string |  The body of the stored procedure. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Cosmos DB SQL Stored Procedure. | 

Additionally, all variables are provided as outputs.
