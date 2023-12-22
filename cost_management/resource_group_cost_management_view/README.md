# azurerm_resource_group_cost_management_view

Manages an Azure Cost Management View for a Resource Group.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "cost_management/resource_group_cost_management_view"   
}

inputs = {
   accumulated = "Whether the costs data in the Cost Management View are accumulated over time..."   
   chart_type = "Chart type of the main view in Cost Analysis"   
   dataset = {
      aggregation = "..."      
      granularity = "..."      
   }
   
   display_name = "User visible input name of the Cost Management View..."   
   name = "The name which should be used for this Cost Management View for a Resource Group..."   
   report_type = "The type of the report"   
   resource_group_id = "The ID of the Resource Group this View is scoped to..."   
   timeframe = "The time frame for pulling data for the report"   
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
| **accumulated** | bool |  -  |  Whether the costs data in the Cost Management View are accumulated over time. Changing this forces a new Cost Management View for a Resource Group to be created. | 
| **chart_type** | string |  `Area`, `GroupedColumn`, `Line`, `StackedColumn`, `Table`  |  Chart type of the main view in Cost Analysis. Possible values are `Area`, `GroupedColumn`, `Line`, `StackedColumn` and `Table`. | 
| **dataset** | [block](#dataset-block-structure) |  -  |  A `dataset` block. | 
| **display_name** | string |  -  |  User visible input name of the Cost Management View. | 
| **name** | string |  -  |  The name which should be used for this Cost Management View for a Resource Group. Changing this forces a new Cost Management View for a Resource Group to be created. | 
| **report_type** | string |  -  |  The type of the report. The only possible value is `Usage`. | 
| **resource_group_id** | string |  -  |  The ID of the Resource Group this View is scoped to. Changing this forces a new Cost Management View for a Resource Group to be created. | 
| **timeframe** | string |  `Custom`, `MonthToDate`, `WeekToDate`, `YearToDate`  |  The time frame for pulling data for the report. Possible values are `Custom`, `MonthToDate`, `WeekToDate` and `YearToDate`. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **kpi** | [block](#kpi-block-structure) |  One or more `kpi` blocks, to show in Cost Analysis UI. | 
| **pivot** | [block](#pivot-block-structure) |  One or more `pivot` blocks, containing the configuration of 3 sub-views in the Cost Analysis UI. Non table views should have three pivots. | 

### `kpi` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | KPI type. Possible values are 'Budget' and 'Forecast'. |

### `grouping` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the column to group. |
| `type` | string | Yes | - | The type of the column. Possible values are 'Dimension' and 'TagKey'. |

### `sorting` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `direction` | string | Yes | - | Direction of sort. Possible values are 'Ascending' and 'Descending'. |
| `name` | string | Yes | - | The name of the column to sort. |

### `dataset` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `aggregation` | string | Yes | - | One or more 'aggregation' blocks. |
| `granularity` | string | Yes | - | The granularity of rows in the report. Possible values are 'Daily' and 'Monthly'. |
| `grouping` | [block](#grouping-block-structure) | No | - | One or more 'grouping' blocks. |
| `sorting` | [block](#sorting-block-structure) | No | - | One or more 'sorting' blocks, containing the order by expression to be used in the report |

### `pivot` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the column which should be used for this sub-view in the Cost Analysis UI. |
| `type` | string | Yes | - | The data type to show in this sub-view. Possible values are 'Dimension' and 'TagKey'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Cost Management View for a Resource Group. | 

Additionally, all variables are provided as outputs.
