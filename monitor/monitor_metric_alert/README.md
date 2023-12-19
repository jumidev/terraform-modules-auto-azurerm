# azurerm_monitor_metric_alert

Manages a Metric Alert within Azure Monitor.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "monitor/monitor_metric_alert"   
}

inputs = {
   name = "The name of the Metric Alert"   
   resource_group_name = "${resource_group}"   
   scopes = "A set of strings of resource IDs at which the metric criteria should be applied..."   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The name of the Metric Alert. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the Metric Alert instance. Changing this forces a new resource to be created. | 
| **scopes** | string |  A set of strings of resource IDs at which the metric criteria should be applied. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **criteria** | [block](#criteria-block-structure) |  -  |  -  |  One or more (static) `criteria` blocks. | 
| **dynamic_criteria** | [block](#dynamic_criteria-block-structure) |  -  |  -  |  A `dynamic_criteria` block. | 
| **application_insights_web_test_location_availability_criteria** | [block](#application_insights_web_test_location_availability_criteria-block-structure) |  -  |  -  |  A `application_insights_web_test_location_availability_criteria` block. | 
| **action** | [block](#action-block-structure) |  -  |  -  |  One or more `action` blocks. | 
| **enabled** | bool |  `True`  |  -  |  Should this Metric Alert be enabled? Defaults to `true`. | 
| **auto_mitigate** | bool |  `True`  |  -  |  Should the alerts in this Metric Alert be auto resolved? Defaults to `true`. | 
| **description** | string |  -  |  -  |  The description of this Metric Alert. | 
| **frequency** | string |  `PT1M`  |  `PT1M`, `PT5M`, `PT15M`, `PT30M`, `PT1H`  |  The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are `PT1M`, `PT5M`, `PT15M`, `PT30M` and `PT1H`. Defaults to `PT1M`. | 
| **severity** | string |  `3`  |  `0`, `1`, `2`, `3`, `4`  |  The severity of this Metric Alert. Possible values are `0`, `1`, `2`, `3` and `4`. Defaults to `3`. | 
| **target_resource_type** | string |  -  |  -  |  The resource type (e.g. `Microsoft.Compute/virtualMachines`) of the target resource. | 
| **target_resource_location** | string |  -  |  -  |  The location of the target resource. | 
| **window_size** | string |  `PT5M`  |  `PT1M`, `PT5M`, `PT15M`, `PT30M`, `PT1H`, `PT6H`, `PT12H`, `P1D`  |  The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than `frequency`. Possible values are `PT1M`, `PT5M`, `PT15M`, `PT30M`, `PT1H`, `PT6H`, `PT12H` and `P1D`. Defaults to `PT5M`. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 

### `action` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `action_group_id` | string | Yes | - | The ID of the Action Group can be sourced from [the 'azurerm_monitor_action_group' resource](./monitor_action_group.html) |
| `webhook_properties` | string | No | - | The map of custom string properties to include with the post operation. These data are appended to the webhook payload. |

### `criteria` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `metric_namespace` | string | Yes | - | One of the metric namespaces to be monitored. |
| `metric_name` | string | Yes | - | One of the metric names to be monitored. |
| `aggregation` | string | Yes | - | The statistic that runs over the metric values. Possible values are 'Average', 'Count', 'Minimum', 'Maximum' and 'Total'. |
| `operator` | string | Yes | - | The criteria operator. Possible values are 'Equals', 'GreaterThan', 'GreaterThanOrEqual', 'LessThan' and 'LessThanOrEqual'. |
| `threshold` | string | Yes | - | The criteria threshold value that activates the alert. |
| `dimension` | [block](#dimension-block-structure) | No | - | One or more 'dimension' blocks. |
| `skip_metric_validation` | bool | No | False | Skip the metric validation to allow creating an alert rule on a custom metric that isn't yet emitted? Defaults to 'false'. |

### `dynamic_criteria` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `metric_namespace` | string | Yes | - | One of the metric namespaces to be monitored. |
| `metric_name` | string | Yes | - | One of the metric names to be monitored. |
| `aggregation` | string | Yes | - | The statistic that runs over the metric values. Possible values are 'Average', 'Count', 'Minimum', 'Maximum' and 'Total'. |
| `operator` | string | Yes | - | The criteria operator. Possible values are 'LessThan', 'GreaterThan' and 'GreaterOrLessThan'. |
| `alert_sensitivity` | string | Yes | - | The extent of deviation required to trigger an alert. Possible values are 'Low', 'Medium' and 'High'. |
| `dimension` | [block](#dimension-block-structure) | No | - | One or more 'dimension' blocks. |
| `evaluation_total_count` | number | No | 4 | The number of aggregated lookback points. The lookback time window is calculated based on the aggregation granularity ('window_size') and the selected number of aggregated points. Defaults to '4'. |
| `evaluation_failure_count` | number | No | 4 | The number of violations to trigger an alert. Should be smaller or equal to 'evaluation_total_count'. Defaults to '4'. |
| `ignore_data_before` | string | No | - | The [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) date from which to start learning the metric historical data and calculate the dynamic thresholds. |
| `skip_metric_validation` | string | No | - | Skip the metric validation to allow creating an alert rule on a custom metric that isn't yet emitted? |

### `application_insights_web_test_location_availability_criteria` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `web_test_id` | string | Yes | - | The ID of the Application Insights Web Test. |
| `component_id` | string | Yes | - | The ID of the Application Insights Resource. |
| `failed_location_count` | number | Yes | - | The number of failed locations. |

### `dimension` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | One of the dimension names. |
| `operator` | string | Yes | - | The dimension operator. Possible values are 'Include', 'Exclude' and 'StartsWith'. |
| `values` | string | Yes | - | The list of dimension values. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the metric alert. | 

Additionally, all variables are provided as outputs.
