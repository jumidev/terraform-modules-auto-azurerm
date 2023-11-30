# azurerm_cosmosdb_mongo_user_definition

Manages a Cosmos DB Mongo User Definition.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cosmosdb_documentdb/cosmosdb_mongo_user_definition" 
}

inputs = {
   cosmos_mongo_database_id = "cosmos_mongo_database_id of cosmosdb_mongo_user_definition" 
   username = "username of cosmosdb_mongo_user_definition" 
   password = "password of cosmosdb_mongo_user_definition" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.cosmos_mongo_database_id** | string | True | The resource ID of the Mongo DB. Changing this forces a new resource to be created. | 
| **var.username** | string | True | The username for the Mongo User Definition. Changing this forces a new resource to be created. | 
| **var.password** | string | True | The password for the Mongo User Definition. | 
| **var.inherited_role_names** | list | False | A list of Mongo Roles that are inherited to the Mongo User Definition. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Cosmos DB Mongo User Definition. | 

Additionally, all variables are provided as outputs.
