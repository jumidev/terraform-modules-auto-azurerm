# azurerm_monitor_scheduled_query_rules_log

Manages a LogToMetricAction Scheduled Query Rules resource within Azure Monitor.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the scheduled query rule. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the scheduled query rule instance. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the Azure Region where the resource should exist. Changing this forces a new resource to be created. | 
| **criteria** | block | True | -  |  -  | A `criteria` block. | 
| **data_source_id** | string | True | -  |  -  | The resource URI over which log search query is to be run. | 
| **authorized_resource_ids** | list | False | -  |  -  | A list of IDs of Resources referred into query. | 
| **description** | string | False | -  |  -  | The description of the scheduled query rule. | 
| **enabled** | bool | False | `True`  |  -  | Whether this scheduled query rule is enabled. Default is `true`. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

