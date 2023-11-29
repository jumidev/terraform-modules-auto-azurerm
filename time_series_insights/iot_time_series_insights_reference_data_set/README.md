# azurerm_iot_time_series_insights_reference_data_set

Manages an Azure IoT Time Series Insights Reference Data Set.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the Azure IoT Time Series Insights Reference Data Set. Changing this forces a new resource to be created. Must be globally unique. | 
| **var.time_series_insights_environment_id** | string | True | -  |  -  | The resource ID of the Azure IoT Time Series Insights Environment in which to create the Azure IoT Time Series Insights Reference Data Set. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.data_string_comparison_behavior** | string | False | `Ordinal`  |  `Ordinal`, `OrdinalIgnoreCase`  | The comparison behavior that will be used to compare keys. Valid values include `Ordinal` and `OrdinalIgnoreCase`. Defaults to `Ordinal`. Changing this forces a new resource to be created. | 
| **var.key_property** | block | True | -  |  -  | A `key_property` block. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **time_series_insights_environment_id** | string  | - | 
| **location** | string  | - | 
| **data_string_comparison_behavior** | string  | - | 
| **key_property** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the IoT Time Series Insights Reference Data Set. | 