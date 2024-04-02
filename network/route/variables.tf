# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the route. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the route. Changing this forces a new resource to be created."
  type        = string

}
variable "route_table_name" {
  description = "(REQUIRED) The name of the route table within which create the route. Changing this forces a new resource to be created."
  type        = string

}
variable "address_prefix" {
  description = "(REQUIRED) The destination to which the route applies. Can be CIDR (such as '10.1.0.0/16') or [Azure Service Tag](https://docs.microsoft.com/azure/virtual-network/service-tags-overview) (such as 'ApiManagement', 'AzureBackup' or 'AzureMonitor') format."
  type        = string

}
variable "next_hop_type" {
  description = "(REQUIRED) The type of Azure hop the packet should be sent to. Possible values are 'VirtualNetworkGateway', 'VnetLocal', 'Internet', 'VirtualAppliance' and 'None'."
  type        = string

}

# OPTIONAL VARIABLES

variable "next_hop_in_ip_address" {
  description = "Contains the IP address packets should be forwarded to. Next hop values are only allowed in routes where the next hop type is 'VirtualAppliance'."
  type        = string
  default     = null
}
