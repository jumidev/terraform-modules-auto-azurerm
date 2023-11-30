# azurerm_subscription_cost_management_view

Manages an Azure Cost Management View for a Subscription.

## Example minimal component.hclt

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

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.accumulated** | bool | True | -  |  Whether the costs data in the Cost Management View are accumulated over time. Changing this forces a new Cost Management View for a Subscription to be created. | 
| **var.chart_type** | string | True | `Area`, `GroupedColumn`, `Line`, `StackedColumn`, `Table`  |  Chart type of the main view in Cost Analysis. Possible values are `Area`, `GroupedColumn`, `Line`, `StackedColumn` and `Table`. | 
| **var.dataset** | block | True | -  |  A `dataset` block. | 
| `dataset` block structure: || 
|   aggregation (list): (REQUIRED) One or more 'aggregation' blocks. ||
|   granularity (string): (REQUIRED) The granularity of rows in the report. Possible values are 'Daily' and 'Monthly'. ||
|   grouping (block): One or more 'grouping' blocks. ||
|   sorting (block): One or more 'sorting' blocks, containing the order by expression to be used in the report ||
| **var.display_name** | string | True | -  |  User visible input name of the Cost Management View. | 
| **var.name** | string | True | -  |  The name which should be used for this Cost Management View for a Subscription. Changing this forces a new Cost Management View for a Subscription to be created. | 
| **var.report_type** | string | True | -  |  The type of the report. The only possible value is `Usage`. | 
| **var.subscription_id** | string | True | -  |  The ID of the Subscription this View is scoped to. Changing this forces a new Cost Management View for a Subscription to be created. | 
| **var.timeframe** | string | True | `Custom`, `MonthToDate`, `WeekToDate`, `YearToDate`  |  The time frame for pulling data for the report. Possible values are `Custom`, `MonthToDate`, `WeekToDate` and `YearToDate`. | 
| **var.kpi** | block | False | -  |  One or more `kpi` blocks, to show in Cost Analysis UI. | 
| `kpi` block structure: || 
|   type (string): (REQUIRED) KPI type. Possible values are 'Budget' and 'Forecast'. ||
| **var.pivot** | block | False | -  |  One or more `pivot` blocks, containing the configuration of 3 sub-views in the Cost Analysis UI. Non table views should have three pivots. | 
| `pivot` block structure: || 
|   name (string): (REQUIRED) The name of the column which should be used for this sub-view in the Cost Analysis UI. ||
|   type (string): (REQUIRED) The data type to show in this sub-view. Possible values are 'Dimension' and 'TagKey'. ||



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Cost Management View for a Subscription. | 

Additionally, all variables are provided as outputs.
