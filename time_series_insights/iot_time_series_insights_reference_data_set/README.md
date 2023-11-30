# azurerm_iot_time_series_insights_reference_data_set

Manages an Azure IoT Time Series Insights Reference Data Set.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "time_series_insights/iot_time_series_insights_reference_data_set" 
}

inputs = {
   name = "name of iot_time_series_insights_reference_data_set" 
   time_series_insights_environment_id = "time_series_insights_environment_id of iot_time_series_insights_reference_data_set" 
   location = "${location}" 
   key_property = {
      example_key_property = {
         type = "..."   
      }
  
   }
 
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
| **var.name** | string |  Specifies the name of the Azure IoT Time Series Insights Reference Data Set. Changing this forces a new resource to be created. Must be globally unique. | 
| **var.time_series_insights_environment_id** | string |  The resource ID of the Azure IoT Time Series Insights Environment in which to create the Azure IoT Time Series Insights Reference Data Set. Changing this forces a new resource to be created. | 
| **var.location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.key_property** | [block](#key_property-block-structure) |  A `key_property` block. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.data_string_comparison_behavior** | string |  `Ordinal`  |  `Ordinal`, `OrdinalIgnoreCase`  |  The comparison behavior that will be used to compare keys. Valid values include `Ordinal` and `OrdinalIgnoreCase`. Defaults to `Ordinal`. Changing this forces a new resource to be created. | 
| **var.tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 

### `key_property` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | The data type of the key property. Valid values include 'Bool', 'DateTime', 'Double', 'String'. Changing this forces a new resource to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the IoT Time Series Insights Reference Data Set. | 

Additionally, all variables are provided as outputs.
