# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Application Security Group. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Application Security Group. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
# REQUIRED VARIABLES

variable "network_interface_id" {
  description = "(REQUIRED) The ID of the Network Interface. Changing this forces a new resource to be created."
  type        = string

}
# REQUIRED VARIABLES

variable "private_endpoint_id" {
  description = "(REQUIRED) The id of private endpoint to associate. Changing this forces a new resource to be created."
  type        = string

}
