# REQUIRED VARIABLES

variable "location" {
  description = "(REQUIRED) The Azure Region where the Arc Private Link Scope should exist. Changing this forces a new Azure Arc Private Link Scope to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for the Azure Arc Private Link Scope. Changing this forces a new Azure Arc Private Link Scope to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Azure Arc Private Link Scope should exist. Changing this forces a new Azure Arc Private Link Scope to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "public_network_access_enabled" {
  description = "Indicates whether machines associated with the private link scope can also use public Azure Arc service endpoints. Defaults to 'false'. Possible values are 'true' and 'false'."
  type        = bool
  default     = false
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Azure Arc Private Link Scope."
  type        = map(any)
  default     = null
}
