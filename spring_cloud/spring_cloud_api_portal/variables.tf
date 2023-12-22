# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Spring Cloud API Portal. Changing this forces a new Spring Cloud API Portal to be created. The only possible value is 'default'."
  type        = string

}
variable "spring_cloud_service_id" {
  description = "(REQUIRED) The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud API Portal to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "gateway_ids" {
  description = "Specifies a list of Spring Cloud Gateway."
  type        = list(any)
  default     = []
}
variable "https_only_enabled" {
  description = "is only https is allowed?"
  type        = bool
  default     = null
}
variable "instance_count" {
  description = "Specifies the required instance count of the Spring Cloud API Portal. Possible Values are between '1' and '500'. Defaults to '1' if not specified."
  type        = number
  default     = 1
}
variable "public_network_access_enabled" {
  description = "Is the public network access enabled?"
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
#   client_id (string)    : The public identifier for the application.
#   client_secret (string): The secret known only to the application and the authorization server.
#   issuer_uri (string)   : The URI of Issuer Identifier.
#   scope (string)        : It defines the specific actions applications can be allowed to do on a user's behalf.


