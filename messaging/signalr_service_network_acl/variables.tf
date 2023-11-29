# REQUIRED VARIABLES

variable "signalr_service_id" {
  description = "(REQUIRED) The ID of the SignalR service. Changing this forces a new resource to be created."
  type        = string

}
variable "default_action" {
  description = "(REQUIRED) The default action to control the network access when no other rule matches. Possible values are 'Allow' and 'Deny'."
  type        = string

}
variable "public_network" {
  description = "(REQUIRED) A 'public_network' block."
  type        = map(any)
}
#
# public_network block structure:
#   allowed_request_types (string): The allowed request types for the public network. Possible values are 'ClientConnection', 'ServerConnection', 'RESTAPI' and 'Trace'.
#   denied_request_types (string) : The denied request types for the public network. Possible values are 'ClientConnection', 'ServerConnection', 'RESTAPI' and 'Trace'.



# OPTIONAL VARIABLES

variable "private_endpoint" {
  description = "A 'private_endpoint' block."
  type        = map(any)
  default     = null
}
#
# private_endpoint block structure:
#   allowed_request_types (string)  : The allowed request types for the Private Endpoint Connection. Possible values are 'ClientConnection', 'ServerConnection', 'RESTAPI' and 'Trace'.
#   denied_request_types (string)   : The denied request types for the Private Endpoint Connection. Possible values are 'ClientConnection', 'ServerConnection', 'RESTAPI' and 'Trace'.


