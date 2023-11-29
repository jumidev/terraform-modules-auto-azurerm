# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Logic App Integration Account Partner. Changing this forces a new Logic App Integration Account Partner to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Logic App Integration Account Partner should exist. Changing this forces a new Logic App Integration Account Partner to be created."
  type        = string

}
variable "integration_account_name" {
  description = "(REQUIRED) The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Partner to be created."
  type        = string

}
variable "business_identity" {
  description = "(REQUIRED) A 'business_identity' block."
  type        = map(any)
}
#
# business_identity block structure:
#   qualifier (string)               : (REQUIRED) The authenticating body that provides unique business identities to organizations.
#   value (string)                   : (REQUIRED) The value that identifies the documents that your logic apps receive.



# OPTIONAL VARIABLES

variable "metadata" {
  description = "A JSON mapping of any Metadata for this Logic App Integration Account Partner."
  type        = string
  default     = null
}
