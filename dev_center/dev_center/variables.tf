# REQUIRED VARIABLES

variable "location" {
  description = "(REQUIRED) The Azure Region where the Dev Center should exist. Changing this forces a new Dev Center to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) Specifies the name of this Dev Center. Changing this forces a new Dev Center to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the name of the Resource Group within which this Dev Center should exist. Changing this forces a new Dev Center to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "identity" {
  description = "An 'identity' block. Specifies the Managed Identity which should be assigned to this Dev Center."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   principal_id (string)   : The Principal ID for the System-Assigned Managed Identity assigned to this Dev Center.
#   tenant_id (string)      : The Tenant ID for the System-Assigned Managed Identity assigned to this Dev Center.


variable "tags" {
  description = "A mapping of tags which should be assigned to the Dev Center."
  type        = map(any)
  default     = null
}
