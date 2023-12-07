# azurerm_billing_account_cost_management_export

Manages a Cost Management Export for a Billing Account.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "cost_management/billing_account_cost_management_export"   
}

inputs = {
   name = "Specifies the name of the Cost Management Export"   
   billing_account_id = "The id of the billing account on which to create an export..."   
   recurrence_type = "How often the requested information will be exported..."   
   recurrence_period_start_date = "The date the export will start capturing information..."   
   recurrence_period_end_date = "The date the export will stop capturing information..."   
   export_data_storage_location = {
      container_id = "..."      
      root_folder_path = "..."      
   }
   
   export_data_options = {
      type = "..."      
      time_frame = "..."      
   }
   
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
| **name** | string |  -  |  Specifies the name of the Cost Management Export. Changing this forces a new resource to be created. | 
| **billing_account_id** | string |  -  |  The id of the billing account on which to create an export. Changing this forces a new resource to be created. | 
| **recurrence_type** | string |  `Annually`, `Daily`, `Monthly`, `Weekly`  |  How often the requested information will be exported. Valid values include `Annually`, `Daily`, `Monthly`, `Weekly`. | 
| **recurrence_period_start_date** | datetime |  -  |  The date the export will start capturing information. | 
| **recurrence_period_end_date** | datetime |  -  |  The date the export will stop capturing information. | 
| **export_data_storage_location** | [block](#export_data_storage_location-block-structure) |  -  |  A `export_data_storage_location` block. | 
| **export_data_options** | [block](#export_data_options-block-structure) |  -  |  A `export_data_options` block. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **active** | bool |  `True`  |  Is the cost management export active? Default is `true`. | 

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
| **id** | string | No  | The ID of the Cost Management Export for this Billing Account. | 

Additionally, all variables are provided as outputs.
