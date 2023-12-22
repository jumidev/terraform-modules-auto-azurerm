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
      this_data_flow = {
         destinations = "..."         
         streams = "Possible values: Microsoft-Event | Microsoft-InsightsMetrics | Microsoft-Perf | Microsoft-Syslog | Microsoft-WindowsEvent | Microsoft-PrometheusMetrics"         
      }
      
   }
   
   destinations = {
   }
   
   location = "${location}"   
   name = "The name which should be used for this Data Collection Rule..."   
   resource_group_name = "${resource_group}"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```
## Optional associated resource


### `monitor_data_collection_rule_association` 

If set, makes a **azurerm_monitor_data_collection_rule_association** - With the following options:

| attribute | type | required? | default |
| --------- | ---- | --------- | ------- |
| `target_resource_id` | string | True | null |
| `name` | string | False | "configurationAccessEndpoint" |
| `data_collection_endpoint_id` | string | False | null |
| `description` | string | False | null |


Example component snippet:

```hcl
inputs = {
   monitor_data_collection_rule_association = {
      name = "configurationAccessEndpoint"      
      description = "..."      
   }
   
}

component_inputs = {
   monitor_data_collection_rule_association.target_resource_id = "path/to/any_resource_component:id"   
}

```


## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **data_flow** | [block](#data_flow-block-structure) |  One or more `data_flow` blocks. | 
| **destinations** | [block](#destinations-block-structure) |  A `destinations` block. | 
| **location** | string |  The Azure Region where the Data Collection Rule should exist. Changing this forces a new Data Collection Rule to be created. | 
| **name** | string |  The name which should be used for this Data Collection Rule. Changing this forces a new Data Collection Rule to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Data Collection Rule should exist. Changing this forces a new Data Collection Rule to be created. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **data_collection_endpoint_id** | string |  -  |  The resource ID of the Data Collection Endpoint that this rule can be used with. | 
| **data_sources** | [block](#data_sources-block-structure) |  -  |  A `data_sources` block. This property is optional and can be omitted if the rule is meant to be used via direct calls to the provisioned endpoint. | 
| **description** | string |  -  |  The description of the Data Collection Rule. | 
| **identity** | [block](#identity-block-structure) |  -  |  An `identity` block. | 
| **kind** | string |  `Linux`, `Windows`, `AgentDirectToStore`, `WorkspaceTransforms`  |  The kind of the Data Collection Rule. Possible values are `Linux`, `Windows`, `AgentDirectToStore` and `WorkspaceTransforms`. A rule of kind `Linux` does not allow for `windows_event_log` data sources. And a rule of kind `Windows` does not allow for `syslog` data sources. If kind is not specified, all kinds of data sources are allowed. | 
| **stream_declaration** | [block](#stream_declaration-block-structure) |  -  |  A `stream_declaration` block. | 
| **tags** | map |  -  |  A mapping of tags which should be assigned to the Data Collection Rule. | 

### `extension` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `extension_name` | string | Yes | - | The name of the VM extension. |
| `name` | string | Yes | - | The name which should be used for this data source. This name should be unique across all data sources regardless of type within the Data Collection Rule. |
| `streams` | list | Yes | - | Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to. Possible values include but not limited to 'Microsoft-Event', 'Microsoft-InsightsMetrics', 'Microsoft-Perf', 'Microsoft-Syslog', 'Microsoft-WindowsEvent'. |
| `extension_json` | string | No | - | A JSON String which specifies the extension setting. |
| `input_data_sources` | list | No | - | Specifies a list of data sources this extension needs data from. An item should be a name of a supported data source which produces only one stream. Supported data sources type: 'performance_counter', 'windows_event_log',and 'syslog'. |

### `storage_blob` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `container_name` | string | Yes | - | The Storage Container name. |
| `name` | string | Yes | - | The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule. |
| `storage_account_id` | string | Yes | - | The resource ID of the Storage Account. |

### `platform_telemetry` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name which should be used for this data source. This name should be unique across all data sources regardless of type within the Data Collection Rule. |
| `streams` | list | Yes | - | Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to. Possible values include but not limited to 'Microsoft.Cache/redis:Metrics-Group-All'. |

### `event_hub_direct` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `event_hub_id` | string | Yes | - | The resource ID of the Event Hub. |
| `name` | string | Yes | - | The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule. |

### `prometheus_forwarder` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name which should be used for this data source. This name should be unique across all data sources regardless of type within the Data Collection Rule. |
| `streams` | list | Yes | - | Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to. Possible value is 'Microsoft-PrometheusMetrics'. |
| `label_include_filter` | string | No | - | One or more 'label_include_filter' blocks. |

### `windows_event_log` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name which should be used for this data source. This name should be unique across all data sources regardless of type within the Data Collection Rule. |
| `streams` | list | Yes | - | Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to. Possible values include but not limited to 'Microsoft-Event',and 'Microsoft-WindowsEvent', 'Microsoft-RomeDetectionEvent', and 'Microsoft-SecurityEvent'. |
| `x_path_queries` | list | Yes | - | Specifies a list of Windows Event Log queries in XPath expression. Please see [this document](https://learn.microsoft.com/en-us/azure/azure-monitor/agents/data-collection-rule-azure-monitor-agent?tabs=cli#filter-events-using-xpath-queries) for more information. |

### `data_import` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `event_hub_data_source` | [block](#event_hub_data_source-block-structure) | Yes | - | An 'event_hub_data_source' block. |

### `destinations` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `azure_monitor_metrics` | [block](#azure_monitor_metrics-block-structure) | No | - | A 'azure_monitor_metrics' block. |
| `event_hub` | [block](#event_hub-block-structure) | No | - | One or more 'event_hub' blocks. |
| `event_hub_direct` | [block](#event_hub_direct-block-structure) | No | - | One or more 'event_hub' blocks. |
| `log_analytics` | [block](#log_analytics-block-structure) | No | - | One or more 'log_analytics' blocks. |
| `monitor_account` | [block](#monitor_account-block-structure) | No | - | One or more 'monitor_account' blocks. |
| `storage_blob` | [block](#storage_blob-block-structure) | No | - | One or more 'storage_blob' blocks. |
| `storage_blob_direct` | [block](#storage_blob_direct-block-structure) | No | - | One or more 'storage_blob_direct' blocks. |
| `storage_table_direct` | [block](#storage_table_direct-block-structure) | No | - | One or more 'storage_table_direct' blocks. |

### `iis_log` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name which should be used for this data source. This name should be unique across all data sources regardless of type within the Data Collection Rule. |
| `streams` | list | Yes | - | Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to. Possible value is 'Microsoft-W3CIISLog'. |
| `log_directories` | list | No | - | Specifies a list of absolute paths where the log files are located. |

### `syslog` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `facility_names` | list | Yes | - | Specifies a list of facility names. Use a wildcard '*' to collect logs for all facility names. Possible values are 'auth', 'authpriv', 'cron', 'daemon', 'kern', 'lpr', 'mail', 'mark', 'news', 'syslog', 'user', 'uucp', 'local0', 'local1', 'local2', 'local3', 'local4', 'local5', 'local6', 'local7',and '*'. |
| `log_levels` | list | Yes | - | Specifies a list of log levels. Use a wildcard '*' to collect logs for all log levels. Possible values are 'Debug', 'Info', 'Notice', 'Warning', 'Error', 'Critical', 'Alert', 'Emergency',and '*'. |
| `name` | string | Yes | - | The name which should be used for this data source. This name should be unique across all data sources regardless of type within the Data Collection Rule. |
| `streams` | list | No | - | Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to. Possible values include but not limited to 'Microsoft-Syslog',and 'Microsoft-CiscoAsa', and 'Microsoft-CommonSecurityLog'. |

### `performance_counter` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `counter_specifiers` | list | Yes | - | Specifies a list of specifier names of the performance counters you want to collect. To get a list of performance counters on Windows, run the command 'typeperf'. Please see [this document](https://learn.microsoft.com/en-us/azure/azure-monitor/agents/data-sources-performance-counters#configure-performance-counters) for more information. |
| `name` | string | Yes | - | The name which should be used for this data source. This name should be unique across all data sources regardless of type within the Data Collection Rule. |
| `sampling_frequency_in_seconds` | number | Yes | - | The number of seconds between consecutive counter measurements (samples). The value should be integer between '1' and '300' inclusive. 'sampling_frequency_in_seconds' must be equal to '60' seconds for counters collected with 'Microsoft-InsightsMetrics' stream. |
| `streams` | list | Yes | - | Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to. Possible values include but not limited to 'Microsoft-InsightsMetrics',and 'Microsoft-Perf'. |

### `data_flow` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `destinations` | list | Yes | - | Specifies a list of destination names. A 'azure_monitor_metrics' data source only allows for stream of kind 'Microsoft-InsightsMetrics'. |
| `streams` | list | Yes | - | Specifies a list of streams. Possible values include but not limited to 'Microsoft-Event', 'Microsoft-InsightsMetrics', 'Microsoft-Perf', 'Microsoft-Syslog', 'Microsoft-WindowsEvent', and 'Microsoft-PrometheusMetrics'. |
| `built_in_transform` | string | No | - | The built-in transform to transform stream data. |
| `output_stream` | string | No | - | The output stream of the transform. Only required if the data flow changes data to a different stream. |
| `transform_kql` | string | No | - | The KQL query to transform stream data. |

### `event_hub_data_source` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name which should be used for this data source. This name should be unique across all data sources regardless of type within the Data Collection Rule. |
| `stream` | string | Yes | - | The stream to collect from Event Hub. Possible value should be a custom stream name. |
| `consumer_group` | string | No | - | The Event Hub consumer group name. |

### `monitor_account` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `monitor_account_id` | string | Yes | - | The resource ID of the Monitor Account. |
| `name` | string | Yes | - | The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule. |

### `windows_firewall_log` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name which should be used for this data source. This name should be unique across all data sources regardless of type within the Data Collection Rule. |
| `streams` | list | Yes | - | Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to. |

### `log_analytics` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule. |
| `workspace_resource_id` | string | Yes | - | The ID of a Log Analytic Workspace resource. |

### `storage_table_direct` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `table_name` | string | Yes | - | The Storage Table name. |
| `name` | string | Yes | - | The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule. |
| `storage_account_id` | string | Yes | - | The resource ID of the Storage Account. |

### `text` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `record_start_timestamp_format` | string | Yes | - | The timestamp format of the text log files. Possible values are 'ISO 8601', 'YYYY-MM-DD HH:MM:SS', 'M/D/YYYY HH:MM:SS AM/PM', 'Mon DD, YYYY HH:MM:SS', 'yyMMdd HH:mm:ss', 'ddMMyy HH:mm:ss', 'MMM d hh:mm:ss', 'dd/MMM/yyyy:HH:mm:ss zzz',and 'yyyy-MM-ddTHH:mm:ssK'. |

### `data_sources` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `data_import` | [block](#data_import-block-structure) | No | - | A 'data_import' block. |
| `extension` | [block](#extension-block-structure) | No | - | One or more 'extension' blocks. |
| `iis_log` | [block](#iis_log-block-structure) | No | - | One or more 'iis_log' blocks. |
| `log_file` | [block](#log_file-block-structure) | No | - | One or more 'log_file' blocks. |
| `performance_counter` | [block](#performance_counter-block-structure) | No | - | One or more 'performance_counter' blocks. |
| `platform_telemetry` | [block](#platform_telemetry-block-structure) | No | - | One or more 'platform_telemetry' blocks. |
| `prometheus_forwarder` | [block](#prometheus_forwarder-block-structure) | No | - | One or more 'prometheus_forwarder' blocks. |
| `syslog` | [block](#syslog-block-structure) | No | - | One or more 'syslog' blocks. |
| `windows_event_log` | [block](#windows_event_log-block-structure) | No | - | One or more 'windows_event_log' blocks. |
| `windows_firewall_log` | [block](#windows_firewall_log-block-structure) | No | - | One or more 'windows_firewall_log' blocks. |

### `stream_declaration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `stream_name` | string | Yes | - | The name of the custom stream. This name should be unique across all 'stream_declaration' blocks. |
| `column` | string | Yes | - | One or more 'column' blocks. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Data Collection Rule. Possible values are 'SystemAssigned' and 'UserAssigned'. |
| `identity_ids` | list | No | - | A list of User Assigned Managed Identity IDs to be assigned to this Data Collection Rule. Currently, up to 1 identity is supported. |

### `storage_blob_direct` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `container_name` | string | Yes | - | The Storage Container name. |
| `name` | string | Yes | - | The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule. |
| `storage_account_id` | string | Yes | - | The resource ID of the Storage Account. |

### `log_file` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `text` | [block](#text-block-structure) | Yes | - | A 'text' block. |

### `azure_monitor_metrics` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule. |

### `event_hub` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `event_hub_id` | string | Yes | - | The resource ID of the Event Hub. |
| `name` | string | Yes | - | The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Data Collection Rule. | 
| **immutable_id** | string | No  | The immutable ID of the Data Collection Rule. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
