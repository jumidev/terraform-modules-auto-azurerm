# azurerm_cosmosdb_sql_trigger



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "cosmosdb_documentdb/cosmosdb_sql_trigger"   
}

inputs = {
   name = "The name which should be used for this SQL Trigger"   
   # container_id → set in component_inputs
   body = "Body of the Trigger"   
   operation = "The operation the trigger is associated with"   
   type = "Type of the Trigger"   
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

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  The name which should be used for this SQL Trigger. Changing this forces a new SQL Trigger to be created. | 
| **container_id** | string |  -  |  The id of the Cosmos DB SQL Container to create the SQL Trigger within. Changing this forces a new SQL Trigger to be created. | 
| **body** | string |  -  |  Body of the Trigger. | 
| **operation** | string |  `All`, `Create`, `Update`, `Delete`, `Replace`  |  The operation the trigger is associated with. Possible values are `All`, `Create`, `Update`, `Delete` and `Replace`. | 
| **type** | string |  `Pre`, `Post`  |  Type of the Trigger. Possible values are `Pre` and `Post`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **type** | string | No  | Type of the Trigger. Possible values are `Pre` and `Post`. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the SQL Trigger. | 

Additionally, all variables are provided as outputs.
