# azurerm_cosmosdb_sql_dedicated_gateway



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "cosmosdb_documentdb/cosmosdb_sql_dedicated_gateway"   
}
inputs = {
   # cosmosdb_account_id → set in component_inputs
   instance_size = "The instance size for the CosmosDB SQL Dedicated Gateway..."   
   instance_count = "The instance count for the CosmosDB SQL Dedicated Gateway..."   
}
component_inputs = {
   cosmosdb_account_id = "path/to/cosmosdb_account_component:id"   
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
| **cosmosdb_account_id** | string |  -  |  The resource ID of the CosmosDB Account. Changing this forces a new resource to be created. | 
| **instance_size** | string |  `Cosmos.D4s`, `Cosmos.D8s`, `Cosmos.D16s`  |  The instance size for the CosmosDB SQL Dedicated Gateway. Changing this forces a new resource to be created. Possible values are `Cosmos.D4s`, `Cosmos.D8s` and `Cosmos.D16s`. | 
| **instance_count** | number |  -  |  The instance count for the CosmosDB SQL Dedicated Gateway. Possible value is between `1` and `5`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **instance_count** | number | No  | The instance count for the CosmosDB SQL Dedicated Gateway. Possible value is between `1` and `5`. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the CosmosDB SQL Dedicated Gateway. | 

Additionally, all variables are provided as outputs.
