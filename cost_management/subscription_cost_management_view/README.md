# azurerm_subscription_cost_management_view

Manages an Azure Cost Management View for a Subscription.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **accumulated** | bool | True | -  |  -  | Whether the costs data in the Cost Management View are accumulated over time. Changing this forces a new Cost Management View for a Subscription to be created. | 
| **chart_type** | string | True | -  |  `Area`, `GroupedColumn`, `Line`, `StackedColumn`, `Table`  | Chart type of the main view in Cost Analysis. Possible values are `Area`, `GroupedColumn`, `Line`, `StackedColumn` and `Table`. | 
| **dataset** | block | True | -  |  -  | A `dataset` block. | 
| **display_name** | string | True | -  |  -  | User visible input name of the Cost Management View. | 
| **name** | string | True | -  |  -  | The name which should be used for this Cost Management View for a Subscription. Changing this forces a new Cost Management View for a Subscription to be created. | 
| **report_type** | string | True | -  |  -  | The type of the report. The only possible value is `Usage`. | 
| **subscription_id** | string | True | -  |  -  | The ID of the Subscription this View is scoped to. Changing this forces a new Cost Management View for a Subscription to be created. | 
| **timeframe** | string | True | -  |  `Custom`, `MonthToDate`, `WeekToDate`, `YearToDate`  | The time frame for pulling data for the report. Possible values are `Custom`, `MonthToDate`, `WeekToDate` and `YearToDate`. | 
| **kpi** | block | False | -  |  -  | One or more `kpi` blocks, to show in Cost Analysis UI. | 
| **pivot** | block | False | -  |  -  | One or more `pivot` blocks, containing the configuration of 3 sub-views in the Cost Analysis UI. Non table views should have three pivots. | 

