# azurerm_monitor_data_collection_rule

Manages a Data Collection Rule.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "monitor/monitor_data_collection_rule" 
}

inputs = {
   data_flow = {
      example_data_flow = {
         destinations = "..."   
         streams = "..."   
      }
  
   }
 
   destinations = {
      example_destinations = {
      }
  
   }
 
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
| **var.data_flow** | block | True | -  |  One or more `data_flow` blocks. | 
| **var.destinations** | block | True | -  |  A `destinations` block. | 
| **var.location** | string | True | -  |  The Azure Region where the Data Collection Rule should exist. Changing this forces a new Data Collection Rule to be created. | 
| **var.name** | string | True | -  |  The name which should be used for this Data Collection Rule. Changing this forces a new Data Collection Rule to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group where the Data Collection Rule should exist. Changing this forces a new Data Collection Rule to be created. | 
| **var.data_collection_endpoint_id** | string | False | -  |  The resource ID of the Data Collection Endpoint that this rule can be used with. | 
| **var.data_sources** | block | False | -  |  A `data_sources` block. This property is optional and can be omitted if the rule is meant to be used via direct calls to the provisioned endpoint. | 
| **var.description** | string | False | -  |  The description of the Data Collection Rule. | 
| **var.identity** | block | False | -  |  An `identity` block. | 
| **var.kind** | string | False | `Linux`, `Windows`, `AgentDirectToStore`, `WorkspaceTransforms`  |  The kind of the Data Collection Rule. Possible values are `Linux`, `Windows`, `AgentDirectToStore` and `WorkspaceTransforms`. A rule of kind `Linux` does not allow for `windows_event_log` data sources. And a rule of kind `Windows` does not allow for `syslog` data sources. If kind is not specified, all kinds of data sources are allowed. | 
| **var.stream_declaration** | block | False | -  |  A `stream_declaration` block. | 
| **var.tags** | map | False | -  |  A mapping of tags which should be assigned to the Data Collection Rule. | 

### `data_flow` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `destinations` | string | Yes | - | Specifies a list of destination names. A 'azure_monitor_metrics' data source only allows for stream of kind 'Microsoft-InsightsMetrics'. |
| `streams` | string | Yes | - | Specifies a list of streams. Possible values include but not limited to 'Microsoft-Event', 'Microsoft-InsightsMetrics', 'Microsoft-Perf', 'Microsoft-Syslog', 'Microsoft-WindowsEvent', and 'Microsoft-PrometheusMetrics'. |
| `built_in_transform` | string | No | - | The built-in transform to transform stream data. |
| `output_stream` | string | No | - | The output stream of the transform. Only required if the data flow changes data to a different stream. |
| `transform_kql` | string | No | - | The KQL query to transform stream data. |

### `destinations` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `azure_monitor_metrics` | block | No | - | A 'azure_monitor_metrics' block. |
| `event_hub` | block | No | - | One or more 'event_hub' blocks. |
| `event_hub_direct` | block | No | - | One or more 'event_hub' blocks. |
| `log_analytics` | block | No | - | One or more 'log_analytics' blocks. |
| `monitor_account` | block | No | - | One or more 'monitor_account' blocks. |
| `storage_blob` | block | No | - | One or more 'storage_blob' blocks. |
| `storage_blob_direct` | block | No | - | One or more 'storage_blob_direct' blocks. |
| `storage_table_direct` | block | No | - | One or more 'storage_table_direct' blocks. |

### `data_sources` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `data_import` | block | No | - | A 'data_import' block. |
| `extension` | block | No | - | One or more 'extension' blocks. |
| `iis_log` | block | No | - | One or more 'iis_log' blocks. |
| `log_file` | block | No | - | One or more 'log_file' blocks. |
| `performance_counter` | block | No | - | One or more 'performance_counter' blocks. |
| `platform_telemetry` | block | No | - | One or more 'platform_telemetry' blocks. |
| `prometheus_forwarder` | block | No | - | One or more 'prometheus_forwarder' blocks. |
| `syslog` | block | No | - | One or more 'syslog' blocks. |
| `windows_event_log` | block | No | - | One or more 'windows_event_log' blocks. |
| `windows_firewall_log` | block | No | - | One or more 'windows_firewall_log' blocks. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Data Collection Rule. Possible values are 'SystemAssigned' and 'UserAssigned'. |
| `identity_ids` | list | No | - | A list of User Assigned Managed Identity IDs to be assigned to this Data Collection Rule. Currently, up to 1 identity is supported. |

### `stream_declaration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `stream_name` | string | Yes | - | The name of the custom stream. This name should be unique across all 'stream_declaration' blocks. |
| `column` | list | Yes | - | One or more 'column' blocks. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Collection Rule. | 
| **immutable_id** | string | No  | The immutable ID of the Data Collection Rule. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
