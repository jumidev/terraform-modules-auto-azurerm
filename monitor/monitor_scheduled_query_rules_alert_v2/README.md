# azurerm_monitor_scheduled_query_rules_alert_v2

Manages an AlertingAction Scheduled Query Rules Version 2 resource within Azure Monitor

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "monitor/monitor_scheduled_query_rules_alert_v2"   
}

inputs = {
   name = "Specifies the name which should be used for this Monitor Scheduled Query Rule..."   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   criteria = {
      operator = "..."      
      query = "..."      
      threshold = "..."      
      time_aggregation_method = "..."      
   }
   
   scopes = "Specifies the list of resource IDs that this scheduled query rule is scoped to..."   
   severity = "Severity of the alert"   
   window_duration = "Specifies the period of time in ISO 8601 duration format on which the Scheduled ..."   
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
| **name** | string |  -  |  Specifies the name which should be used for this Monitor Scheduled Query Rule. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  Specifies the name of the Resource Group where the Monitor Scheduled Query Rule should exist. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  Specifies the Azure Region where the Monitor Scheduled Query Rule should exist. Changing this forces a new resource to be created. | 
| **criteria** | [block](#criteria-block-structure) |  -  |  A `criteria` block. | 
| **scopes** | string |  -  |  Specifies the list of resource IDs that this scheduled query rule is scoped to. Changing this forces a new resource to be created. Currently, the API supports exactly 1 resource ID in the scopes list. | 
| **severity** | string |  -  |  Severity of the alert. Should be an integer between 0 and 4. Value of 0 is severest. | 
| **window_duration** | string |  `PT1M`, `PT5M`, `PT10M`, `PT15M`, `PT30M`, `PT45M`, `PT1H`, `PT2H`, `PT3H`, `PT4H`, `PT5H`, `PT6H`  |  Specifies the period of time in ISO 8601 duration format on which the Scheduled Query Rule will be executed (bin size). If `evaluation_frequency` is `PT1M`, possible values are `PT1M`, `PT5M`, `PT10M`, `PT15M`, `PT30M`, `PT45M`, `PT1H`, `PT2H`, `PT3H`, `PT4H`, `PT5H`, and `PT6H`. Otherwise, possible values are `PT5M`, `PT10M`, `PT15M`, `PT30M`, `PT45M`, `PT1H`, `PT2H`, `PT3H`, `PT4H`, `PT5H`, `PT6H`, `P1D`, and `P2D`. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **evaluation_frequency** | string |  -  |  `PT1M`, `PT5M`, `PT10M`, `PT15M`, `PT30M`, `PT45M`, `PT1H`, `PT2H`, `PT3H`, `PT4H`, `PT5H`, `PT6H`, `P1D`  |  How often the scheduled query rule is evaluated, represented in ISO 8601 duration format. Possible values are `PT1M`, `PT5M`, `PT10M`, `PT15M`, `PT30M`, `PT45M`, `PT1H`, `PT2H`, `PT3H`, `PT4H`, `PT5H`, `PT6H`, `P1D`. | 
| **action** | [block](#action-block-structure) |  -  |  -  |  An `action` block. | 
| **auto_mitigation_enabled** | bool |  `False`  |  -  |  Specifies the flag that indicates whether the alert should be automatically resolved or not. Value should be `true` or `false`. The default is `false`. | 
| **workspace_alerts_storage_enabled** | bool |  `False`  |  -  |  Specifies the flag which indicates whether this scheduled query rule check if storage is configured. Value should be `true` or `false`. The default is `false`. | 
| **description** | string |  -  |  -  |  Specifies the description of the scheduled query rule. | 
| **display_name** | string |  -  |  -  |  Specifies the display name of the alert rule. | 
| **enabled** | bool |  `True`  |  -  |  Specifies the flag which indicates whether this scheduled query rule is enabled. Value should be `true` or `false`. Defaults to `true`. | 
| **mute_actions_after_alert_duration** | string |  -  |  `PT5M`, `PT10M`, `PT15M`, `PT30M`, `PT45M`, `PT1H`, `PT2H`, `PT3H`, `PT4H`, `PT5H`, `PT6H`, `P1D`, `P2D`  |  Mute actions for the chosen period of time in ISO 8601 duration format after the alert is fired. Possible values are `PT5M`, `PT10M`, `PT15M`, `PT30M`, `PT45M`, `PT1H`, `PT2H`, `PT3H`, `PT4H`, `PT5H`, `PT6H`, `P1D` and `P2D`. | 
| **query_time_range_override** | string |  -  |  `PT5M`, `PT10M`, `PT15M`, `PT20M`, `PT30M`, `PT45M`, `PT1H`, `PT2H`, `PT3H`, `PT4H`, `PT5H`, `PT6H`, `P1D`, `P2D`  |  Set this if the alert evaluation period is different from the query time range. If not specified, the value is `window_duration`*`number_of_evaluation_periods`. Possible values are `PT5M`, `PT10M`, `PT15M`, `PT20M`, `PT30M`, `PT45M`, `PT1H`, `PT2H`, `PT3H`, `PT4H`, `PT5H`, `PT6H`, `P1D` and `P2D`. | 
| **skip_query_validation** | bool |  -  |  -  |  Specifies the flag which indicates whether the provided query should be validated or not. The default is false. | 
| **tags** | map |  -  |  -  |  A mapping of tags which should be assigned to the Monitor Scheduled Query Rule. | 
| **target_resource_types** | string |  -  |  -  |  List of resource type of the target resource(s) on which the alert is created/updated. For example if the scope is a resource group and targetResourceTypes is `Microsoft.Compute/virtualMachines`, then a different alert will be fired for each virtual machine in the resource group which meet the alert criteria. | 

### `failing_periods` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `minimum_failing_periods_to_trigger_alert` | int | Yes | - | Specifies the number of violations to trigger an alert. Should be smaller or equal to 'number_of_evaluation_periods'. Possible value is integer between 1 and 6. |
| `number_of_evaluation_periods` | int | Yes | - | Specifies the number of aggregated look-back points. The look-back time window is calculated based on the aggregation granularity 'window_duration' and the selected number of aggregated points. Possible value is integer between 1 and 6. |

### `criteria` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `operator` | string | Yes | - | Specifies the criteria operator. Possible values are 'Equal', 'GreaterThan', 'GreaterThanOrEqual', 'LessThan',and 'LessThanOrEqual'. |
| `query` | string | Yes | - | The query to run on logs. The results returned by this query are used to populate the alert. |
| `threshold` | string | Yes | - | Specifies the criteria threshold value that activates the alert. |
| `time_aggregation_method` | string | Yes | - | The type of aggregation to apply to the data points in aggregation granularity. Possible values are 'Average', 'Count', 'Maximum', 'Minimum',and 'Total'. |
| `dimension` | [block](#dimension-block-structure) | No | - | A 'dimension' block. |
| `failing_periods` | [block](#failing_periods-block-structure) | No | - | A 'failing_periods' block. |
| `metric_measure_column` | string | No | - | Specifies the column containing the metric measure number. |
| `resource_id_column` | string | No | - | Specifies the column containing the resource ID. The content of the column must be an uri formatted as resource ID. |

### `dimension` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | Name of the dimension. |
| `operator` | string | Yes | - | Operator for dimension values. Possible values are 'Exclude',and 'Include'. |
| `values` | string | Yes | - | List of dimension values. Use a wildcard '*' to collect all. |

### `action` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `action_groups` | string | No | - | List of Action Group resource IDs to invoke when the alert fires. |
| `custom_properties` | string | No | - | Specifies the properties of an alert payload. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Monitor Scheduled Query Rule. | 
| **created_with_api_version** | string | No  | The api-version used when creating this alert rule. | 
| **is_a_legacy_log_analytics_rule** | string | No  | True if this alert rule is a legacy Log Analytic Rule. | 
| **is_workspace_alerts_storage_configured** | string | No  | The flag indicates whether this Scheduled Query Rule has been configured to be stored in the customer's storage. | 

Additionally, all variables are provided as outputs.
