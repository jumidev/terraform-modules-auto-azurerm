# azurerm_cosmosdb_sql_database

Manages a SQL Database within a Cosmos DB Account.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cosmosdb_documentdb/cosmosdb_sql_database" 
}

inputs = {
   name = "name of cosmosdb_sql_database" 
   resource_group_name = "${resource_group}" 
   account_name = "account_name of cosmosdb_sql_database" 
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
| **var.name** | string |  Specifies the name of the Cosmos DB SQL Database. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  The name of the resource group in which the Cosmos DB SQL Database is created. Changing this forces a new resource to be created. | 
| **var.account_name** | string |  The name of the Cosmos DB SQL Database to create the table within. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.throughput** | string |  The throughput of SQL database (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. Do not set when `azurerm_cosmosdb_account` is configured with `EnableServerless` capability. | 
| **var.autoscale_settings** | [block](#autoscale_settings-block-structure) |  An `autoscale_settings` block. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. | 

### `autoscale_settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `max_throughput` | string | No | - | The maximum throughput of the SQL database (RU/s). Must be between '1,000' and '1,000,000'. Must be set in increments of '1,000'. Conflicts with 'throughput'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the CosmosDB SQL Database. | 

Additionally, all variables are provided as outputs.
