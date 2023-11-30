# azurerm_kusto_database

Manages a Kusto (also known as Azure Data Explorer) Database

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_explorer/kusto_database" 
}

inputs = {
   name = "name of kusto_database" 
   location = "${location}" 
   resource_group_name = "${resource_group}" 
   cluster_name = "cluster_name of kusto_database" 
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
| **var.name** | string  The name of the Kusto Database to create. Changing this forces a new resource to be created. | 
| **var.location** | string  The location where the Kusto Database should be created. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string  Specifies the Resource Group where the Kusto Database should exist. Changing this forces a new resource to be created. | 
| **var.cluster_name** | string  Specifies the name of the Kusto Cluster this database will be added to. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.hot_cache_period** | string  The time the data that should be kept in cache for fast queries as ISO 8601 timespan. Default is unlimited. For more information see: [ISO 8601 Timespan](https://en.wikipedia.org/wiki/ISO_8601#Durations) | 
| **var.soft_delete_period** | string  The time the data should be kept before it stops being accessible to queries as ISO 8601 timespan. Default is unlimited. For more information see: [ISO 8601 Timespan](https://en.wikipedia.org/wiki/ISO_8601#Durations) | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Kusto Cluster ID. | 
| **size** | string | No  | The size of the database in bytes. | 

Additionally, all variables are provided as outputs.
