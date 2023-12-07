# azurerm_monitor_scheduled_query_rules_alert

Manages an AlertingAction Scheduled Query Rules resource within Azure Monitor.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "monitor/monitor_scheduled_query_rules_alert"   
}

inputs = {
   name = "The name of the scheduled query rule"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   data_source_id = "The resource URI over which log search query is to be run..."   
   frequency = "Frequency (in minutes) at which rule condition should be evaluated..."   
   query = "Log search query"   
   time_window = "Time window for which data needs to be fetched for query (must be greater than o..."   
   trigger = {
      operator = "..."      
      threshold = "..."      
   }
   
   action = {
      action_group = "..."      
   }
   
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
| **name** | string |  The name of the scheduled query rule. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the scheduled query rule instance. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the Azure Region where the resource should exist. Changing this forces a new resource to be created. | 
| **data_source_id** | string |  The resource URI over which log search query is to be run. | 
| **frequency** | string |  Frequency (in minutes) at which rule condition should be evaluated. Values must be between 5 and 1440 (inclusive). | 
| **query** | string |  Log search query. | 
| **time_window** | string |  Time window for which data needs to be fetched for query (must be greater than or equal to `frequency`). Values must be between 5 and 2880 (inclusive). | 
| **trigger** | [block](#trigger-block-structure) |  A `trigger` block. | 
| **action** | [block](#action-block-structure) |  An `action` block. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **authorized_resource_ids** | string |  -  |  -  |  List of Resource IDs referred into query. | 
| **auto_mitigation_enabled** | bool |  `False`  |  -  |  Should the alerts in this Metric Alert be auto resolved? Defaults to `false`. -> **NOTE** `auto_mitigation_enabled` and `throttling` are mutually exclusive and cannot both be set. | 
| **description** | string |  -  |  -  |  The description of the scheduled query rule. | 
| **enabled** | bool |  `True`  |  -  |  Whether this scheduled query rule is enabled. Default is `true`. | 
| **query_type** | string |  `ResultCount`  |  `ResultCount`, `Number`  |  The type of query results. Possible values are `ResultCount` and `Number`. Default is `ResultCount`. If set to `ResultCount`, `query` must include an `AggregatedValue` column of a numeric type, for example, `Heartbeat | summarize AggregatedValue = count() by bin(TimeGenerated, 5m)`. | 
| **severity** | string |  -  |  -  |  Severity of the alert. Possible values include: 0, 1, 2, 3, or 4. | 
| **throttling** | string |  -  |  -  |  Time (in minutes) for which Alerts should be throttled or suppressed. Values must be between 0 and 10000 (inclusive). | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 

### `metric_trigger` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `metric_trigger_type` | string | Yes | - | Metric Trigger Type - 'Consecutive' or 'Total'. |
| `operator` | string | Yes | - | Evaluation operation for rule - 'Equal', 'GreaterThan', GreaterThanOrEqual', 'LessThan', or 'LessThanOrEqual'. |
| `threshold` | string | Yes | - | The threshold of the metric trigger. Values must be between 0 and 10000 inclusive. |
| `metric_column` | string | No | - | Evaluation of metric on a particular column. |

### `trigger` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `metric_trigger` | [block](#metric_trigger-block-structure) | No | - | A 'metric_trigger' block. Trigger condition for metric query rule. |
| `operator` | string | Yes | - | Evaluation operation for rule - 'GreaterThan', GreaterThanOrEqual', 'LessThan', or 'LessThanOrEqual'. |
| `threshold` | string | Yes | - | Result or count threshold based on which rule should be triggered. Values must be between 0 and 10000 inclusive. |

### `action` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `action_group` | string | Yes | - | List of action group reference resource IDs. |
| `custom_webhook_payload` | string | No | - | Custom payload to be sent for all webhook payloads in alerting action. |
| `email_subject` | string | No | - | Custom subject override for all email ids in Azure action group. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the scheduled query rule. | 

Additionally, all variables are provided as outputs.
