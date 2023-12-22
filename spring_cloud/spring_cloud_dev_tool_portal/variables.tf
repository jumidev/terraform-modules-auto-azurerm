# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Spring Cloud Dev Tool Portal. The only possible value is 'default'. Changing this forces a new Spring Cloud Dev Tool Portal to be created."
  type        = string

}
variable "spring_cloud_service_id" {
  description = "(REQUIRED) The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Dev Tool Portal to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "application_accelerator_enabled" {
  description = "Should the Accelerator plugin be enabled?"
  type        = bool
  default     = null
}
variable "application_live_view_enabled" {
  description = "Should the Application Live View be enabled?"
  type        = bool
  default     = null
}
variable "public_network_access_enabled" {
  description = "Is public network access enabled?"
  type        = bool
  default     = null
}
variable "sso" {
  description = "A 'sso' block."
  type        = map(any)
  default     = null
}
#
# sso block structure   :
#   client_id (string)    : Specifies the public identifier for the application.
#   client_secret (string): Specifies the secret known only to the application and the authorization server.
#   metadata_url (string) : Specifies the URI of a JSON file with generic OIDC provider configuration.
#   scope (list)          : Specifies a list of specific actions applications can be allowed to do on a user's behalf.


