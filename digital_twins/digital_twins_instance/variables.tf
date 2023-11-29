# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Digital Twins instance. Changing this forces a new Digital Twins instance to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Digital Twins instance should exist. Changing this forces a new Digital Twins instance to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Digital Twins instance should exist. Changing this forces a new Digital Twins instance to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Digital Twins instance. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both).
#   identity_ids (list)     : A list of User Assigned Managed Identity IDs to be assigned to this Digital Twins instance.


variable "tags" {
  description = "A mapping of tags which should be assigned to the Digital Twins instance."
  type        = map(any)
  default     = null
}
