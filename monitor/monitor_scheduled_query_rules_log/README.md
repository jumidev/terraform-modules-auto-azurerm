# azurerm_monitor_scheduled_query_rules_log

Manages a LogToMetricAction Scheduled Query Rules resource within Azure Monitor.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name of the scheduled query rule. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the scheduled query rule instance. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | Specifies the Azure Region where the resource should exist. Changing this forces a new resource to be created. | 
| **var.criteria** | block | True | -  |  -  | A `criteria` block. | 
| **var.data_source_id** | string | True | -  |  -  | The resource URI over which log search query is to be run. | 
| **var.authorized_resource_ids** | list | False | -  |  -  | A list of IDs of Resources referred into query. | 
| **var.description** | string | False | -  |  -  | The description of the scheduled query rule. | 
| **var.enabled** | bool | False | `True`  |  -  | Whether this scheduled query rule is enabled. Default is `true`. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **criteria** | block  | - | 
| **data_source_id** | string  | - | 
| **authorized_resource_ids** | list  | - | 
| **description** | string  | - | 
| **enabled** | bool  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the scheduled query rule. | 