# azurerm_subscription_cost_management_view

Manages an Azure Cost Management View for a Subscription.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cost_management/subscription_cost_management_view" 
}

inputs = {
   accumulated = "accumulated of subscription_cost_management_view" 
   chart_type = "chart_type of subscription_cost_management_view" 
   dataset = {
      example_dataset = {
         aggregation = "..."   
         granularity = "..."   
      }
  
   }
 
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

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **accumulated** | bool |  -  |  Whether the costs data in the Cost Management View are accumulated over time. Changing this forces a new Cost Management View for a Subscription to be created. | 
| **chart_type** | string |  `Area`, `GroupedColumn`, `Line`, `StackedColumn`, `Table`  |  Chart type of the main view in Cost Analysis. Possible values are `Area`, `GroupedColumn`, `Line`, `StackedColumn` and `Table`. | 
| **dataset** | [block](#dataset-block-structure) |  -  |  A `dataset` block. | 
| **display_name** | string |  -  |  User visible input name of the Cost Management View. | 
| **name** | string |  -  |  The name which should be used for this Cost Management View for a Subscription. Changing this forces a new Cost Management View for a Subscription to be created. | 
| **report_type** | string |  -  |  The type of the report. The only possible value is `Usage`. | 
| **subscription_id** | string |  -  |  The ID of the Subscription this View is scoped to. Changing this forces a new Cost Management View for a Subscription to be created. | 
| **timeframe** | string |  `Custom`, `MonthToDate`, `WeekToDate`, `YearToDate`  |  The time frame for pulling data for the report. Possible values are `Custom`, `MonthToDate`, `WeekToDate` and `YearToDate`. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **kpi** | [block](#kpi-block-structure) |  One or more `kpi` blocks, to show in Cost Analysis UI. | 
| **pivot** | [block](#pivot-block-structure) |  One or more `pivot` blocks, containing the configuration of 3 sub-views in the Cost Analysis UI. Non table views should have three pivots. | 

### `grouping` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | The type of the column. Possible values are 'Dimension' and 'TagKey'. |

### `dataset` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `aggregation` | list | Yes | - | One or more 'aggregation' blocks. |
| `granularity` | string | Yes | - | The granularity of rows in the report. Possible values are 'Daily' and 'Monthly'. |
| `grouping` | [block](#dataset-block-structure) | No | - | One or more 'grouping' blocks. |
| `sorting` | [block](#dataset-block-structure) | No | - | One or more 'sorting' blocks, containing the order by expression to be used in the report |

### `sorting` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `direction` | string | Yes | - | Direction of sort. Possible values are 'Ascending' and 'Descending'. |

### `pivot` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | The data type to show in this sub-view. Possible values are 'Dimension' and 'TagKey'. |

### `kpi` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | KPI type. Possible values are 'Budget' and 'Forecast'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Cost Management View for a Subscription. | 

Additionally, all variables are provided as outputs.
