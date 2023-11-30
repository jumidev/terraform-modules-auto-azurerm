# azurerm_consumption_budget_resource_group

Manages a Resource Group Consumption Budget.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "consumption/consumption_budget_resource_group" 
}

inputs = {
   name = "name of consumption_budget_resource_group" 
   resource_group_id = "resource_group_id of consumption_budget_resource_group" 
   amount = "amount of consumption_budget_resource_group" 
   time_period = "time_period of consumption_budget_resource_group" 
   notification = "notification of consumption_budget_resource_group" 
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
| **var.name** | string | True | -  |  -  |  The name which should be used for this Resource Group Consumption Budget. Changing this forces a new Resource Group Consumption Budget to be created. | 
| **var.resource_group_id** | string | True | -  |  -  |  The ID of the Resource Group to create the consumption budget for in the form of /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1. Changing this forces a new Resource Group Consumption Budget to be created. | 
| **var.amount** | string | True | -  |  -  |  The total amount of cost to track with the budget. | 
| **var.time_grain** | string | False | `Monthly`  |  `BillingAnnual`, `BillingMonth`, `BillingQuarter`, `Annually`, `Monthly`, `Quarterly`  |  The time covered by a budget. Tracking of the amount will be reset based on the time grain. Must be one of `BillingAnnual`, `BillingMonth`, `BillingQuarter`, `Annually`, `Monthly` and `Quarterly`. Defaults to `Monthly`. Changing this forces a new resource to be created. | 
| **var.time_period** | block | True | -  |  -  |  A `time_period` block. | 
| **var.notification** | block | True | -  |  -  |  One or more `notification` blocks. | 
| **var.filter** | block | False | -  |  -  |  A `filter` block. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Resource Group Consumption Budget. | 
| **etag** | string | No  | The ETag of the Resource Group Consumption Budget | 

Additionally, all variables are provided as outputs.
