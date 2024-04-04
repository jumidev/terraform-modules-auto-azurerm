# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the route table. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the route table. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "routes" {
  description = "List of 'route' objects representing routes as defined below. Each object accepts the arguments documented below. -> **NOTE** Since 'route' can be configured both inline and via the separate 'azurerm_route' resource, we have to explicitly set it to empty slice ('[]') to remove it."
  type        = map(map(any))
  default     = null
}
#
# route block structure          :
#   name (string)                  : (REQUIRED) The name of the route.
#   address_prefix (string)        : (REQUIRED) The destination to which the route applies. Can be CIDR (such as '10.1.0.0/16') or [Azure Service Tag](https://docs.microsoft.com/azure/virtual-network/service-tags-overview) (such as 'ApiManagement', 'AzureBackup' or 'AzureMonitor') format.
#   next_hop_type (string)         : (REQUIRED) The type of Azure hop the packet should be sent to. Possible values are 'VirtualNetworkGateway', 'VnetLocal', 'Internet', 'VirtualAppliance' and 'None'.
#   next_hop_in_ip_address (string): Contains the IP address packets should be forwarded to. Next hop values are only allowed in routes where the next hop type is 'VirtualAppliance'.


variable "disable_bgp_route_propagation" {
  description = "Boolean flag which controls propagation of routes learned by BGP on that route table. True means disable."
  type        = bool
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
# REQUIRED VARIABLES

variable "subnet_id" {
  description = "(REQUIRED) The ID of the Subnet. Changing this forces a new resource to be created."
  type        = string

}
