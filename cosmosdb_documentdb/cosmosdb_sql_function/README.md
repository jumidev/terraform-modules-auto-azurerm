# azurerm_cosmosdb_sql_function

Manages an SQL User Defined Function.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cosmosdb_documentdb/cosmosdb_sql_function" 
}

inputs = {
   name = "name of cosmosdb_sql_function" 
   container_id = "container_id of cosmosdb_sql_function" 
   body = "body of cosmosdb_sql_function" 
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
| **var.name** | string |  The name which should be used for this SQL User Defined Function. Changing this forces a new SQL User Defined Function to be created. | 
| **var.container_id** | string |  The id of the Cosmos DB SQL Container to create the SQL User Defined Function within. Changing this forces a new SQL User Defined Function to be created. | 
| **var.body** | string |  Body of the User Defined Function. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the SQL User Defined Function. | 

Additionally, all variables are provided as outputs.
