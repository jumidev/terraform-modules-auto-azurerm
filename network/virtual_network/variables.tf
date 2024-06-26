# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the virtual network. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the virtual network. Changing this forces a new resource to be created."
  type        = string

}
variable "address_space" {
  description = "(REQUIRED) The address space that is used the virtual network. You can supply more than one address space."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The location/region where the virtual network is created. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "bgp_community" {
  description = "The BGP community attribute in format '<as-number>:<community-value>'. -> **NOTE** The 'as-number' segment is the Microsoft ASN, which is always '12076' for now."
  type        = string
  default     = null
}
variable "ddos_protection_plan" {
  description = "A 'ddos_protection_plan' block."
  type        = map(any)
  default     = null
}
#
# ddos_protection_plan block structure:
#   enable (bool)                       : (REQUIRED) Enable/disable DDoS Protection Plan on Virtual Network.


variable "encryption" {
  description = "A 'encryption' block."
  type        = map(any)
  default     = null
}
#
# encryption block structure:
#   enforcement (bool)        : (REQUIRED) Specifies if the encrypted Virtual Network allows VM that does not support encryption. Possible values are 'DropUnencrypted' and 'AllowUnencrypted'. -> **NOTE:** Currently 'AllowUnencrypted' is the only supported value for the 'enforcement' property as 'DropUnencrypted' is not yet in public preview or general availability. Please see the [official documentation](https://learn.microsoft.com/en-us/azure/virtual-network/virtual-network-encryption-overview#limitations) for more information.


variable "dns_servers" {
  description = "List of IP addresses of DNS servers -> **NOTE** Since 'dns_servers' can be configured both inline and via the separate 'azurerm_virtual_network_dns_servers' resource, we have to explicitly set it to empty slice ('[]') to remove it."
  type        = string
  default     = null
}
variable "edge_zone" {
  description = "Specifies the Edge Zone within the Azure Region where this Virtual Network should exist. Changing this forces a new Virtual Network to be created."
  type        = string
  default     = null
}
variable "flow_timeout_in_minutes" {
  description = "The flow timeout in minutes for the Virtual Network, which is used to enable connection tracking for intra-VM flows. Possible values are between '4' and '30' minutes."
  type        = number
  default     = null
}

# OPTIONAL VARIABLES

variable "private_dns_zone_virtual_network_link" {
  type    = map(any)
  default = null
}
