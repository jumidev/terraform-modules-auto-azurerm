# azurerm_monitor_scheduled_query_rules_alert

Manages an AlertingAction Scheduled Query Rules resource within Azure Monitor.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name of the scheduled query rule. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group in which to create the scheduled query rule instance. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the Azure Region where the resource should exist. Changing this forces a new resource to be created. | 
| **var.data_source_id** | string | True | -  |  -  |  The resource URI over which log search query is to be run. | 
| **var.frequency** | string | True | -  |  -  |  Frequency (in minutes) at which rule condition should be evaluated. Values must be between 5 and 1440 (inclusive). | 
| **var.query** | string | True | -  |  -  |  Log search query. | 
| **var.time_window** | string | True | -  |  -  |  Time window for which data needs to be fetched for query (must be greater than or equal to `frequency`). Values must be between 5 and 2880 (inclusive). | 
| **var.trigger** | block | True | -  |  -  |  A `trigger` block. | 
| **var.action** | block | True | -  |  -  |  An `action` block. | 
| **var.authorized_resource_ids** | string | False | -  |  -  |  List of Resource IDs referred into query. | 
| **var.auto_mitigation_enabled** | bool | False | `False`  |  -  |  Should the alerts in this Metric Alert be auto resolved? Defaults to `false`. -> **NOTE** `auto_mitigation_enabled` and `throttling` are mutually exclusive and cannot both be set. | 
| **var.description** | string | False | -  |  -  |  The description of the scheduled query rule. | 
| **var.enabled** | bool | False | `True`  |  -  |  Whether this scheduled query rule is enabled. Default is `true`. | 
| **var.query_type** | string | False | `ResultCount`  |  `ResultCount`, `Number`  |  The type of query results. Possible values are `ResultCount` and `Number`. Default is `ResultCount`. If set to `ResultCount`, `query` must include an `AggregatedValue` column of a numeric type, for example, `Heartbeat | summarize AggregatedValue = count() by bin(TimeGenerated, 5m)`. | 
| **var.severity** | string | False | -  |  -  |  Severity of the alert. Possible values include: 0, 1, 2, 3, or 4. | 
| **var.throttling** | string | False | -  |  -  |  Time (in minutes) for which Alerts should be throttled or suppressed. Values must be between 0 and 10000 (inclusive). | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **data_source_id** | string  | - | 
| **frequency** | string  | - | 
| **query** | string  | - | 
| **time_window** | string  | - | 
| **trigger** | block  | - | 
| **action** | block  | - | 
| **authorized_resource_ids** | string  | - | 
| **auto_mitigation_enabled** | bool  | - | 
| **description** | string  | - | 
| **enabled** | bool  | - | 
| **query_type** | string  | - | 
| **severity** | string  | - | 
| **throttling** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the scheduled query rule. | 