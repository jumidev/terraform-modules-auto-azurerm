# azurerm_iot_time_series_insights_gen2_environment

Manages an Azure IoT Time Series Insights Gen2 Environment.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "time_series_insights/iot_time_series_insights_gen2_environment"   
}

inputs = {
   name = "Specifies the name of the Azure IoT Time Series Insights Gen2 Environment..."   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   sku_name = "Specifies the SKU Name for this IoT Time Series Insights Gen2 Environment..."   
   storage = {
      name = "..."      
      key = "..."      
   }
   
   id_properties = "A list of property ids for the Azure IoT Time Series Insights Gen2 Environment..."   
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
| **name** | string |  Specifies the name of the Azure IoT Time Series Insights Gen2 Environment. Changing this forces a new resource to be created. Must be globally unique. | 
| **resource_group_name** | string |  The name of the resource group in which to create the Azure IoT Time Series Insights Gen2 Environment. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **sku_name** | string |  Specifies the SKU Name for this IoT Time Series Insights Gen2 Environment. Currently it supports only `L1`. For gen2, capacity cannot be specified. Changing this forces a new resource to be created. | 
| **storage** | [block](#storage-block-structure) |  A `storage` block. | 
| **id_properties** | list |  A list of property ids for the Azure IoT Time Series Insights Gen2 Environment. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **warm_store_data_retention_time** | int |  Specifies the ISO8601 timespan specifying the minimum number of days the environment's events will be available for query. | 
| **tags** | map |  A mapping of tags to assign to the resource. | 

### `storage` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | Name of storage account for Azure IoT Time Series Insights Gen2 Environment. Changing this forces a new resource to be created. |
| `key` | string | Yes | - | Access key of storage account for Azure IoT Time Series Insights Gen2 Environment |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the IoT Time Series Insights Gen2 Environment. | 
| **data_access_fqdn** | string | No  | The FQDN used to access the environment data. | 

Additionally, all variables are provided as outputs.
