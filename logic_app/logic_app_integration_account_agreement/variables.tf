# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Logic App Integration Account Agreement. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Logic App Integration Account Agreement should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "integration_account_name" {
  description = "(REQUIRED) The name of the Logic App Integration Account. Changing this forces a new resource to be created."
  type        = string

}
variable "agreement_type" {
  description = "(REQUIRED) The type of the Logic App Integration Account Agreement. Possible values are 'AS2', 'X12' and 'Edifact'."
  type        = string

}
variable "content" {
  description = "(REQUIRED) The content of the Logic App Integration Account Agreement."
  type        = string

}
variable "guest_identity" {
  description = "(REQUIRED) A 'guest_identity' block."
  type        = map(any)
}
#
# guest_identity block structure:
#   qualifier (string)            : (REQUIRED) The authenticating body that provides unique guest identities to organizations.
#   value (string)                : (REQUIRED) The value that identifies the documents that your logic apps receive.


variable "guest_partner_name" {
  description = "(REQUIRED) The name of the guest Logic App Integration Account Partner."
  type        = string

}
variable "host_identity" {
  description = "(REQUIRED) A 'host_identity' block."
  type        = map(any)
}
#
# host_identity block structure:
#   qualifier (string)           : (REQUIRED) The authenticating body that provides unique host identities to organizations.
#   value (string)               : (REQUIRED) The value that identifies the documents that your logic apps receive.


variable "host_partner_name" {
  description = "(REQUIRED) The name of the host Logic App Integration Account Partner."
  type        = string

}

# OPTIONAL VARIABLES

variable "metadata" {
  description = "The metadata of the Logic App Integration Account Agreement."
  type        = string
  default     = null
}
