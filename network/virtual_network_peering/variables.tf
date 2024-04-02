# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the virtual network peering. Changing this forces a new resource to be created."
  type        = string

}
variable "virtual_network_name" {
  description = "(REQUIRED) The name of the virtual network. Changing this forces a new resource to be created."
  type        = string

}
variable "remote_virtual_network_id" {
  description = "(REQUIRED) The full Azure resource ID of the remote virtual network. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the virtual network peering. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "allow_virtual_network_access" {
  description = "Controls if the VMs in the remote virtual network can access VMs in the local virtual network. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "allow_forwarded_traffic" {
  description = "Controls if forwarded traffic from VMs in the remote virtual network is allowed. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "allow_gateway_transit" {
  description = "Controls gatewayLinks can be used in the remote virtual network's link to the local virtual network. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "use_remote_gateways" {
  description = "Controls if remote gateways can be used on the local virtual network. If the flag is set to 'true', and 'allow_gateway_transit' on the remote peering is also 'true', virtual network will use gateways of remote virtual network for transit. Only one peering can have this flag set to 'true'. This flag cannot be set if virtual network already has a gateway. Defaults to 'false'. -> **NOTE:** 'use_remote_gateways' must be set to 'false' if using Global Virtual Network Peerings."
  type        = bool
  default     = false
}
variable "triggers" {
  description = "A mapping of key values pairs that can be used to sync network routes from the remote virtual network to the local virtual network. See [the trigger example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network_peering#example-usage-triggers) for an example on how to set it up."
  type        = string
  default     = null
}
