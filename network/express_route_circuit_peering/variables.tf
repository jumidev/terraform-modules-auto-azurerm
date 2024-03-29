# REQUIRED VARIABLES

variable "peering_type" {
  description = "(REQUIRED) The type of the ExpressRoute Circuit Peering. Acceptable values include 'AzurePrivatePeering', 'AzurePublicPeering' and 'MicrosoftPeering'. ~> **NOTE:** only one Peering of each Type can be created. Attempting to create multiple peerings of the same type will overwrite the original peering."
  type        = string

}
variable "express_route_circuit_name" {
  description = "(REQUIRED) The name of the ExpressRoute Circuit in which to create the Peering. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Express Route Circuit Peering. Changing this forces a new resource to be created."
  type        = string

}
variable "vlan_id" {
  description = "(REQUIRED) A valid VLAN ID to establish this peering on."
  type        = string

}

# OPTIONAL VARIABLES

variable "primary_peer_address_prefix" {
  description = "A '/30' subnet for the primary link. Required when config for IPv4."
  type        = string
  default     = null
}
variable "secondary_peer_address_prefix" {
  description = "A '/30' subnet for the secondary link. Required when config for IPv4."
  type        = string
  default     = null
}
variable "ipv4_enabled" {
  description = "A boolean value indicating whether the IPv4 peering is enabled. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "shared_key" {
  description = "The shared key. Can be a maximum of 25 characters."
  type        = string
  default     = null
}
variable "peer_asn" {
  description = "The Either a 16-bit or a 32-bit ASN. Can either be public or private."
  type        = string
  default     = null
}
variable "microsoft_peering_config" {
  description = "A 'microsoft_peering_config' block. Required when 'peering_type' is set to 'MicrosoftPeering' and config for IPv4."
  type        = map(any)
  default     = null
}
#
# microsoft_peering_config block structure:
#   advertised_public_prefixes (list)       : (REQUIRED) A list of Advertised Public Prefixes.
#   customer_asn (string)                   : The CustomerASN of the peering. Defaults to '0'.
#   routing_registry_name (string)          : The Routing Registry against which the AS number and prefixes are registered. For example: 'ARIN', 'RIPE', 'AFRINIC' etc. Defaults to 'NONE'.
#   advertised_communities (string)         : The communities of Bgp Peering specified for microsoft peering.


variable "ipv6" {
  description = "A 'ipv6' block."
  type        = map(any)
  default     = null
}
#
# ipv6 block structure                  :
#   primary_peer_address_prefix (string)  : (REQUIRED) A subnet for the primary link.
#   secondary_peer_address_prefix (string): (REQUIRED) A subnet for the secondary link.
#   enabled (bool)                        : A boolean value indicating whether the IPv6 peering is enabled. Defaults to 'true'.
#   microsoft_peering (block)             : A 'microsoft_peering' block.
#   route_filter_id (string)              : The ID of the Route Filter. Only available when 'peering_type' is set to 'MicrosoftPeering'. ~> **NOTE:** 'ipv6' can be specified when 'peering_type' is 'MicrosoftPeering' or 'AzurePrivatePeering'
#
# microsoft_peering block structure:
#   advertised_public_prefixes (list): A list of Advertised Public Prefixes.
#   customer_asn (string)            : The CustomerASN of the peering. Defaults to '0'.
#   routing_registry_name (string)   : The Routing Registry against which the AS number and prefixes are registered. For example: 'ARIN', 'RIPE', 'AFRINIC' etc. Defaults to 'NONE'.
#   advertised_communities (string)  : The communities of Bgp Peering specified for microsoft peering.


variable "route_filter_id" {
  description = "The ID of the Route Filter. Only available when 'peering_type' is set to 'MicrosoftPeering'."
  type        = string
  default     = null
}
variable "express_route_circuit_resource_group_name" {
  description = "The Name of the Resource Group where the ExpressRoute circuit exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
