# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Databricks Virtual Network Peering resource. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group in which the Databricks Virtual Network Peering should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "workspace_id" {
  description = "(REQUIRED) The ID of the Databricks Workspace that this Databricks Virtual Network Peering is bound. Changing this forces a new resource to be created."
  type        = string

}
variable "address_space_prefixes" {
  description = "(REQUIRED) A list of address blocks reserved for this virtual network in CIDR notation."
  type        = list(any)

}
variable "remote_address_space_prefixes" {
  description = "(REQUIRED) A list of address blocks reserved for the remote virtual network in CIDR notation. Changing this forces a new resource to be created."
  type        = list(any)

}
variable "remote_virtual_network_id" {
  description = "(REQUIRED) The ID of the remote virtual network. Changing this forces a new resource to be created. ~> **NOTE:** The remote virtual network should be in the same region as the databricks workspace. Please see the [product documentation](https://learn.microsoft.com/azure/databricks/administration-guide/cloud-configurations/azure/vnet-peering) for more information."
  type        = string

}

# OPTIONAL VARIABLES

variable "allow_virtual_network_access" {
  description = "Can the VMs in the local virtual network space access the VMs in the remote virtual network space? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "allow_forwarded_traffic" {
  description = "Can the forwarded traffic from the VMs in the local virtual network be forwarded to the remote virtual network? Defaults to 'false'."
  type        = bool
  default     = false
}
variable "allow_gateway_transit" {
  description = "Can the gateway links be used in the remote virtual network to link to the Databricks virtual network? Defaults to 'false'."
  type        = bool
  default     = false
}
variable "use_remote_gateways" {
  description = "Can remote gateways be used on the Databricks virtual network? Defaults to 'false'. ~> **NOTE:** If the 'use_remote_gateways' is set to 'true', and 'allow_gateway_transit' on the remote peering is also 'true', the virtual network will use the gateways of the remote virtual network for transit. Only one peering can have this flag set to 'true'. 'use_remote_gateways' cannot be set if the virtual network already has a gateway."
  type        = bool
  default     = false
}
variable "virtual_network_id" {
  description = "The ID of the internal Virtual Network used by the DataBricks Workspace. ~> **NOTE:** The 'virtual_network_id' field is the value you must supply to the 'azurerm_virtual_network_peering' resources 'remote_virtual_network_id' field to successfully peer the Databricks Virtual Network with the remote virtual network."
  type        = string
  default     = null
}
