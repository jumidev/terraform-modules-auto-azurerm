# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Public IP. Changing this forces a new Public IP to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where this Public IP should exist. Changing this forces a new Public IP to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the Public IP should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "allocation_method" {
  description = "(REQUIRED) Defines the allocation method for this IP address. Possible values are 'Static' or 'Dynamic'. ~> **Note** 'Dynamic' Public IP Addresses aren't allocated until they're assigned to a resource (such as a Virtual Machine or a Load Balancer) by design within Azure. See 'ip_address' argument."
  type        = string

}

# OPTIONAL VARIABLES

variable "zones" {
  description = "A collection containing the availability zone to allocate the Public IP in. Changing this forces a new resource to be created. -> **Note:** Availability Zones are only supported with a [Standard SKU](https://docs.microsoft.com/azure/virtual-network/virtual-network-ip-addresses-overview-arm#standard) and [in select regions](https://docs.microsoft.com/azure/availability-zones/az-overview) at this time. Standard SKU Public IP Addresses that do not specify a zone are **not** zone-redundant by default."
  type        = string
  default     = null
}
variable "ddos_protection_mode" {
  description = "The DDoS protection mode of the public IP. Possible values are 'Disabled', 'Enabled', and 'VirtualNetworkInherited'. Defaults to 'VirtualNetworkInherited'."
  type        = bool
  default     = false
}
variable "ddos_protection_plan_id" {
  description = "The ID of DDoS protection plan associated with the public IP. -> **Note:** 'ddos_protection_plan_id' can only be set when 'ddos_protection_mode' is 'Enabled'."
  type        = string
  default     = null
}
variable "domain_name_label" {
  description = "Label for the Domain Name. Will be used to make up the FQDN. If a domain name label is specified, an A DNS record is created for the public IP in the Microsoft Azure DNS system."
  type        = string
  default     = null
}
variable "edge_zone" {
  description = "Specifies the Edge Zone within the Azure Region where this Public IP should exist. Changing this forces a new Public IP to be created."
  type        = string
  default     = null
}
variable "idle_timeout_in_minutes" {
  description = "Specifies the timeout for the TCP idle connection. The value can be set between 4 and 30 minutes."
  type        = number
  default     = null
}
variable "ip_tags" {
  description = "A mapping of IP tags to assign to the public IP. Changing this forces a new resource to be created. -> **Note** IP Tag 'RoutingPreference' requires multiple 'zones' and 'Standard' SKU to be set."
  type        = map(any)
  default     = null
}
variable "ip_version" {
  description = "The IP Version to use, IPv6 or IPv4. Changing this forces a new resource to be created. Defaults to 'IPv4'. -> **Note** Only 'static' IP address allocation is supported for IPv6."
  type        = string
  default     = "IPv4"
}
variable "public_ip_prefix_id" {
  description = "If specified then public IP address allocated will be provided from the public IP prefix resource. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "reverse_fqdn" {
  description = "A fully qualified domain name that resolves to this public IP address. If the reverseFqdn is specified, then a PTR DNS record is created pointing from the IP address in the in-addr.arpa domain to the reverse FQDN."
  type        = string
  default     = null
}
variable "sku" {
  description = "The SKU of the Public IP. Accepted values are 'Basic' and 'Standard'. Defaults to 'Basic'. Changing this forces a new resource to be created. -> **Note** Public IP Standard SKUs require 'allocation_method' to be set to 'Static'."
  type        = string
  default     = "Basic"
}
variable "sku_tier" {
  description = "The SKU Tier that should be used for the Public IP. Possible values are 'Regional' and 'Global'. Defaults to 'Regional'. Changing this forces a new resource to be created. -> **Note** When 'sku_tier' is set to 'Global', 'sku' must be set to 'Standard'."
  type        = string
  default     = "Regional"
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}

# OPTIONAL VARIABLES

variable "dns_a_record" {
  type    = map(any)
  default = null
}
# REQUIRED VARIABLES

variable "nat_gateway_id" {
  description = "(REQUIRED) The ID of the NAT Gateway. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "private_dns_a_record" {
  type    = map(any)
  default = null
}
