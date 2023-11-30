# azurerm_monitor_data_collection_rule

Manages a Data Collection Rule.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "monitor/monitor_data_collection_rule" 
}

inputs = {
   data_flow = "data_flow of monitor_data_collection_rule" 
   destinations = "destinations of monitor_data_collection_rule" 
   location = "${location}" 
   name = "name of monitor_data_collection_rule" 
   resource_group_name = "${resource_group}" 
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
| **var.data_flow** | block | True | -  |  One or more `data_flow` blocks. | | `data_flow` block structure: || 
|   destinations (string): (REQUIRED) Specifies a list of destination names. A 'azure_monitor_metrics' data source only allows for stream of kind 'Microsoft-InsightsMetrics'. ||
|   streams (string): (REQUIRED) Specifies a list of streams. Possible values include but not limited to 'Microsoft-Event', 'Microsoft-InsightsMetrics', 'Microsoft-Perf', 'Microsoft-Syslog', 'Microsoft-WindowsEvent', and 'Microsoft-PrometheusMetrics'. ||
|   built_in_transform (string): The built-in transform to transform stream data. ||
|   output_stream (string): The output stream of the transform. Only required if the data flow changes data to a different stream. ||
|   transform_kql (string): The KQL query to transform stream data. ||

| **var.destinations** | block | True | -  |  A `destinations` block. | | `destinations` block structure: || 
|   azure_monitor_metrics (block): A 'azure_monitor_metrics' block. ||
|   event_hub (block): One or more 'event_hub' blocks. ||
|   event_hub_direct (block): One or more 'event_hub' blocks. ||
|   log_analytics (block): One or more 'log_analytics' blocks. ||
|   monitor_account (block): One or more 'monitor_account' blocks. ||
|   storage_blob (block): One or more 'storage_blob' blocks. ||
|   storage_blob_direct (block): One or more 'storage_blob_direct' blocks. ||
|   storage_table_direct (block): One or more 'storage_table_direct' blocks. ||

| **var.location** | string | True | -  |  The Azure Region where the Data Collection Rule should exist. Changing this forces a new Data Collection Rule to be created. | 
| **var.name** | string | True | -  |  The name which should be used for this Data Collection Rule. Changing this forces a new Data Collection Rule to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group where the Data Collection Rule should exist. Changing this forces a new Data Collection Rule to be created. | 
| **var.data_collection_endpoint_id** | string | False | -  |  The resource ID of the Data Collection Endpoint that this rule can be used with. | 
| **var.data_sources** | block | False | -  |  A `data_sources` block. This property is optional and can be omitted if the rule is meant to be used via direct calls to the provisioned endpoint. | | `data_sources` block structure: || 
|   data_import (block): A 'data_import' block. ||
|   extension (block): One or more 'extension' blocks. ||
|   iis_log (block): One or more 'iis_log' blocks. ||
|   log_file (block): One or more 'log_file' blocks. ||
|   performance_counter (block): One or more 'performance_counter' blocks. ||
|   platform_telemetry (block): One or more 'platform_telemetry' blocks. ||
|   prometheus_forwarder (block): One or more 'prometheus_forwarder' blocks. ||
|   syslog (block): One or more 'syslog' blocks. ||
|   windows_event_log (block): One or more 'windows_event_log' blocks. ||
|   windows_firewall_log (block): One or more 'windows_firewall_log' blocks. ||

| **var.description** | string | False | -  |  The description of the Data Collection Rule. | 
| **var.identity** | block | False | -  |  An `identity` block. | | `identity` block structure: || 
|   type (string): (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Data Collection Rule. Possible values are 'SystemAssigned' and 'UserAssigned'. ||
|   identity_ids (list): A list of User Assigned Managed Identity IDs to be assigned to this Data Collection Rule. Currently, up to 1 identity is supported. ||

| **var.kind** | string | False | `Linux`, `Windows`, `AgentDirectToStore`, `WorkspaceTransforms`  |  The kind of the Data Collection Rule. Possible values are `Linux`, `Windows`, `AgentDirectToStore` and `WorkspaceTransforms`. A rule of kind `Linux` does not allow for `windows_event_log` data sources. And a rule of kind `Windows` does not allow for `syslog` data sources. If kind is not specified, all kinds of data sources are allowed. | 
| **var.stream_declaration** | block | False | -  |  A `stream_declaration` block. | | `stream_declaration` block structure: || 
|   stream_name (string): (REQUIRED) The name of the custom stream. This name should be unique across all 'stream_declaration' blocks. ||
|   column (list): (REQUIRED) One or more 'column' blocks. ||

| **var.tags** | map | False | -  |  A mapping of tags which should be assigned to the Data Collection Rule. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Collection Rule. | 
| **immutable_id** | string | No  | The immutable ID of the Data Collection Rule. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
