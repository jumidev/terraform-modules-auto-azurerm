# REQUIRED VARIABLES

variable "location" {
  description = "(REQUIRED) The Azure Region where the Purview Account should exist. Changing this forces a new Purview Account to be created."
  type        = string

}
variable "identity" {
  description = "(REQUIRED) An 'identity' block."
  type        = map(any)
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Purview Account. Possible values are 'UserAssigned' and 'SystemAssigned'.
#   identity_ids (string)   : Specifies a list of User Assigned Managed Identity IDs to be assigned to this Purview Account.


variable "name" {
  description = "(REQUIRED) The name which should be used for this Purview Account. Changing this forces a new Purview Account to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Purview Account should exist. Changing this forces a new Purview Account to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "public_network_enabled" {
  description = "Should the Purview Account be visible to the public network? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "managed_resource_group_name" {
  description = "The name which should be used for the new Resource Group where Purview Account creates the managed resources. Changing this forces a new Purview Account to be created."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Purview Account."
  type        = map(any)
  default     = null
}
