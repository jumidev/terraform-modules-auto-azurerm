# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Dev Test Virtual Network. Changing this forces a new resource to be created."
  type        = string

}
variable "lab_name" {
  description = "(REQUIRED) Specifies the name of the Dev Test Lab in which the Virtual Network should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the Dev Test Lab resource exists. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "A description for the Virtual Network."
  type        = string
  default     = null
}
variable "subnet" {
  description = "A 'subnet' block."
  type        = map(any)
  default     = null
}
#
# subnet block structure                  :
#   use_public_ip_address (string)          : Can Virtual Machines in this Subnet use Public IP Addresses? Possible values are 'Allow', 'Default' and 'Deny'. Defaults to 'Allow'.
#   use_in_virtual_machine_creation (string): Can this subnet be used for creating Virtual Machines? Possible values are 'Allow', 'Default' and 'Deny'. Defaults to 'Allow'.


variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
