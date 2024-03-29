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
   # account_name → set in component_inputs
   principal_id = "The ID of the Principal (Client) in Azure Active Directory..."   
   # role_definition_id → set in component_inputs
   scope = "The data plane resource path for which access is being granted through this Cosm..."   
}

component_inputs = {
   account_name = "path/to/cosmosdb_account_component:name"   
   role_definition_id = "path/to/role_definition_component:id"   
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
| **resource_group_name** | string |  The name of the Resource Group in which the Cosmos DB SQL Role Assignment is created. Changing this forces a new resource to be created. | 
| **account_name** | string |  The name of the Cosmos DB Account. Changing this forces a new resource to be created. | 
| **principal_id** | string |  The ID of the Principal (Client) in Azure Active Directory. Changing this forces a new resource to be created. | 
| **role_definition_id** | string |  The resource ID of the Cosmos DB SQL Role Definition. | 
| **scope** | string |  The data plane resource path for which access is being granted through this Cosmos DB SQL Role Assignment. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The GUID as the name of the Cosmos DB SQL Role Assignment - one will be generated if not specified. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **name** | string | No  | The GUID as the name of the Cosmos DB SQL Role Assignment - one will be generated if not specified. Changing this forces a new resource to be created. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Cosmos DB SQL Role Assignment. | 

Additionally, all variables are provided as outputs.
