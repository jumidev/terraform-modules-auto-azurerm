# azurerm_cosmosdb_sql_database

Manages a SQL Database within a Cosmos DB Account.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Cosmos DB SQL Database. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which the Cosmos DB SQL Database is created. Changing this forces a new resource to be created. | 
| **account_name** | string | True | -  |  -  | The name of the Cosmos DB SQL Database to create the table within. Changing this forces a new resource to be created. | 
| **throughput** | string | False | -  |  -  | The throughput of SQL database (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. Do not set when `azurerm_cosmosdb_account` is configured with `EnableServerless` capability. | 
| **autoscale_settings** | block | False | -  |  -  | An `autoscale_settings` block. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. | 

