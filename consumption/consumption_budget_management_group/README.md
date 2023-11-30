# azurerm_consumption_budget_management_group

Manages a Consumption Budget for a Management Group.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "consumption/consumption_budget_management_group" 
}

inputs = {
   name = "name of consumption_budget_management_group" 
   management_group_id = "management_group_id of consumption_budget_management_group" 
   amount = "amount of consumption_budget_management_group" 
   time_period = "time_period of consumption_budget_management_group" 
   notification = "notification of consumption_budget_management_group" 
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
| **var.name** | string | True | -  |  -  |  The name which should be used for this Management Group Consumption Budget. Changing this forces a new resource to be created. | 
| **var.management_group_id** | string | True | -  |  -  |  The ID of the Management Group. Changing this forces a new resource to be created. | 
| **var.amount** | string | True | -  |  -  |  The total amount of cost to track with the budget. | 
| **var.time_grain** | string | False | `Monthly`  |  `BillingAnnual`, `BillingMonth`, `BillingQuarter`, `Annually`, `Monthly`, `Quarterly`  |  The time covered by a budget. Tracking of the amount will be reset based on the time grain. Must be one of `BillingAnnual`, `BillingMonth`, `BillingQuarter`, `Annually`, `Monthly` and `Quarterly`. Defaults to `Monthly`. Changing this forces a new resource to be created. | 
| **var.time_period** | block | True | -  |  -  |  A `time_period` block. | | `time_period` block structure: || 
|   start_date (datetime): (REQUIRED) The start date for the budget. The start date must be first of the month and should be less than the end date. Budget start date must be on or after June 1, 2017. Future start date should not be more than twelve months. Past start date should be selected within the timegrain period. Changing this forces a new resource to be created. ||
|   end_date (datetime): The end date for the budget. If not set this will be 10 years after the start date. ||

| **var.notification** | block | True | -  |  -  |  One or more `notification` blocks. | | `notification` block structure: || 
|   operator (string): (REQUIRED) The comparison operator for the notification. Must be one of 'EqualTo', 'GreaterThan', or 'GreaterThanOrEqualTo'. ||
|   threshold (string): (REQUIRED) Threshold value associated with a notification. Notification is sent when the cost exceeded the threshold. It is always percent and has to be between 0 and 1000. ||
|   contact_emails (string): (REQUIRED) Specifies a list of email addresses to send the budget notification to when the threshold is exceeded. ||
|   threshold_type (string): The type of threshold for the notification. This determines whether the notification is triggered by forecasted costs or actual costs. The allowed values are 'Actual' and 'Forecasted'. Default is 'Actual'. Changing this forces a new resource to be created. ||
|   enabled (bool): Should the notification be enabled? Defaults to 'true'. ||

| **var.filter** | block | False | -  |  -  |  A `filter` block. | | `filter` block structure: || 
|   dimension (block): One or more 'dimension' blocks to filter the budget on. ||
|   tag (block): One or more 'tag' blocks to filter the budget on. ||




## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Management Group Consumption Budget. | 
| **etag** | string | No  | The ETag of the Management Group Consumption Budget. | 

Additionally, all variables are provided as outputs.
