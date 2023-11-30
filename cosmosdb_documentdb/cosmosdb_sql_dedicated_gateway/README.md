# azurerm_cosmosdb_sql_dedicated_gateway

Manages a SQL Dedicated Gateway within a Cosmos DB Account.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cosmosdb_documentdb/cosmosdb_sql_dedicated_gateway" 
}

inputs = {
   cosmosdb_account_id = "cosmosdb_account_id of cosmosdb_sql_dedicated_gateway" 
   instance_size = "instance_size of cosmosdb_sql_dedicated_gateway" 
   instance_count = "instance_count of cosmosdb_sql_dedicated_gateway" 
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
| **var.cosmosdb_account_id** | string |  -  |  The resource ID of the CosmosDB Account. Changing this forces a new resource to be created. | 
| **var.instance_size** | string |  `Cosmos.D4s`, `Cosmos.D8s`, `Cosmos.D16s`  |  The instance size for the CosmosDB SQL Dedicated Gateway. Changing this forces a new resource to be created. Possible values are `Cosmos.D4s`, `Cosmos.D8s` and `Cosmos.D16s`. | 
| **var.instance_count** | int |  -  |  The instance count for the CosmosDB SQL Dedicated Gateway. Possible value is between `1` and `5`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the CosmosDB SQL Dedicated Gateway. | 

Additionally, all variables are provided as outputs.
