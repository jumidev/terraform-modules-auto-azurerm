# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Public IP Prefix resource . Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Public IP Prefix. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "sku" {
  description = "The SKU of the Public IP Prefix. Accepted values are 'Standard'. Defaults to 'Standard'. Changing this forces a new resource to be created."
  type        = string
  default     = "Standard"
}
variable "ip_version" {
  description = "The IP Version to use, 'IPv6' or 'IPv4'. Changing this forces a new resource to be created. Default is 'IPv4'."
  type        = string
  default     = "IPv4"
}
variable "prefix_length" {
  description = "Specifies the number of bits of the prefix. The value can be set between 0 (4,294,967,296 addresses) and 31 (2 addresses). Defaults to '28'(16 addresses). Changing this forces a new resource to be created."
  type        = number
  default     = 28
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
variable "zones" {
  description = "Specifies a list of Availability Zones in which this Public IP Prefix should be located. Changing this forces a new Public IP Prefix to be created."
  type        = list(any)
  default     = []
}
# REQUIRED VARIABLES

variable "nat_gateway_id" {
  description = "(REQUIRED) The ID of the NAT Gateway. Changing this forces a new resource to be created."
  type        = string

}
