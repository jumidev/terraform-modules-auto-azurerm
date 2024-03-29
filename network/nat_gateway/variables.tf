# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the NAT Gateway. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the name of the Resource Group in which the NAT Gateway should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the NAT Gateway should exist. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "idle_timeout_in_minutes" {
  description = "The idle timeout which should be used in minutes. Defaults to '4'."
  type        = number
  default     = 4
}
variable "sku_name" {
  description = "The SKU which should be used. At this time the only supported value is 'Standard'. Defaults to 'Standard'."
  type        = string
  default     = "Standard"
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
variable "zones" {
  description = "A list of Availability Zones in which this NAT Gateway should be located. Changing this forces a new NAT Gateway to be created. -> **NOTE:** Only one Availability Zone can be defined. For more information, please check out the [Azure documentation](https://learn.microsoft.com/en-us/azure/nat-gateway/nat-overview#availability-zones)"
  type        = list(any)
  default     = []
}
# REQUIRED VARIABLES

variable "public_ip_address_id" {
  description = "(REQUIRED) The ID of the Public IP which this NAT Gateway which should be connected to. Changing this forces a new resource to be created."
  type        = string

}
# REQUIRED VARIABLES

variable "subnet_id" {
  description = "(REQUIRED) The ID of the Subnet. Changing this forces a new resource to be created."
  type        = string

}
# REQUIRED VARIABLES

variable "public_ip_prefix_id" {
  description = "(REQUIRED) The ID of the Public IP Prefix which this NAT Gateway which should be connected to. Changing this forces a new resource to be created."
  type        = string

}
