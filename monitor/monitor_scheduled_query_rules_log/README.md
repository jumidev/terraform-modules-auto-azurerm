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
   criteria = {
      example_criteria = {
         dimension = "..."   
         metric_name = "..."   
      }
  
   }
 
   data_source_id = "data_source_id of monitor_scheduled_query_rules_log" 
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
| **var.name** | string  The name of the scheduled query rule. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string  The name of the resource group in which to create the scheduled query rule instance. Changing this forces a new resource to be created. | 
| **var.location** | string  Specifies the Azure Region where the resource should exist. Changing this forces a new resource to be created. | 
| **var.criteria** | block  A `criteria` block. | 
| **var.data_source_id** | string  The resource URI over which log search query is to be run. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.authorized_resource_ids** | list  -  |  A list of IDs of Resources referred into query. | 
| **var.description** | string  -  |  The description of the scheduled query rule. | 
| **var.enabled** | bool  `True`  |  Whether this scheduled query rule is enabled. Default is `true`. | 
| **var.tags** | map  -  |  A mapping of tags to assign to the resource. | 

### `criteria` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `dimension` | block | Yes | - | A 'dimension' block. |
| `metric_name` | string | Yes | - | Name of the metric. Supported metrics are listed in the Azure Monitor [Microsoft.OperationalInsights/workspaces](https://docs.microsoft.com/azure/azure-monitor/platform/metrics-supported#microsoftoperationalinsightsworkspaces) metrics namespace. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the scheduled query rule. | 

Additionally, all variables are provided as outputs.
