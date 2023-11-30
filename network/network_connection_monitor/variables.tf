# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Network Connection Monitor. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Network Connection Monitor should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "network_watcher_id" {
  description = "(REQUIRED) The ID of the Network Watcher. Changing this forces a new resource to be created."
  type        = string

}
variable "endpoint" {
  description = "(REQUIRED) A 'endpoint' block."
  type        = map(any)
}
#
# endpoint block structure     :
#   name (string)                : (REQUIRED) The name of the endpoint for the Network Connection Monitor .
#   address (string)             : The IP address or domain name of the Network Connection Monitor endpoint.
#   coverage_level (string)      : The test coverage for the Network Connection Monitor endpoint. Possible values are 'AboveAverage', 'Average', 'BelowAverage', 'Default', 'Full' and 'Low'.
#   excluded_ip_addresses (list) : A list of IPv4/IPv6 subnet masks or IPv4/IPv6 IP addresses to be excluded to the Network Connection Monitor endpoint.
#   included_ip_addresses (list) : A list of IPv4/IPv6 subnet masks or IPv4/IPv6 IP addresses to be included to the Network Connection Monitor endpoint.
#   target_resource_id (string)  : The resource ID which is used as the endpoint by the Network Connection Monitor.
#   filter (block)               : A 'filter' block.
#   target_resource_type (string): The endpoint type of the Network Connection Monitor. Possible values are 'AzureSubnet', 'AzureVM', 'AzureVNet', 'ExternalAddress', 'MMAWorkspaceMachine' and 'MMAWorkspaceNetwork'.
#
# filter block structure:
#   type (string)         : The behaviour type of this endpoint filter. Currently the only allowed value is 'Include'. Defaults to 'Include'.
#   item (block)          : A 'item' block.
#
# item block structure:
#   type (string)       : The type of items included in the filter. Possible values are 'AgentAddress'. Defaults to 'AgentAddress'.
#   address (string)    : The address of the filter item.


variable "test_configuration" {
  description = "(REQUIRED) A 'test_configuration' block."
  type        = map(any)
}
#
# test_configuration block structure:
#   name (string)                     : (REQUIRED) The name of test configuration for the Network Connection Monitor.
#   protocol (string)                 : (REQUIRED) The protocol used to evaluate tests. Possible values are 'Tcp', 'Http' and 'Icmp'.
#   test_frequency_in_seconds (int)   : The time interval in seconds at which the test evaluation will happen. Defaults to '60'.
#   http_configuration (block)        : A 'http_configuration' block.
#   icmp_configuration (block)        : A 'icmp_configuration' block.
#   preferred_ip_version (string)     : The preferred IP version which is used in the test evaluation. Possible values are 'IPv4' and 'IPv6'.
#   success_threshold (block)         : A 'success_threshold' block.
#   tcp_configuration (block)         : A 'tcp_configuration' block.
#
# tcp_configuration block structure :
#   port (string)                     : (REQUIRED) The port for the TCP connection.
#   trace_route_enabled (bool)        : Should path evaluation with trace route be enabled? Defaults to 'true'.
#   destination_port_behavior (string): The destination port behavior for the TCP connection. Possible values are 'None' and 'ListenIfAvailable'.
#
# http_configuration block structure:
#   method (string)                   : The HTTP method for the HTTP request. Possible values are 'Get' and 'Post'. Defaults to 'Get'.
#   port (string)                     : The port for the HTTP connection.
#   path (string)                     : The path component of the URI. It only accepts the absolute path.
#   prefer_https (bool)               : Should HTTPS be preferred over HTTP in cases where the choice is not explicit? Defaults to 'false'.
#   request_header (block)            : A 'request_header' block.
#   valid_status_code_ranges (string) : The HTTP status codes to consider successful. For instance, '2xx', '301-304' and '418'.
#
# success_threshold block structure:
#   checks_failed_percent (string)   : The maximum percentage of failed checks permitted for a test to be successful.
#   round_trip_time_ms (string)      : The maximum round-trip time in milliseconds permitted for a test to be successful.
#
# icmp_configuration block structure:
#   trace_route_enabled (bool)        : Should path evaluation with trace route be enabled? Defaults to 'true'.
#
# request_header block structure:
#   name (string)                 : (REQUIRED) The name of the HTTP header.
#   value (string)                : (REQUIRED) The value of the HTTP header.


variable "test_group" {
  description = "(REQUIRED) A 'test_group' block."
  type        = map(any)
}
#
# test_group block structure     :
#   name (string)                  : (REQUIRED) The name of the test group for the Network Connection Monitor.
#   destination_endpoints (list)   : (REQUIRED) A list of destination endpoint names.
#   source_endpoints (list)        : (REQUIRED) A list of source endpoint names.
#   test_configuration_names (list): (REQUIRED) A list of test configuration names.
#   enabled (bool)                 : Should the test group be enabled? Defaults to 'true'.



# OPTIONAL VARIABLES

variable "notes" {
  description = "The description of the Network Connection Monitor."
  type        = string
  default     = null
}
variable "output_workspace_resource_ids" {
  description = "A list of IDs of the Log Analytics Workspace which will accept the output from the Network Connection Monitor."
  type        = list(any)
  default     = []
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Network Connection Monitor."
  type        = map(any)
  default     = null
}
