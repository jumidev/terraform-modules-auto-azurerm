# azurerm_monitor_data_collection_rule

Manages a Data Collection Rule.

## Example `component.hclt`

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

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.data_flow** | [block](#data_flow-block-structure) |  One or more `data_flow` blocks. | 
| **var.destinations** | [block](#destinations-block-structure) |  A `destinations` block. | 
| **var.location** | string |  The Azure Region where the Data Collection Rule should exist. Changing this forces a new Data Collection Rule to be created. | 
| **var.name** | string |  The name which should be used for this Data Collection Rule. Changing this forces a new Data Collection Rule to be created. | 
| **var.resource_group_name** | string |  The name of the Resource Group where the Data Collection Rule should exist. Changing this forces a new Data Collection Rule to be created. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.data_collection_endpoint_id** | string |  -  |  The resource ID of the Data Collection Endpoint that this rule can be used with. | 
| **var.data_sources** | [block](#data_sources-block-structure) |  -  |  A `data_sources` block. This property is optional and can be omitted if the rule is meant to be used via direct calls to the provisioned endpoint. | 
| **var.description** | string |  -  |  The description of the Data Collection Rule. | 
| **var.identity** | [block](#identity-block-structure) |  -  |  An `identity` block. | 
| **var.kind** | string |  `Linux`, `Windows`, `AgentDirectToStore`, `WorkspaceTransforms`  |  The kind of the Data Collection Rule. Possible values are `Linux`, `Windows`, `AgentDirectToStore` and `WorkspaceTransforms`. A rule of kind `Linux` does not allow for `windows_event_log` data sources. And a rule of kind `Windows` does not allow for `syslog` data sources. If kind is not specified, all kinds of data sources are allowed. | 
| **var.stream_declaration** | [block](#stream_declaration-block-structure) |  -  |  A `stream_declaration` block. | 
| **var.tags** | map |  -  |  A mapping of tags which should be assigned to the Data Collection Rule. | 

### `log_file` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `text` | [block](#log_file-block-structure) | Yes | - | A 'text' block. |

### `data_sources` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `data_import` | [block](#data_sources-block-structure) | No | - | A 'data_import' block. |
| `extension` | [block](#data_sources-block-structure) | No | - | One or more 'extension' blocks. |
| `iis_log` | [block](#data_sources-block-structure) | No | - | One or more 'iis_log' blocks. |
| `log_file` | [block](#data_sources-block-structure) | No | - | One or more 'log_file' blocks. |
| `performance_counter` | [block](#data_sources-block-structure) | No | - | One or more 'performance_counter' blocks. |
| `platform_telemetry` | [block](#data_sources-block-structure) | No | - | One or more 'platform_telemetry' blocks. |
| `prometheus_forwarder` | [block](#data_sources-block-structure) | No | - | One or more 'prometheus_forwarder' blocks. |
| `syslog` | [block](#data_sources-block-structure) | No | - | One or more 'syslog' blocks. |
| `windows_event_log` | [block](#data_sources-block-structure) | No | - | One or more 'windows_event_log' blocks. |
| `windows_firewall_log` | [block](#data_sources-block-structure) | No | - | One or more 'windows_firewall_log' blocks. |

### `destinations` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `azure_monitor_metrics` | [block](#destinations-block-structure) | No | - | A 'azure_monitor_metrics' block. |
| `event_hub` | [block](#destinations-block-structure) | No | - | One or more 'event_hub' blocks. |
| `event_hub_direct` | [block](#destinations-block-structure) | No | - | One or more 'event_hub' blocks. |
| `log_analytics` | [block](#destinations-block-structure) | No | - | One or more 'log_analytics' blocks. |
| `monitor_account` | [block](#destinations-block-structure) | No | - | One or more 'monitor_account' blocks. |
| `storage_blob` | [block](#destinations-block-structure) | No | - | One or more 'storage_blob' blocks. |
| `storage_blob_direct` | [block](#destinations-block-structure) | No | - | One or more 'storage_blob_direct' blocks. |
| `storage_table_direct` | [block](#destinations-block-structure) | No | - | One or more 'storage_table_direct' blocks. |

### `iis_log` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `streams` | string | Yes | - | Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to. Possible value is 'Microsoft-W3CIISLog'. |
| `log_directories` | string | No | - | Specifies a list of absolute paths where the log files are located. |

### `windows_event_log` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `streams` | string | Yes | - | Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to. Possible values include but not limited to 'Microsoft-Event',and 'Microsoft-WindowsEvent', 'Microsoft-RomeDetectionEvent', and 'Microsoft-SecurityEvent'. |
| `x_path_queries` | string | Yes | - | Specifies a list of Windows Event Log queries in XPath expression. Please see [this document](https://learn.microsoft.com/en-us/azure/azure-monitor/agents/data-collection-rule-azure-monitor-agent?tabs=cli#filter-events-using-xpath-queries) for more information. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Data Collection Rule. Possible values are 'SystemAssigned' and 'UserAssigned'. |
| `identity_ids` | list | No | - | A list of User Assigned Managed Identity IDs to be assigned to this Data Collection Rule. Currently, up to 1 identity is supported. |

### `prometheus_forwarder` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `streams` | string | Yes | - | Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to. Possible value is 'Microsoft-PrometheusMetrics'. |
| `label_include_filter` | list | No | - | One or more 'label_include_filter' blocks. |

### `event_hub_direct` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `event_hub_id` | string | Yes | - | The resource ID of the Event Hub. |

### `text` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `record_start_timestamp_format` | string | Yes | - | The timestamp format of the text log files. Possible values are 'ISO 8601', 'YYYY-MM-DD HH:MM:SS', 'M/D/YYYY HH:MM:SS AM/PM', 'Mon DD, YYYY HH:MM:SS', 'yyMMdd HH:mm:ss', 'ddMMyy HH:mm:ss', 'MMM d hh:mm:ss', 'dd/MMM/yyyy:HH:mm:ss zzz',and 'yyyy-MM-ddTHH:mm:ssK'. |

### `storage_blob_direct` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `container_name` | string | Yes | - | The Storage Container name. |
| `storage_account_id` | string | Yes | - | The resource ID of the Storage Account. |

### `storage_table_direct` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `table_name` | string | Yes | - | The Storage Table name. |
| `storage_account_id` | string | Yes | - | The resource ID of the Storage Account. |

### `syslog` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `facility_names` | string | Yes | - | Specifies a list of facility names. Use a wildcard '*' to collect logs for all facility names. Possible values are 'auth', 'authpriv', 'cron', 'daemon', 'kern', 'lpr', 'mail', 'mark', 'news', 'syslog', 'user', 'uucp', 'local0', 'local1', 'local2', 'local3', 'local4', 'local5', 'local6', 'local7',and '*'. |
| `log_levels` | string | Yes | - | Specifies a list of log levels. Use a wildcard '*' to collect logs for all log levels. Possible values are 'Debug', 'Info', 'Notice', 'Warning', 'Error', 'Critical', 'Alert', 'Emergency',and '*'. |
| `streams` | string | No | - | Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to. Possible values include but not limited to 'Microsoft-Syslog',and 'Microsoft-CiscoAsa', and 'Microsoft-CommonSecurityLog'. |

### `storage_blob` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `container_name` | string | Yes | - | The Storage Container name. |
| `storage_account_id` | string | Yes | - | The resource ID of the Storage Account. |

### `stream_declaration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `stream_name` | string | Yes | - | The name of the custom stream. This name should be unique across all 'stream_declaration' blocks. |
| `column` | list | Yes | - | One or more 'column' blocks. |

### `event_hub_data_source` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `stream` | string | Yes | - | The stream to collect from Event Hub. Possible value should be a custom stream name. |
| `consumer_group` | string | No | - | The Event Hub consumer group name. |

### `performance_counter` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `counter_specifiers` | string | Yes | - | Specifies a list of specifier names of the performance counters you want to collect. To get a list of performance counters on Windows, run the command 'typeperf'. Please see [this document](https://learn.microsoft.com/en-us/azure/azure-monitor/agents/data-sources-performance-counters#configure-performance-counters) for more information. |
| `sampling_frequency_in_seconds` | int | Yes | - | The number of seconds between consecutive counter measurements (samples). The value should be integer between '1' and '300' inclusive. 'sampling_frequency_in_seconds' must be equal to '60' seconds for counters collected with 'Microsoft-InsightsMetrics' stream. |
| `streams` | string | Yes | - | Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to. Possible values include but not limited to 'Microsoft-InsightsMetrics',and 'Microsoft-Perf'. |

### `data_import` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `event_hub_data_source` | [block](#data_import-block-structure) | Yes | - | An 'event_hub_data_source' block. |

### `monitor_account` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `monitor_account_id` | string | Yes | - | The resource ID of the Monitor Account. |

### `platform_telemetry` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `streams` | string | Yes | - | Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to. Possible values include but not limited to 'Microsoft.Cache/redis:Metrics-Group-All'. |

### `extension` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `extension_name` | string | Yes | - | The name of the VM extension. |
| `streams` | string | Yes | - | Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to. Possible values include but not limited to 'Microsoft-Event', 'Microsoft-InsightsMetrics', 'Microsoft-Perf', 'Microsoft-Syslog', 'Microsoft-WindowsEvent'. |
| `extension_json` | string | No | - | A JSON String which specifies the extension setting. |
| `input_data_sources` | string | No | - | Specifies a list of data sources this extension needs data from. An item should be a name of a supported data source which produces only one stream. Supported data sources type: 'performance_counter', 'windows_event_log',and 'syslog'. |

### `windows_firewall_log` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `streams` | string | Yes | - | Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to. |

### `event_hub` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `event_hub_id` | string | Yes | - | The resource ID of the Event Hub. |

### `log_analytics` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `workspace_resource_id` | string | Yes | - | The ID of a Log Analytic Workspace resource. |

### `data_flow` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `destinations` | string | Yes | - | Specifies a list of destination names. A 'azure_monitor_metrics' data source only allows for stream of kind 'Microsoft-InsightsMetrics'. |
| `streams` | string | Yes | - | Specifies a list of streams. Possible values include but not limited to 'Microsoft-Event', 'Microsoft-InsightsMetrics', 'Microsoft-Perf', 'Microsoft-Syslog', 'Microsoft-WindowsEvent', and 'Microsoft-PrometheusMetrics'. |
| `built_in_transform` | string | No | - | The built-in transform to transform stream data. |
| `output_stream` | string | No | - | The output stream of the transform. Only required if the data flow changes data to a different stream. |
| `transform_kql` | string | No | - | The KQL query to transform stream data. |

### `azure_monitor_metrics` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Collection Rule. | 
| **immutable_id** | string | No  | The immutable ID of the Data Collection Rule. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
