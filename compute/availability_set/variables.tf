# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the availability set. Changing this forces a new resource to be created."
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

variable "platform_update_domain_count" {
  description = "Specifies the number of update domains that are used. Defaults to '5'. Changing this forces a new resource to be created. ~> **NOTE:** The number of Update Domains varies depending on which Azure Region you're using. More information about update and fault domains and how they work can be found [here](https://learn.microsoft.com/en-us/azure/virtual-machines/availability-set-overview)."
  type        = number
  default     = 5
}
variable "platform_fault_domain_count" {
  description = "Specifies the number of fault domains that are used. Defaults to '3'. Changing this forces a new resource to be created. ~> **NOTE:** The number of Fault Domains varies depending on which Azure Region you're using. More information about update and fault domains and how they work can be found [here](https://learn.microsoft.com/en-us/azure/virtual-machines/availability-set-overview)."
  type        = number
  default     = 3
}
variable "proximity_placement_group_id" {
  description = "The ID of the Proximity Placement Group to which this Virtual Machine should be assigned. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "managed" {
  description = "Specifies whether the availability set is managed or not. Possible values are 'true' (to specify aligned) or 'false' (to specify classic). Default is 'true'. Changing this forces a new resource to be created."
  type        = bool
  default     = true
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
