# REQUIRED VARIABLES

variable "data_flow" {
  description = "(REQUIRED) One or more 'data_flow' blocks."
  type        = map(map(any))
}
#
# data_flow block structure  :
#   destinations (string)      : (REQUIRED) Specifies a list of destination names. A 'azure_monitor_metrics' data source only allows for stream of kind 'Microsoft-InsightsMetrics'.
#   streams (string)           : (REQUIRED) Specifies a list of streams. Possible values include but not limited to 'Microsoft-Event', 'Microsoft-InsightsMetrics', 'Microsoft-Perf', 'Microsoft-Syslog', 'Microsoft-WindowsEvent', and 'Microsoft-PrometheusMetrics'.
#   built_in_transform (string): The built-in transform to transform stream data.
#   output_stream (string)     : The output stream of the transform. Only required if the data flow changes data to a different stream.
#   transform_kql (string)     : The KQL query to transform stream data.


variable "destinations" {
  description = "(REQUIRED) A 'destinations' block."
  type        = map(any)
}
#
# destinations block structure :
#   azure_monitor_metrics (block): A 'azure_monitor_metrics' block.
#   event_hub (block)            : One or more 'event_hub' blocks.
#   event_hub_direct (block)     : One or more 'event_hub' blocks.
#   log_analytics (block)        : One or more 'log_analytics' blocks.
#   monitor_account (block)      : One or more 'monitor_account' blocks.
#   storage_blob (block)         : One or more 'storage_blob' blocks.
#   storage_blob_direct (block)  : One or more 'storage_blob_direct' blocks.
#   storage_table_direct (block) : One or more 'storage_table_direct' blocks.
#
# event_hub block structure:
#   event_hub_id (string)    : (REQUIRED) The resource ID of the Event Hub.
#   name (string)            : (REQUIRED) The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule.
#
# storage_blob_direct block structure:
#   container_name (string)            : (REQUIRED) The Storage Container name.
#   name (string)                      : (REQUIRED) The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule.
#   storage_account_id (string)        : (REQUIRED) The resource ID of the Storage Account.
#
# log_analytics block structure :
#   name (string)                 : (REQUIRED) The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule.
#   workspace_resource_id (string): (REQUIRED) The ID of a Log Analytic Workspace resource.
#
# event_hub_direct block structure:
#   event_hub_id (string)           : (REQUIRED) The resource ID of the Event Hub.
#   name (string)                   : (REQUIRED) The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule.
#
# storage_blob block structure:
#   container_name (string)     : (REQUIRED) The Storage Container name.
#   name (string)               : (REQUIRED) The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule.
#   storage_account_id (string) : (REQUIRED) The resource ID of the Storage Account.
#
# monitor_account block structure:
#   monitor_account_id (string)    : (REQUIRED) The resource ID of the Monitor Account.
#   name (string)                  : (REQUIRED) The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule.
#
# storage_table_direct block structure:
#   table_name (string)                 : (REQUIRED) The Storage Table name.
#   name (string)                       : (REQUIRED) The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule.
#   storage_account_id (string)         : (REQUIRED) The resource ID of the Storage Account.
#
# azure_monitor_metrics block structure:
#   name (string)                        : (REQUIRED) The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule.


variable "location" {
  description = "(REQUIRED) The Azure Region where the Data Collection Rule should exist. Changing this forces a new Data Collection Rule to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Data Collection Rule. Changing this forces a new Data Collection Rule to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Data Collection Rule should exist. Changing this forces a new Data Collection Rule to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "data_collection_endpoint_id" {
  description = "The resource ID of the Data Collection Endpoint that this rule can be used with."
  type        = string
  default     = null
}
variable "data_sources" {
  description = "A 'data_sources' block. This property is optional and can be omitted if the rule is meant to be used via direct calls to the provisioned endpoint."
  type        = map(any)
  default     = null
}
#
# data_sources block structure:
#   data_import (block)         : A 'data_import' block.
#   extension (block)           : One or more 'extension' blocks.
#   iis_log (block)             : One or more 'iis_log' blocks.
#   log_file (block)            : One or more 'log_file' blocks.
#   performance_counter (block) : One or more 'performance_counter' blocks.
#   platform_telemetry (block)  : One or more 'platform_telemetry' blocks.
#   prometheus_forwarder (block): One or more 'prometheus_forwarder' blocks.
#   syslog (block)              : One or more 'syslog' blocks.
#   windows_event_log (block)   : One or more 'windows_event_log' blocks.
#   windows_firewall_log (block): One or more 'windows_firewall_log' blocks.
#
# log_file block structure:
#   text (block)            : (REQUIRED) A 'text' block.
#
# windows_firewall_log block structure:
#   name (string)                       : (REQUIRED) The name which should be used for this data source. This name should be unique across all data sources regardless of type within the Data Collection Rule.
#   streams (string)                    : (REQUIRED) Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to.
#
# syslog block structure :
#   facility_names (string): (REQUIRED) Specifies a list of facility names. Use a wildcard '*' to collect logs for all facility names. Possible values are 'auth', 'authpriv', 'cron', 'daemon', 'kern', 'lpr', 'mail', 'mark', 'news', 'syslog', 'user', 'uucp', 'local0', 'local1', 'local2', 'local3', 'local4', 'local5', 'local6', 'local7',and '*'.
#   log_levels (string)    : (REQUIRED) Specifies a list of log levels. Use a wildcard '*' to collect logs for all log levels. Possible values are 'Debug', 'Info', 'Notice', 'Warning', 'Error', 'Critical', 'Alert', 'Emergency',and '*'.
#   name (string)          : (REQUIRED) The name which should be used for this data source. This name should be unique across all data sources regardless of type within the Data Collection Rule.
#   streams (string)       : Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to. Possible values include but not limited to 'Microsoft-Syslog',and 'Microsoft-CiscoAsa', and 'Microsoft-CommonSecurityLog'.
#
# performance_counter block structure:
#   counter_specifiers (string)        : (REQUIRED) Specifies a list of specifier names of the performance counters you want to collect. To get a list of performance counters on Windows, run the command 'typeperf'. Please see [this document](https://learn.microsoft.com/en-us/azure/azure-monitor/agents/data-sources-performance-counters#configure-performance-counters) for more information.
#   name (string)                      : (REQUIRED) The name which should be used for this data source. This name should be unique across all data sources regardless of type within the Data Collection Rule.
#   sampling_frequency_in_seconds (int): (REQUIRED) The number of seconds between consecutive counter measurements (samples). The value should be integer between '1' and '300' inclusive. 'sampling_frequency_in_seconds' must be equal to '60' seconds for counters collected with 'Microsoft-InsightsMetrics' stream.
#   streams (string)                   : (REQUIRED) Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to. Possible values include but not limited to 'Microsoft-InsightsMetrics',and 'Microsoft-Perf'.
#
# event_hub_data_source block structure:
#   name (string)                        : (REQUIRED) The name which should be used for this data source. This name should be unique across all data sources regardless of type within the Data Collection Rule.
#   stream (string)                      : (REQUIRED) The stream to collect from Event Hub. Possible value should be a custom stream name.
#   consumer_group (string)              : The Event Hub consumer group name.
#
# iis_log block structure :
#   name (string)           : (REQUIRED) The name which should be used for this data source. This name should be unique across all data sources regardless of type within the Data Collection Rule.
#   streams (string)        : (REQUIRED) Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to. Possible value is 'Microsoft-W3CIISLog'.
#   log_directories (string): Specifies a list of absolute paths where the log files are located.
#
# windows_event_log block structure:
#   name (string)                    : (REQUIRED) The name which should be used for this data source. This name should be unique across all data sources regardless of type within the Data Collection Rule.
#   streams (string)                 : (REQUIRED) Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to. Possible values include but not limited to 'Microsoft-Event',and 'Microsoft-WindowsEvent', 'Microsoft-RomeDetectionEvent', and 'Microsoft-SecurityEvent'.
#   x_path_queries (string)          : (REQUIRED) Specifies a list of Windows Event Log queries in XPath expression. Please see [this document](https://learn.microsoft.com/en-us/azure/azure-monitor/agents/data-collection-rule-azure-monitor-agent?tabs=cli#filter-events-using-xpath-queries) for more information.
#
# text block structure                  :
#   record_start_timestamp_format (string): (REQUIRED) The timestamp format of the text log files. Possible values are 'ISO 8601', 'YYYY-MM-DD HH:MM:SS', 'M/D/YYYY HH:MM:SS AM/PM', 'Mon DD, YYYY HH:MM:SS', 'yyMMdd HH:mm:ss', 'ddMMyy HH:mm:ss', 'MMM d hh:mm:ss', 'dd/MMM/yyyy:HH:mm:ss zzz',and 'yyyy-MM-ddTHH:mm:ssK'.
#
# extension block structure  :
#   extension_name (string)    : (REQUIRED) The name of the VM extension.
#   name (string)              : (REQUIRED) The name which should be used for this data source. This name should be unique across all data sources regardless of type within the Data Collection Rule.
#   streams (string)           : (REQUIRED) Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to. Possible values include but not limited to 'Microsoft-Event', 'Microsoft-InsightsMetrics', 'Microsoft-Perf', 'Microsoft-Syslog', 'Microsoft-WindowsEvent'.
#   extension_json (string)    : A JSON String which specifies the extension setting.
#   input_data_sources (string): Specifies a list of data sources this extension needs data from. An item should be a name of a supported data source which produces only one stream. Supported data sources type: 'performance_counter', 'windows_event_log',and 'syslog'.
#
# prometheus_forwarder block structure:
#   name (string)                       : (REQUIRED) The name which should be used for this data source. This name should be unique across all data sources regardless of type within the Data Collection Rule.
#   streams (string)                    : (REQUIRED) Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to. Possible value is 'Microsoft-PrometheusMetrics'.
#   label_include_filter (list)         : One or more 'label_include_filter' blocks.
#
# data_import block structure  :
#   event_hub_data_source (block): (REQUIRED) An 'event_hub_data_source' block.
#
# platform_telemetry block structure:
#   name (string)                     : (REQUIRED) The name which should be used for this data source. This name should be unique across all data sources regardless of type within the Data Collection Rule.
#   streams (string)                  : (REQUIRED) Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to. Possible values include but not limited to 'Microsoft.Cache/redis:Metrics-Group-All'.


variable "description" {
  description = "The description of the Data Collection Rule."
  type        = string
  default     = null
}
variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Data Collection Rule. Possible values are 'SystemAssigned' and 'UserAssigned'.
#   identity_ids (list)     : A list of User Assigned Managed Identity IDs to be assigned to this Data Collection Rule. Currently, up to 1 identity is supported.


variable "kind" {
  description = "The kind of the Data Collection Rule. Possible values are 'Linux', 'Windows', 'AgentDirectToStore' and 'WorkspaceTransforms'. A rule of kind 'Linux' does not allow for 'windows_event_log' data sources. And a rule of kind 'Windows' does not allow for 'syslog' data sources. If kind is not specified, all kinds of data sources are allowed."
  type        = string
  default     = null
}
variable "stream_declaration" {
  description = "A 'stream_declaration' block."
  type        = map(any)
  default     = null
}
#
# stream_declaration block structure:
#   stream_name (string)              : (REQUIRED) The name of the custom stream. This name should be unique across all 'stream_declaration' blocks.
#   column (list)                     : (REQUIRED) One or more 'column' blocks.


variable "tags" {
  description = "A mapping of tags which should be assigned to the Data Collection Rule."
  type        = map(any)
  default     = null
}
