# azurerm_cosmosdb_sql_function



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "cosmosdb_documentdb/cosmosdb_sql_function"   
}
inputs = {
   name = "The name which should be used for this SQL User Defined Function..."   
   # container_id → set in component_inputs
   body = "Body of the User Defined Function"   
}
component_inputs = {
   container_id = "path/to/cosmosdb_sql_container_component:id"   
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
| **name** | string |  The name which should be used for this SQL User Defined Function. Changing this forces a new SQL User Defined Function to be created. | 
| **container_id** | string |  The id of the Cosmos DB SQL Container to create the SQL User Defined Function within. Changing this forces a new SQL User Defined Function to be created. | 
| **body** | string |  Body of the User Defined Function. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **body** | string | No  | Body of the User Defined Function. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the SQL User Defined Function. | 

Additionally, all variables are provided as outputs.
