# azurerm_cosmosdb_sql_role_assignment

Manages a Cosmos DB SQL Role Assignment.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cosmosdb_documentdb/cosmosdb_sql_role_assignment" 
}

inputs = {
   resource_group_name = "${resource_group}" 
   account_name = "account_name of cosmosdb_sql_role_assignment" 
   principal_id = "principal_id of cosmosdb_sql_role_assignment" 
   role_definition_id = "role_definition_id of cosmosdb_sql_role_assignment" 
   scope = "scope of cosmosdb_sql_role_assignment" 
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
| **var.resource_group_name** | string |  The name of the Resource Group in which the Cosmos DB SQL Role Assignment is created. Changing this forces a new resource to be created. | 
| **var.account_name** | string |  The name of the Cosmos DB Account. Changing this forces a new resource to be created. | 
| **var.principal_id** | string |  The ID of the Principal (Client) in Azure Active Directory. Changing this forces a new resource to be created. | 
| **var.role_definition_id** | string |  The resource ID of the Cosmos DB SQL Role Definition. | 
| **var.scope** | string |  The data plane resource path for which access is being granted through this Cosmos DB SQL Role Assignment. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.name** | string |  The GUID as the name of the Cosmos DB SQL Role Assignment - one will be generated if not specified. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Cosmos DB SQL Role Assignment. | 

Additionally, all variables are provided as outputs.
