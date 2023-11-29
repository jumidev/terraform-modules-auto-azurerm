# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the proximity placement group. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the availability set. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "allowed_vm_sizes" {
  description = "Specifies the supported sizes of Virtual Machines that can be created in the Proximity Placement Group."
  type        = string
  default     = null
}
variable "zone" {
  description = "Specifies the supported zone of the Proximity Placement Group. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
