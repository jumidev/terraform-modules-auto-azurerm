# azurerm_resource_group_cost_management_view

Manages an Azure Cost Management View for a Resource Group.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cost_management/resource_group_cost_management_view" 
}

inputs = {
   accumulated = "accumulated of resource_group_cost_management_view" 
   chart_type = "chart_type of resource_group_cost_management_view" 
   dataset = {
      example_dataset = {
         aggregation = "..."   
         granularity = "..."   
      }
  
   }
 
   display_name = "display_name of resource_group_cost_management_view" 
   name = "name of resource_group_cost_management_view" 
   report_type = "report_type of resource_group_cost_management_view" 
   resource_group_id = "resource_group_id of resource_group_cost_management_view" 
   timeframe = "timeframe of resource_group_cost_management_view" 
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
| **var.accumulated** | bool | True | -  |  Whether the costs data in the Cost Management View are accumulated over time. Changing this forces a new Cost Management View for a Resource Group to be created. | 
| **var.chart_type** | string | True | `Area`, `GroupedColumn`, `Line`, `StackedColumn`, `Table`  |  Chart type of the main view in Cost Analysis. Possible values are `Area`, `GroupedColumn`, `Line`, `StackedColumn` and `Table`. | 
| **var.dataset** | block | True | -  |  A `dataset` block. | 
| **var.display_name** | string | True | -  |  User visible input name of the Cost Management View. | 
| **var.name** | string | True | -  |  The name which should be used for this Cost Management View for a Resource Group. Changing this forces a new Cost Management View for a Resource Group to be created. | 
| **var.report_type** | string | True | -  |  The type of the report. The only possible value is `Usage`. | 
| **var.resource_group_id** | string | True | -  |  The ID of the Resource Group this View is scoped to. Changing this forces a new Cost Management View for a Resource Group to be created. | 
| **var.timeframe** | string | True | `Custom`, `MonthToDate`, `WeekToDate`, `YearToDate`  |  The time frame for pulling data for the report. Possible values are `Custom`, `MonthToDate`, `WeekToDate` and `YearToDate`. | 
| **var.kpi** | block | False | -  |  One or more `kpi` blocks, to show in Cost Analysis UI. | 
| **var.pivot** | block | False | -  |  One or more `pivot` blocks, containing the configuration of 3 sub-views in the Cost Analysis UI. Non table views should have three pivots. | 

### `dataset` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `aggregation` | list | Yes | - | One or more 'aggregation' blocks. |
| `granularity` | string | Yes | - | The granularity of rows in the report. Possible values are 'Daily' and 'Monthly'. |
| `grouping` | block | No | - | One or more 'grouping' blocks. |
| `sorting` | block | No | - | One or more 'sorting' blocks, containing the order by expression to be used in the report |

### `kpi` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | KPI type. Possible values are 'Budget' and 'Forecast'. |

### `pivot` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | The data type to show in this sub-view. Possible values are 'Dimension' and 'TagKey'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Cost Management View for a Resource Group. | 

Additionally, all variables are provided as outputs.
