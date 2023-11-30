# azurerm_subscription_cost_management_view

Manages an Azure Cost Management View for a Subscription.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.accumulated** | bool | True | -  |  Whether the costs data in the Cost Management View are accumulated over time. Changing this forces a new Cost Management View for a Subscription to be created. | 
| **var.chart_type** | string | True | `Area`, `GroupedColumn`, `Line`, `StackedColumn`, `Table`  |  Chart type of the main view in Cost Analysis. Possible values are `Area`, `GroupedColumn`, `Line`, `StackedColumn` and `Table`. | 
| **var.dataset** | block | True | -  |  A `dataset` block. | 
| **var.display_name** | string | True | -  |  User visible input name of the Cost Management View. | 
| **var.name** | string | True | -  |  The name which should be used for this Cost Management View for a Subscription. Changing this forces a new Cost Management View for a Subscription to be created. | 
| **var.report_type** | string | True | -  |  The type of the report. The only possible value is `Usage`. | 
| **var.subscription_id** | string | True | -  |  The ID of the Subscription this View is scoped to. Changing this forces a new Cost Management View for a Subscription to be created. | 
| **var.timeframe** | string | True | `Custom`, `MonthToDate`, `WeekToDate`, `YearToDate`  |  The time frame for pulling data for the report. Possible values are `Custom`, `MonthToDate`, `WeekToDate` and `YearToDate`. | 
| **var.kpi** | block | False | -  |  One or more `kpi` blocks, to show in Cost Analysis UI. | 
| **var.pivot** | block | False | -  |  One or more `pivot` blocks, containing the configuration of 3 sub-views in the Cost Analysis UI. Non table views should have three pivots. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **accumulated** | bool  | - | 
| **chart_type** | string  | - | 
| **dataset** | block  | - | 
| **display_name** | string  | - | 
| **name** | string  | - | 
| **report_type** | string  | - | 
| **subscription_id** | string  | - | 
| **timeframe** | string  | - | 
| **kpi** | block  | - | 
| **pivot** | block  | - | 
| **id** | string  | The ID of the Cost Management View for a Subscription. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cost_management/subscription_cost_management_view" 
}

inputs = {
   accumulated = "accumulated of subscription_cost_management_view" 
   chart_type = "chart_type of subscription_cost_management_view" 
   dataset = "dataset of subscription_cost_management_view" 
   display_name = "display_name of subscription_cost_management_view" 
   name = "name of subscription_cost_management_view" 
   report_type = "report_type of subscription_cost_management_view" 
   subscription_id = "subscription_id of subscription_cost_management_view" 
   timeframe = "timeframe of subscription_cost_management_view" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```