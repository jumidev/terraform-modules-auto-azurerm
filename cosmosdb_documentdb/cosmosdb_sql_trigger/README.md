# azurerm_cosmosdb_sql_trigger

Manages an SQL Trigger.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cosmosdb_documentdb/cosmosdb_sql_trigger" 
}

inputs = {
   name = "name of cosmosdb_sql_trigger" 
   container_id = "container_id of cosmosdb_sql_trigger" 
   body = "body of cosmosdb_sql_trigger" 
   operation = "operation of cosmosdb_sql_trigger" 
   type = "type of cosmosdb_sql_trigger" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this SQL Trigger. Changing this forces a new SQL Trigger to be created. | 
| **var.container_id** | string | True | -  |  The id of the Cosmos DB SQL Container to create the SQL Trigger within. Changing this forces a new SQL Trigger to be created. | 
| **var.body** | string | True | -  |  Body of the Trigger. | 
| **var.operation** | string | True | `All`, `Create`, `Update`, `Delete`, `Replace`  |  The operation the trigger is associated with. Possible values are `All`, `Create`, `Update`, `Delete` and `Replace`. | 
| **var.type** | string | True | `Pre`, `Post`  |  Type of the Trigger. Possible values are `Pre` and `Post`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the SQL Trigger. | 

Additionally, all variables are provided as outputs.
