# azurerm_iot_time_series_insights_reference_data_set

Manages an Azure IoT Time Series Insights Reference Data Set.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "time_series_insights/iot_time_series_insights_reference_data_set" 
}

inputs = {
   name = "name of iot_time_series_insights_reference_data_set" 
   time_series_insights_environment_id = "time_series_insights_environment_id of iot_time_series_insights_reference_data_set" 
   location = "${location}" 
   key_property = "key_property of iot_time_series_insights_reference_data_set" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  Specifies the name of the Azure IoT Time Series Insights Reference Data Set. Changing this forces a new resource to be created. Must be globally unique. | 
| **var.time_series_insights_environment_id** | string | True | -  |  -  |  The resource ID of the Azure IoT Time Series Insights Environment in which to create the Azure IoT Time Series Insights Reference Data Set. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.data_string_comparison_behavior** | string | False | `Ordinal`  |  `Ordinal`, `OrdinalIgnoreCase`  |  The comparison behavior that will be used to compare keys. Valid values include `Ordinal` and `OrdinalIgnoreCase`. Defaults to `Ordinal`. Changing this forces a new resource to be created. | 
| **var.key_property** | block | True | -  |  -  |  A `key_property` block. Changing this forces a new resource to be created. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 

### `key_property` block structure

> `name` (string): (REQUIRED) The name of the key property. Changing this forces a new resource to be created.
> `type` (string): (REQUIRED) The data type of the key property. Valid values include 'Bool', 'DateTime', 'Double', 'String'. Changing this forces a new resource to be created.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the IoT Time Series Insights Reference Data Set. | 

Additionally, all variables are provided as outputs.
