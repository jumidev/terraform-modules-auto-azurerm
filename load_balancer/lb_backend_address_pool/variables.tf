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

variable "tunnel_interface" {
  description = "One or more 'tunnel_interface' blocks."
  type        = map(map(any))
  default     = null
}
#
# tunnel_interface block structure:
#   identifier (string)             : (REQUIRED) The unique identifier of this Gateway Lodbalancer Tunnel Interface.
#   type (string)                   : (REQUIRED) The traffic type of this Gateway Lodbalancer Tunnel Interface. Possible values are 'None', 'Internal' and 'External'.
#   protocol (string)               : (REQUIRED) The protocol used for this Gateway Lodbalancer Tunnel Interface. Possible values are 'None', 'Native' and 'VXLAN'.
#   port (string)                   : (REQUIRED) The port number that this Gateway Lodbalancer Tunnel Interface listens to.


variable "virtual_network_id" {
  description = "The ID of the Virtual Network within which the Backend Address Pool should exist."
  type        = string
  default     = null
}
