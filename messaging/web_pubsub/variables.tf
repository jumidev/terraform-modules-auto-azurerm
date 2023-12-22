# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Web PubSub service. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Web PubSub service. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the Web PubSub service exists. Changing this forces a new resource to be created."
  type        = string

}
variable "sku" {
  description = "(REQUIRED) Specifies which SKU to use. Possible values are 'Free_F1', 'Standard_S1', and 'Premium_P1'."
  type        = string

}

# OPTIONAL VARIABLES

variable "capacity" {
  description = "Specifies the number of units associated with this Web PubSub resource. Valid values are: Free: '1', Standard: '1', '2', '5', '10', '20', '50', '100'."
  type        = number
  default     = null
}
variable "public_network_access_enabled" {
  description = "Whether to enable public network access? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
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


variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Web PubSub. Possible values are 'SystemAssigned', 'UserAssigned'.
#   identity_ids (list)     : Specifies a list of User Assigned Managed Identity IDs to be assigned to this Web PubSub.


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
