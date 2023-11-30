# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Point-to-Site VPN Gateway. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Point-to-Site VPN Gateway. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "connection_configuration" {
  description = "(REQUIRED) A 'connection_configuration' block."
  type        = map(any)
}
#
# connection_configuration block structure:
#   name (string)                           : (REQUIRED) The Name which should be used for this Connection Configuration.
#   vpn_client_address_pool (block)         : (REQUIRED) A 'vpn_client_address_pool' block.
#   route (block)                           : A 'route' block.
#   internet_security_enabled (bool)        : Should Internet Security be enabled to secure internet traffic? Changing this forces a new resource to be created. Defaults to 'false'.
#
# route block structure             :
#   associated_route_table_id (string): (REQUIRED) The Virtual Hub Route Table resource id associated with this Routing Configuration.
#   inbound_route_map_id (string)     : The resource ID of the Route Map associated with this Routing Configuration for inbound learned routes.
#   outbound_route_map_id (string)    : The resource ID of the Route Map associated with this Routing Configuration for outbound advertised routes.
#   propagated_route_table (block)    : A 'propagated_route_table' block.
#
# propagated_route_table block structure:
#   ids (string)                          : (REQUIRED) The list of Virtual Hub Route Table resource id which the routes will be propagated to.
#   labels (string)                       : The list of labels to logically group Virtual Hub Route Tables which the routes will be propagated to.
#
# vpn_client_address_pool block structure:
#   address_prefixes (list)                : (REQUIRED) A list of CIDR Ranges which should be used as Address Prefixes.


variable "scale_unit" {
  description = "(REQUIRED) The [Scale Unit](https://docs.microsoft.com/azure/virtual-wan/virtual-wan-faq#what-is-a-virtual-wan-gateway-scale-unit) for this Point-to-Site VPN Gateway."
  type        = string

}
variable "virtual_hub_id" {
  description = "(REQUIRED) The ID of the Virtual Hub where this Point-to-Site VPN Gateway should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "vpn_server_configuration_id" {
  description = "(REQUIRED) The ID of the VPN Server Configuration which this Point-to-Site VPN Gateway should use. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "dns_servers" {
  description = "A list of IP Addresses of DNS Servers for the Point-to-Site VPN Gateway."
  type        = list(any)
  default     = []
}
variable "routing_preference_internet_enabled" {
  description = "Is the Routing Preference for the Public IP Interface of the VPN Gateway enabled? Defaults to 'false'. Changing this forces a new resource to be created."
  type        = bool
  default     = false
}
variable "tags" {
  description = "A mapping of tags to assign to the Point-to-Site VPN Gateway."
  type        = map(any)
  default     = null
}
