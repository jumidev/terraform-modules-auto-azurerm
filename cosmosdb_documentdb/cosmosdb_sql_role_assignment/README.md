# azurerm_cosmosdb_sql_role_assignment

Manages a Cosmos DB SQL Role Assignment.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group in which the Cosmos DB SQL Role Assignment is created. Changing this forces a new resource to be created. | 
| **var.account_name** | string | True | -  |  -  | The name of the Cosmos DB Account. Changing this forces a new resource to be created. | 
| **var.principal_id** | string | True | -  |  -  | The ID of the Principal (Client) in Azure Active Directory. Changing this forces a new resource to be created. | 
| **var.role_definition_id** | string | True | -  |  -  | The resource ID of the Cosmos DB SQL Role Definition. | 
| **var.scope** | string | True | -  |  -  | The data plane resource path for which access is being granted through this Cosmos DB SQL Role Assignment. Changing this forces a new resource to be created. | 
| **var.name** | string | False | -  |  -  | The GUID as the name of the Cosmos DB SQL Role Assignment - one will be generated if not specified. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **resource_group_name** | string  | - | 
| **account_name** | string  | - | 
| **principal_id** | string  | - | 
| **role_definition_id** | string  | - | 
| **scope** | string  | - | 
| **name** | string  | - | 
| **id** | string  | The ID of the Cosmos DB SQL Role Assignment. | 