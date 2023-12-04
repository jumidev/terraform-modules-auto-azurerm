# azurerm_logic_app_integration_account_batch_configuration

Manages a Logic App Integration Account Batch Configuration.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "logic_app/logic_app_integration_account_batch_configuration" 
}

inputs = {
   name = "name of logic_app_integration_account_batch_configuration" 
   resource_group_name = "${resource_group}" 
   integration_account_name = "integration_account_name of logic_app_integration_account_batch_configuration" 
   batch_group_name = "batch_group_name of logic_app_integration_account_batch_configuration" 
   release_criteria = {
      example_release_criteria = {
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
| **name** | string |  The name which should be used for this Logic App Integration Account Batch Configuration. Only Alphanumeric characters allowed. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Logic App Integration Account Batch Configuration should exist. Changing this forces a new resource to be created. | 
| **integration_account_name** | string |  The name of the Logic App Integration Account. Changing this forces a new resource to be created. | 
| **batch_group_name** | string |  The batch group name of the Logic App Integration Batch Configuration. Changing this forces a new resource to be created. | 
| **release_criteria** | [block](#release_criteria-block-structure) |  A `release_criteria` block, which is used to select the criteria to meet before processing each batch. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **metadata** | string |  A JSON mapping of any Metadata for this Logic App Integration Account Batch Configuration. | 

### `release_criteria` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `batch_size` | string | No | - | The batch size in bytes for the Logic App Integration Batch Configuration. |
| `message_count` | int | No | - | The message count for the Logic App Integration Batch Configuration. |
| `recurrence` | [block](#release_criteria-block-structure) | No | - | A 'recurrence' block. |

### `monthly` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `weekday` | string | Yes | - | The day of the occurrence. Possible values are 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday' and 'Saturday'. |
| `week` | string | Yes | - | The occurrence of the week within the month. |

### `schedule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `hours` | string | No | - | A list containing a single item, which specifies the Hour interval at which this recurrence should be triggered. |
| `minutes` | int | No | - | A list containing a single item which specifies the Minute interval at which this recurrence should be triggered. |
| `month_days` | int | No | - | A list of days of the month that the job should execute on. |
| `monthly` | [block](#schedule-block-structure) | No | - | A 'monthly' block. |
| `week_days` | string | No | - | A list of days of the week that the job should execute on. Possible values are 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday' and 'Saturday'. |

### `recurrence` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `frequency` | string | Yes | - | The frequency of the schedule. Possible values are 'Day', 'Hour', 'Minute', 'Month', 'NotSpecified', 'Second', 'Week' and 'Year'. |
| `interval` | int | Yes | - | The number of 'frequency's between runs. |
| `end_time` | string | No | - | The end time of the schedule, formatted as an RFC3339 string. |
| `schedule` | [block](#recurrence-block-structure) | No | - | A 'schedule' block. |
| `start_time` | string | No | - | The start time of the schedule, formatted as an RFC3339 string. |
| `time_zone` | string | No | - | The timezone of the start/end time. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Logic App Integration Account Batch Configuration. | 

Additionally, all variables are provided as outputs.
