# azurerm_consumption_budget_subscription

Manages a Subscription Consumption Budget.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "consumption/consumption_budget_subscription" 
}

inputs = {
   name = "name of consumption_budget_subscription" 
   subscription_id = "subscription_id of consumption_budget_subscription" 
   amount = "amount of consumption_budget_subscription" 
   time_period = "time_period of consumption_budget_subscription" 
   notification = "notification of consumption_budget_subscription" 
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
| **var.name** | string | True | -  |  -  |  The name which should be used for this Subscription Consumption Budget. Changing this forces a new resource to be created. | 
| **var.subscription_id** | string | True | -  |  -  |  The ID of the Subscription for which to create a Consumption Budget. Changing this forces a new resource to be created. | 
| **var.amount** | string | True | -  |  -  |  The total amount of cost to track with the budget. | 
| **var.time_grain** | string | False | `Monthly`  |  `BillingAnnual`, `BillingMonth`, `BillingQuarter`, `Annually`, `Monthly`, `Quarterly`  |  The time covered by a budget. Tracking of the amount will be reset based on the time grain. Must be one of `BillingAnnual`, `BillingMonth`, `BillingQuarter`, `Annually`, `Monthly` and `Quarterly`. Defaults to `Monthly`. Changing this forces a new resource to be created. | 
| **var.time_period** | block | True | -  |  -  |  A `time_period` block. | 
| **var.notification** | block | True | -  |  -  |  One or more `notification` blocks. | 
| **var.filter** | block | False | -  |  -  |  A `filter` block. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Subscription Consumption Budget. | 
| **etag** | string | No  | The ETag of the Subscription Consumption Budget. | 

Additionally, all variables are provided as outputs.
