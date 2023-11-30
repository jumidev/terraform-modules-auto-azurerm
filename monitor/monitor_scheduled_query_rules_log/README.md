# azurerm_monitor_scheduled_query_rules_log

Manages a LogToMetricAction Scheduled Query Rules resource within Azure Monitor.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "monitor/monitor_scheduled_query_rules_log" 
}

inputs = {
   name = "name of monitor_scheduled_query_rules_log" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   criteria = "criteria of monitor_scheduled_query_rules_log" 
   data_source_id = "data_source_id of monitor_scheduled_query_rules_log" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name of the scheduled query rule. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the resource group in which to create the scheduled query rule instance. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  Specifies the Azure Region where the resource should exist. Changing this forces a new resource to be created. | 
| **var.criteria** | block | True | -  |  A `criteria` block. | | `criteria` block structure: || 
|   dimension (block): (REQUIRED) A 'dimension' block. ||
|   metric_name (string): (REQUIRED) Name of the metric. Supported metrics are listed in the Azure Monitor [Microsoft.OperationalInsights/workspaces](https://docs.microsoft.com/azure/azure-monitor/platform/metrics-supported#microsoftoperationalinsightsworkspaces) metrics namespace. ||

| **var.data_source_id** | string | True | -  |  The resource URI over which log search query is to be run. | 
| **var.authorized_resource_ids** | list | False | -  |  A list of IDs of Resources referred into query. | 
| **var.description** | string | False | -  |  The description of the scheduled query rule. | 
| **var.enabled** | bool | False | `True`  |  Whether this scheduled query rule is enabled. Default is `true`. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the scheduled query rule. | 

Additionally, all variables are provided as outputs.
