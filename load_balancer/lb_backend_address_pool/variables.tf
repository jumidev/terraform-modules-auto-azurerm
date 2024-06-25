# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Backend Address Pool. Changing this forces a new resource to be created."
  type        = string

}
variable "loadbalancer_id" {
  description = "(REQUIRED) The ID of the Load Balancer in which to create the Backend Address Pool. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "synchronous_mode" {
  description = "The backend address synchronous mode for the Backend Address Pool. Possible values are 'Automatic' and 'Manual'. This is required with 'virtual_network_id'. Changing this forces a new resource to be created. -> **NOTE:** The 'synchronous_mode' can set only for Load Balancer with 'Standard' SKU."
  type        = string
  default     = null
}
variable "tunnel_interfaces" {
  description = "One or more 'tunnel_interface' blocks."
  type        = map(map(any))
  default     = null
}
#
# tunnel_interface block structure:
#   identifier (string)             : (REQUIRED) The unique identifier of this Gateway Load Balancer Tunnel Interface.
#   type (string)                   : (REQUIRED) The traffic type of this Gateway Load Balancer Tunnel Interface. Possible values are 'None', 'Internal' and 'External'.
#   protocol (string)               : (REQUIRED) The protocol used for this Gateway Load Balancer Tunnel Interface. Possible values are 'None', 'Native' and 'VXLAN'.
#   port (string)                   : (REQUIRED) The port number that this Gateway Load Balancer Tunnel Interface listens to.


variable "virtual_network_id" {
  description = "The ID of the Virtual Network within which the Backend Address Pool should exist."
  type        = string
  default     = null
}

# OPTIONAL VARIABLES

variable "network_interface_backend_address_pool_association" {
  type    = map(any)
  default = null
}

# OPTIONAL VARIABLES

variable "network_interface_application_gateway_backend_address_pool_association" {
  type    = map(any)
  default = null
}
