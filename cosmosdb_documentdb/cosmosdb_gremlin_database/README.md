# azurerm_cosmosdb_gremlin_database

Manages a Gremlin Database within a Cosmos DB Account.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cosmosdb_documentdb/cosmosdb_gremlin_database" 
}

inputs = {
   name = "name of cosmosdb_gremlin_database" 
   resource_group_name = "${resource_group}" 
   account_name = "account_name of cosmosdb_gremlin_database" 
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
| **var.name** | string |  Specifies the name of the Cosmos DB Gremlin Database. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  The name of the resource group in which the Cosmos DB Gremlin Database is created. Changing this forces a new resource to be created. | 
| **var.account_name** | string |  The name of the CosmosDB Account to create the Gremlin Database within. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.throughput** | string |  The throughput of the Gremlin database (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. | 
| **var.autoscale_settings** | block |  An `autoscale_settings` block. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. | 

### `autoscale_settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `max_throughput` | string | No | - | The maximum throughput of the Gremlin database (RU/s). Must be between '1,000' and '1,000,000'. Must be set in increments of '1,000'. Conflicts with 'throughput'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the CosmosDB Gremlin Database. | 

Additionally, all variables are provided as outputs.
