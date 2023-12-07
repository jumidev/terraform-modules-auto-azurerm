# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the NAT pool. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the resource. Changing this forces a new resource to be created."
  type        = string

}
variable "loadbalancer_id" {
  description = "(REQUIRED) The ID of the Load Balancer in which to create the NAT pool. Changing this forces a new resource to be created."
  type        = string

}
variable "frontend_ip_configuration_name" {
  description = "(REQUIRED) The name of the frontend IP configuration exposing this rule."
  type        = string
  default     = "primary"
}
variable "protocol" {
  description = "(REQUIRED) The transport protocol for the external endpoint. Possible values are 'All', 'Tcp' and 'Udp'."
  type        = string

}
variable "frontend_port_start" {
  description = "(REQUIRED) The first port number in the range of external ports that will be used to provide Inbound NAT to NICs associated with this Load Balancer. Possible values range between 1 and 65534, inclusive."
  type        = string

}
variable "frontend_port_end" {
  description = "(REQUIRED) The last port number in the range of external ports that will be used to provide Inbound NAT to NICs associated with this Load Balancer. Possible values range between 1 and 65534, inclusive."
  type        = string

}
variable "backend_port" {
  description = "(REQUIRED) The port used for the internal endpoint. Possible values range between 1 and 65535, inclusive."
  type        = string

}

# OPTIONAL VARIABLES

variable "idle_timeout_in_minutes" {
  description = "Specifies the idle timeout in minutes for TCP connections. Valid values are between '4' and '30'. Defaults to '4'."
  type        = string
  default     = "4"
}
variable "floating_ip_enabled" {
  description = "Are the floating IPs enabled for this Load Balancer Rule? A floating IP is reassigned to a secondary server in case the primary server fails. Required to configure a SQL AlwaysOn Availability Group."
  type        = bool
  default     = null
}
variable "tcp_reset_enabled" {
  description = "Is TCP Reset enabled for this Load Balancer Rule?"
  type        = bool
  default     = null
}
