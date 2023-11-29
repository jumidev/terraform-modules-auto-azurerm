# azurerm_kusto_database

Manages a Kusto (also known as Azure Data Explorer) Database

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the Kusto Database to create. Changing this forces a new resource to be created. | 
| **var.location** | string | True | The location where the Kusto Database should be created. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | Specifies the Resource Group where the Kusto Database should exist. Changing this forces a new resource to be created. | 
| **var.cluster_name** | string | True | Specifies the name of the Kusto Cluster this database will be added to. Changing this forces a new resource to be created. | 
| **var.hot_cache_period** | string | False | The time the data that should be kept in cache for fast queries as ISO 8601 timespan. Default is unlimited. For more information see: [ISO 8601 Timespan](https://en.wikipedia.org/wiki/ISO_8601#Durations) | 
| **var.soft_delete_period** | string | False | The time the data should be kept before it stops being accessible to queries as ISO 8601 timespan. Default is unlimited. For more information see: [ISO 8601 Timespan](https://en.wikipedia.org/wiki/ISO_8601#Durations) | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **location** | string  | - | 
| **resource_group_name** | string  | - | 
| **cluster_name** | string  | - | 
| **hot_cache_period** | string  | - | 
| **soft_delete_period** | string  | - | 
| **id** | string  | The Kusto Cluster ID. | 
| **size** | string  | The size of the database in bytes. | 