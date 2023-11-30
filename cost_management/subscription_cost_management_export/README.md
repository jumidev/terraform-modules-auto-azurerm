# azurerm_subscription_cost_management_export

Manages a Cost Management Export for a Subscription.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cost_management/subscription_cost_management_export" 
}

inputs = {
   name = "name of subscription_cost_management_export" 
   subscription_id = "subscription_id of subscription_cost_management_export" 
   recurrence_type = "recurrence_type of subscription_cost_management_export" 
   recurrence_period_start_date = "recurrence_period_start_date of subscription_cost_management_export" 
   recurrence_period_end_date = "recurrence_period_end_date of subscription_cost_management_export" 
   export_data_storage_location = {
      example_export_data_storage_location = {
         ...
      }
  
   }
 
   export_data_options = {
      example_export_data_options = {
         ...
      }
  
   }
 
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
| **var.name** | string | True | -  |  -  |  Specifies the name of the Cost Management Export. Changing this forces a new resource to be created. | 
| **var.subscription_id** | string | True | -  |  -  |  The id of the subscription on which to create an export. Changing this forces a new resource to be created. | 
| **var.recurrence_type** | string | True | -  |  `Annually`, `Daily`, `Monthly`, `Weekly`  |  How often the requested information will be exported. Valid values include `Annually`, `Daily`, `Monthly`, `Weekly`. | 
| **var.recurrence_period_start_date** | datetime | True | -  |  -  |  The date the export will start capturing information. | 
| **var.recurrence_period_end_date** | datetime | True | -  |  -  |  The date the export will stop capturing information. | 
| **var.export_data_storage_location** | block | True | -  |  -  |  A `export_data_storage_location` block. | 
| **var.export_data_options** | block | True | -  |  -  |  A `export_data_options` block. | 
| **var.active** | bool | False | `True`  |  -  |  Is the cost management export active? Default is `true`. | 

### `export_data_storage_location` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `container_id` | string | Yes | - | The Resource Manager ID of the container where exports will be uploaded. Changing this forces a new resource to be created. |
| `root_folder_path` | string | Yes | - | The path of the directory where exports will be uploaded. Changing this forces a new resource to be created. |

### `export_data_options` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | The type of the query. Possible values are 'ActualCost', 'AmortizedCost' and 'Usage'. |
| `time_frame` | string | Yes | - | The time frame for pulling data for the query. If custom, then a specific time period must be provided. Possible values include: 'WeekToDate', 'MonthToDate', 'BillingMonthToDate', 'TheLast7Days', 'TheLastMonth', 'TheLastBillingMonth', 'Custom'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Cost Management Export for this Subscription. | 

Additionally, all variables are provided as outputs.
