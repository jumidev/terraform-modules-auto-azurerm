# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name which should be used for this Mobile Network Sim Groups. Changing this forces a new Mobile Network Sim Group to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the Azure Region where the Mobile Network Sim Groups should exist. Changing this forces a new Mobile Network Sim Group to be created."
  type        = string

}
variable "mobile_network_id" {
  description = "(REQUIRED) The ID of Mobile Network which the Mobile Network Sim Group belongs to. Changing this forces a new Mobile Network Slice to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "encryption_key_url" {
  description = "A key to encrypt the SIM data that belongs to this SIM group."
  type        = string
  default     = null
}
variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity. Possible value is 'UserAssigned'.
#   identity_ids (list)     : (REQUIRED) A list of IDs for User Assigned Managed Identity resources to be assigned.


variable "tags" {
  description = "A mapping of tags which should be assigned to the Mobile Network Sim Groups."
  type        = map(any)
  default     = null
}
