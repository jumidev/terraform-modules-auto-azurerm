# azurerm_cosmosdb_mongo_database

Manages a Mongo Database within a Cosmos DB Account.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cosmosdb_documentdb/cosmosdb_mongo_database" 
}

inputs = {
   name = "name of cosmosdb_mongo_database" 
   resource_group_name = "${resource_group}" 
   account_name = "account_name of cosmosdb_mongo_database" 
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
| **var.name** | string | True | Specifies the name of the Cosmos DB Mongo Database. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group in which the Cosmos DB Mongo Database is created. Changing this forces a new resource to be created. | 
| **var.account_name** | string | True | The name of the Cosmos DB Mongo Database to create the table within. Changing this forces a new resource to be created. | 
| **var.throughput** | string | False | The throughput of the MongoDB database (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. | 
| **var.autoscale_settings** | block | False | An `autoscale_settings` block. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. | 

### `autoscale_settings` block structure

> `max_throughput` (string): The maximum throughput of the MongoDB database (RU/s). Must be between '1,000' and '1,000,000'. Must be set in increments of '1,000'. Conflicts with 'throughput'.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Cosmos DB Mongo Database. | 

Additionally, all variables are provided as outputs.
