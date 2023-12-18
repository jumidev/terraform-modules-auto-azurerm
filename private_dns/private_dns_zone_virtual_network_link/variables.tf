# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Private DNS Zone Virtual Network Link. Changing this forces a new resource to be created."
  type        = string

}
variable "private_dns_zone_name" {
  description = "(REQUIRED) The name of the Private DNS zone (without a terminating dot). Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the resource group where the Private DNS Zone exists. Changing this forces a new resource to be created."
  type        = string

}
variable "virtual_network_id" {
  description = "(REQUIRED) The ID of the Virtual Network that should be linked to the DNS Zone. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "registration_enabled" {
  description = "Is auto-registration of virtual machine records in the virtual network in the Private DNS zone enabled? Defaults to 'false'."
  type        = bool
  default     = false
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
