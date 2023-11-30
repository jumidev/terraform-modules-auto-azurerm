# azurerm_iot_time_series_insights_gen2_environment

Manages an Azure IoT Time Series Insights Gen2 Environment.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "time_series_insights/iot_time_series_insights_gen2_environment" 
}

inputs = {
   name = "name of iot_time_series_insights_gen2_environment" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   sku_name = "sku_name of iot_time_series_insights_gen2_environment" 
   storage = {
      example_storage = {
         key = "..."   
      }
  
   }
 
   id_properties = "id_properties of iot_time_series_insights_gen2_environment" 
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
| **var.name** | string |  Specifies the name of the Azure IoT Time Series Insights Gen2 Environment. Changing this forces a new resource to be created. Must be globally unique. | 
| **var.resource_group_name** | string |  The name of the resource group in which to create the Azure IoT Time Series Insights Gen2 Environment. Changing this forces a new resource to be created. | 
| **var.location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.sku_name** | string |  Specifies the SKU Name for this IoT Time Series Insights Gen2 Environment. Currently it supports only `L1`. For gen2, capacity cannot be specified. Changing this forces a new resource to be created. | 
| **var.storage** | [block](#storage-block-structure) |  A `storage` block. | 
| **var.id_properties** | list |  A list of property ids for the Azure IoT Time Series Insights Gen2 Environment. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.warm_store_data_retention_time** | int |  Specifies the ISO8601 timespan specifying the minimum number of days the environment's events will be available for query. | 
| **var.tags** | map |  A mapping of tags to assign to the resource. | 

### `storage` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `key` | string | Yes | - | Access key of storage account for Azure IoT Time Series Insights Gen2 Environment |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the IoT Time Series Insights Gen2 Environment. | 
| **data_access_fqdn** | string | No  | The FQDN used to access the environment data. | 

Additionally, all variables are provided as outputs.
