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
# event_hub_direct block structure:
#   event_hub_id (string)           : (REQUIRED) The resource ID of the Event Hub.
#   name (string)                   : (REQUIRED) The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule.
#
# storage_blob_direct block structure:
#   container_name (string)            : (REQUIRED) The Storage Container name.
#   name (string)                      : (REQUIRED) The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule.
#   storage_account_id (string)        : (REQUIRED) The resource ID of the Storage Account.
#
# storage_table_direct block structure:
#   table_name (string)                 : (REQUIRED) The Storage Table name.
#   name (string)                       : (REQUIRED) The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule.
#   storage_account_id (string)         : (REQUIRED) The resource ID of the Storage Account.
#
# log_analytics block structure :
#   name (string)                 : (REQUIRED) The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule.
#   workspace_resource_id (string): (REQUIRED) The ID of a Log Analytic Workspace resource.
#
# monitor_account block structure:
#   monitor_account_id (string)    : (REQUIRED) The resource ID of the Monitor Account.
#   name (string)                  : (REQUIRED) The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule.
#
# storage_blob block structure:
#   container_name (string)     : (REQUIRED) The Storage Container name.
#   name (string)               : (REQUIRED) The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule.
#   storage_account_id (string) : (REQUIRED) The resource ID of the Storage Account.
#
# azure_monitor_metrics block structure:
#   name (string)                        : (REQUIRED) The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule.
#
# event_hub block structure:
#   event_hub_id (string)    : (REQUIRED) The resource ID of the Event Hub.
#   name (string)            : (REQUIRED) The name which should be used for this destination. This name should be unique across all destinations regardless of type within the Data Collection Rule.


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
  type        = string
  default     = null
}
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
