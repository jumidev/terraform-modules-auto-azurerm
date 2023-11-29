# REQUIRED VARIABLES

variable "location" {
  description = "(REQUIRED) The Azure Region where the Fluid Relay Server should exist. Changing this forces a new Fluid Relay Server to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Fluid Relay Server. Changing this forces a new Fluid Relay Server to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Fluid Relay Server should exist. Changing this forces a new Fluid Relay Server to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "tags" {
  description = "A mapping of tags which should be assigned to the Fluid Relay Server."
  type        = map(any)
  default     = null
}
variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Fluid Relay Service. Possible values are 'SystemAssigned','UserAssigned' and 'SystemAssigned, UserAssigned'.
#   identity_ids (string)   : Specifies a list of User Assigned Managed Identity IDs to be assigned to this Fluid Relay Service.


variable "storage_sku" {
  description = "Sku of the storage associated with the resource, Possible values are 'standard' and 'basic'. Changing this forces a new Fluid Relay Server to be created."
  type        = string
  default     = null
}
