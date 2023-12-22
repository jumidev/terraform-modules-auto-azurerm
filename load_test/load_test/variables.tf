# REQUIRED VARIABLES

variable "location" {
  description = "(REQUIRED) The Azure Region where the Load Test should exist. Changing this forces a new Load Test to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) Specifies the name of this Load Test. Changing this forces a new Load Test to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the name of the Resource Group within which this Load Test should exist. Changing this forces a new Load Test to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "Description of the resource. Changing this forces a new Load Test to be created."
  type        = string
  default     = null
}
variable "identity" {
  description = "An 'identity' block. Specifies the Managed Identity which should be assigned to this Load Test."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   principal_id (string)   : The Principal ID for the System-Assigned Managed Identity assigned to this Load Test.
#   tenant_id (string)      : The Tenant ID for the System-Assigned Managed Identity assigned to this Load Test.


variable "tags" {
  description = "A mapping of tags which should be assigned to the Load Test."
  type        = map(any)
  default     = null
}
