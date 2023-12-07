# azurerm_iot_time_series_insights_standard_environment

Manages an Azure IoT Time Series Insights Standard Environment.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "time_series_insights/iot_time_series_insights_standard_environment"   
}

inputs = {
   name = "Specifies the name of the Azure IoT Time Series Insights Standard Environment..."   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   sku_name = "Specifies the SKU Name for this IoT Time Series Insights Standard Environment..."   
   data_retention_time = "Specifies the ISO8601 timespan specifying the minimum number of days the environ..."   
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
| **name** | string |  -  |  Specifies the name of the Azure IoT Time Series Insights Standard Environment. Changing this forces a new resource to be created. Must be globally unique. | 
| **resource_group_name** | string |  -  |  The name of the resource group in which to create the Azure IoT Time Series Insights Standard Environment. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **sku_name** | string |  `name`, `S1`, `S2`  |  Specifies the SKU Name for this IoT Time Series Insights Standard Environment. It is string consisting of two parts separated by an underscore(\_).The first part is the `name`, valid values include: `S1` and `S2`. The second part is the `capacity` (e.g. the number of deployed units of the `sku`), which must be a positive `integer` (e.g. `S1_1`). Possible values are `S1_1`, `S1_2`, `S1_3`, `S1_4`, `S1_5`, `S1_6`, `S1_7`, `S1_8`, `S1_9`, `S1_10`, `S2_1`, `S2_2`, `S2_3`, `S2_4`, `S2_5`, `S2_6`, `S2_7`, `S2_8`, `S2_9` and `S2_10`. Changing this forces a new resource to be created. | 
| **data_retention_time** | string |  -  |  Specifies the ISO8601 timespan specifying the minimum number of days the environment's events will be available for query. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **storage_limit_exceeded_behavior** | string |  `PurgeOldData`  |  `PauseIngress`, `PurgeOldData`  |  Specifies the behaviour the IoT Time Series Insights service should take when the environment's capacity has been exceeded. Valid values include `PauseIngress` and `PurgeOldData`. Defaults to `PurgeOldData`. | 
| **partition_key** | string |  -  |  -  |  The name of the event property which will be used to partition data. Changing this forces a new resource to be created. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the IoT Time Series Insights Standard Environment. | 

Additionally, all variables are provided as outputs.
