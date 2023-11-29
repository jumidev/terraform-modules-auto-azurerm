# azurerm_consumption_budget_management_group

Manages a Consumption Budget for a Management Group.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Management Group Consumption Budget. Changing this forces a new resource to be created. | 
| **management_group_id** | string | True | -  |  -  | The ID of the Management Group. Changing this forces a new resource to be created. | 
| **amount** | string | True | -  |  -  | The total amount of cost to track with the budget. | 
| **time_grain** | string | False | `Monthly`  |  `BillingAnnual`, `BillingMonth`, `BillingQuarter`, `Annually`, `Monthly`, `Quarterly`  | The time covered by a budget. Tracking of the amount will be reset based on the time grain. Must be one of `BillingAnnual`, `BillingMonth`, `BillingQuarter`, `Annually`, `Monthly` and `Quarterly`. Defaults to `Monthly`. Changing this forces a new resource to be created. | 
| **time_period** | block | True | -  |  -  | A `time_period` block. | 
| **notification** | block | True | -  |  -  | One or more `notification` blocks. | 
| **filter** | block | False | -  |  -  | A `filter` block. | 

