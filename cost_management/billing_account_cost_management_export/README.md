# azurerm_billing_account_cost_management_export

Manages a Cost Management Export for a Billing Account.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cost_management/billing_account_cost_management_export" 
}

inputs = {
   name = "name of billing_account_cost_management_export" 
   billing_account_id = "billing_account_id of billing_account_cost_management_export" 
   recurrence_type = "recurrence_type of billing_account_cost_management_export" 
   recurrence_period_start_date = "recurrence_period_start_date of billing_account_cost_management_export" 
   recurrence_period_end_date = "recurrence_period_end_date of billing_account_cost_management_export" 
   export_data_storage_location = "export_data_storage_location of billing_account_cost_management_export" 
   export_data_options = "export_data_options of billing_account_cost_management_export" 
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
| **var.billing_account_id** | string | True | -  |  -  |  The id of the billing account on which to create an export. Changing this forces a new resource to be created. | 
| **var.recurrence_type** | string | True | -  |  `Annually`, `Daily`, `Monthly`, `Weekly`  |  How often the requested information will be exported. Valid values include `Annually`, `Daily`, `Monthly`, `Weekly`. | 
| **var.recurrence_period_start_date** | datetime | True | -  |  -  |  The date the export will start capturing information. | 
| **var.recurrence_period_end_date** | datetime | True | -  |  -  |  The date the export will stop capturing information. | 
| **var.export_data_storage_location** | block | True | -  |  -  |  A `export_data_storage_location` block. | 
| `export_data_storage_location` block structure: || 
|   container_id (string): (REQUIRED) The Resource Manager ID of the container where exports will be uploaded. Changing this forces a new resource to be created. ||
|   root_folder_path (string): (REQUIRED) The path of the directory where exports will be uploaded. Changing this forces a new resource to be created. ||
| **var.export_data_options** | block | True | -  |  -  |  A `export_data_options` block. | 
| `export_data_options` block structure: || 
|   type (string): (REQUIRED) The type of the query. Possible values are 'ActualCost', 'AmortizedCost' and 'Usage'. ||
|   time_frame (string): (REQUIRED) The time frame for pulling data for the query. If custom, then a specific time period must be provided. Possible values include: 'WeekToDate', 'MonthToDate', 'BillingMonthToDate', 'TheLast7Days', 'TheLastMonth', 'TheLastBillingMonth', 'Custom'. ||
| **var.active** | bool | False | `True`  |  -  |  Is the cost management export active? Default is `true`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Cost Management Export for this Billing Account. | 

Additionally, all variables are provided as outputs.
