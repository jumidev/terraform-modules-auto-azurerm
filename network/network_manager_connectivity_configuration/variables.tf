# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name which should be used for this Network Manager Connectivity Configuration. Changing this forces a new Network Manager Connectivity Configuration to be created."
  type        = string

}
variable "network_manager_id" {
  description = "(REQUIRED) Specifies the ID of the Network Manager. Changing this forces a new Network Manager Connectivity Configuration to be created."
  type        = string

}
variable "applies_to_group" {
  description = "(REQUIRED) One or more 'applies_to_group' blocks."
  type        = map(map(any))
}
#
# applies_to_group block structure:
#   group_connectivity (string)     : (REQUIRED) Specifies the group connectivity type. Possible values are 'None' and 'DirectlyConnected'.
#   network_group_id (string)       : (REQUIRED) Specifies the resource ID of Network Group which the configuration applies to.
#   global_mesh_enabled (bool)      : Indicates whether to global mesh is supported for this group. Possible values are 'true' and 'false'.
#   use_hub_gateway (bool)          : Indicates whether the hub gateway is used. Possible values are 'true' and 'false'.


variable "connectivity_topology" {
  description = "(REQUIRED) Specifies the connectivity topology type. Possible values are 'HubAndSpoke' and 'Mesh'."
  type        = string

}

# OPTIONAL VARIABLES

variable "delete_existing_peering_enabled" {
  description = "Indicates whether to remove current existing Virtual Network Peering in the Connectivity Configuration affected scope. Possible values are 'true' and 'false'."
  type        = bool
  default     = null
}
variable "description" {
  description = "A description of the Connectivity Configuration."
  type        = string
  default     = null
}
variable "global_mesh_enabled" {
  description = "Indicates whether to global mesh is supported. Possible values are 'true' and 'false'."
  type        = bool
  default     = null
}
variable "hub" {
  description = "A 'hub' block."
  type        = map(any)
  default     = null
}
#
# hub block structure   :
#   resource_id (string)  : (REQUIRED) Specifies the resource ID used as hub in Hub And Spoke topology.
#   resource_type (string): (REQUIRED) Specifies the resource Type used as hub in Hub And Spoke topology.


