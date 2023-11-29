# azurerm_iot_time_series_insights_gen2_environment

Manages an Azure IoT Time Series Insights Gen2 Environment.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the Azure IoT Time Series Insights Gen2 Environment. Changing this forces a new resource to be created. Must be globally unique. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Azure IoT Time Series Insights Gen2 Environment. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.sku_name** | string | True | -  |  -  | Specifies the SKU Name for this IoT Time Series Insights Gen2 Environment. Currently it supports only `L1`. For gen2, capacity cannot be specified. Changing this forces a new resource to be created. | 
| **var.warm_store_data_retention_time** | int | False | -  |  -  | Specifies the ISO8601 timespan specifying the minimum number of days the environment's events will be available for query. | 
| **var.storage** | block | True | -  |  -  | A `storage` block. | 
| **var.id_properties** | list | True | -  |  -  | A list of property ids for the Azure IoT Time Series Insights Gen2 Environment. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **sku_name** | string  | - | 
| **warm_store_data_retention_time** | int  | - | 
| **storage** | block  | - | 
| **id_properties** | list  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the IoT Time Series Insights Gen2 Environment. | 
| **data_access_fqdn** | string  | The FQDN used to access the environment data. | 