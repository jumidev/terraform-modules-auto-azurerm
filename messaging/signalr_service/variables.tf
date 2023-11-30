# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the SignalR service. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the SignalR service. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the SignalR service exists. Changing this forces a new resource to be created."
  type        = string

}
variable "sku" {
  description = "(REQUIRED) A 'sku' block."
  type        = map(any)
}
#
# sku block structure:
#   capacity (string)  : (REQUIRED) Specifies the number of units associated with this SignalR service. Valid values are '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '20', '30', '40', '50', '60', '70', '80', '90' and '100'.



# OPTIONAL VARIABLES

variable "cors" {
  description = "A 'cors' block."
  type        = map(any)
  default     = null
}
#
# cors block structure  :
#   allowed_origins (list): (REQUIRED) A list of origins which should be able to make cross-origin calls. '*' can be used to allow all calls.


variable "connectivity_logs_enabled" {
  description = "Specifies if Connectivity Logs are enabled or not. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "messaging_logs_enabled" {
  description = "Specifies if Messaging Logs are enabled or not. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "http_request_logs_enabled" {
  description = "Specifies if Http Request Logs are enabled or not. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "live_trace_enabled" {
  description = "Specifies if Live Trace is enabled or not. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this signalR. Possible values are 'SystemAssigned', 'UserAssigned'.
#   identity_ids (string)   : Specifies a list of User Assigned Managed Identity IDs to be assigned to this signalR.


variable "public_network_access_enabled" {
  description = "Whether to enable public network access? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "local_auth_enabled" {
  description = "Whether to enable local auth? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "aad_auth_enabled" {
  description = "Whether to enable AAD auth? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "tls_client_cert_enabled" {
  description = "Whether to request client certificate during TLS handshake? Defaults to 'false'."
  type        = bool
  default     = false
}
variable "serverless_connection_timeout_in_seconds" {
  description = "Specifies the client connection timeout. Defaults to '30'."
  type        = int
  default     = 30
}
variable "service_mode" {
  description = "Specifies the service mode. Possible values are 'Classic', 'Default' and 'Serverless'. Defaults to 'Default'."
  type        = string
  default     = "Default"
}
variable "upstream_endpoint" {
  description = "An 'upstream_endpoint' block. Using this block requires the SignalR service to be Serverless. When creating multiple blocks they will be processed in the order they are defined in."
  type        = map(map(any))
  default     = null
}
#
# upstream_endpoint block structure :
#   url_template (string)             : (REQUIRED) The upstream URL Template. This can be a url or a template such as 'http://host.com/{hub}/api/{category}/{event}'.
#   category_pattern (string)         : (REQUIRED) The categories to match on, or '*' for all.
#   event_pattern (string)            : (REQUIRED) The events to match on, or '*' for all.
#   hub_pattern (string)              : (REQUIRED) The hubs to match on, or '*' for all.
#   user_assigned_identity_id (string): Specifies the Managed Identity IDs to be assigned to this signalR upstream setting by using resource uuid as both system assigned and user assigned identity is supported.


variable "live_trace" {
  description = "A 'live_trace' block."
  type        = map(any)
  default     = null
}
#
# live_trace block structure      :
#   enabled (bool)                  : Whether the live trace is enabled? Defaults to 'true'.
#   messaging_logs_enabled (bool)   : Whether the log category 'MessagingLogs' is enabled? Defaults to 'true'
#   connectivity_logs_enabled (bool): Whether the log category 'ConnectivityLogs' is enabled? Defaults to 'true'
#   http_request_logs_enabled (bool): Whether the log category 'HttpRequestLogs' is enabled? Defaults to 'true'


variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
