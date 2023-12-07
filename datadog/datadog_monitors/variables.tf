# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the user that will be associated with the Datadog Monitor. Changing this forces a new Datadog Monitor to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Datadog Monitor should exist. Changing this forces a new Datadog Monitor to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Datadog Monitor should exist. Changing this forces a new Datadog Monitor to be created."
  type        = string

}
variable "sku_name" {
  description = "(REQUIRED) The name which should be used for this sku."
  type        = string

}
variable "user" {
  description = "(REQUIRED) A 'user' block."
  type        = map(any)
}
#
# user block structure :
#   name (string)        : (REQUIRED) The name which should be used for this user_info. Changing this forces a new resource to be created.
#   email (string)       : (REQUIRED) Email of the user used by Datadog for contacting them if needed. Changing this forces a new Datadog Monitor to be created.
#   phone_number (number): Phone number of the user used by Datadog for contacting them if needed. Changing this forces a new resource to be created.


variable "datadog_organization" {
  description = "(REQUIRED) A 'datadog_organization' block."
  type        = map(any)
}
#
# datadog_organization block structure:
#   api_key (string)                    : (REQUIRED) Api key associated to the Datadog organization. Changing this forces a new Datadog Monitor to be created.
#   application_key (string)            : (REQUIRED) Application key associated to the Datadog organization. Changing this forces a new Datadog Monitor to be created.
#   enterprise_app_id (string)          : The ID of the enterprise_app. Changing this forces a new resource to be created.
#   linking_auth_code (string)          : The auth code used to linking to an existing Datadog organization. Changing this forces a new Datadog Monitor to be created.
#   linking_client_id (string)          : The ID of the linking_client. Changing this forces a new Datadog Monitor to be created.
#   redirect_uri (string)               : The redirect uri for linking. Changing this forces a new Datadog Monitor to be created.



# OPTIONAL VARIABLES

variable "identity" {
  description = "A 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the identity type of the Datadog Monitor. At this time the only allowed value is 'SystemAssigned'.


variable "monitoring_enabled" {
  description = "Is monitoring enabled? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Datadog Monitor."
  type        = map(any)
  default     = null
}
