# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the NAT Rule. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the resource. Changing this forces a new resource to be created."
  type        = string

}
variable "loadbalancer_id" {
  description = "(REQUIRED) The ID of the Load Balancer in which to create the NAT Rule. Changing this forces a new resource to be created."
  type        = string

}
variable "frontend_ip_configuration_name" {
  description = "(REQUIRED) The name of the frontend IP configuration exposing this rule."
  type        = string
  default     = "primary"
}
variable "protocol" {
  description = "(REQUIRED) The transport protocol for the external endpoint. Possible values are 'Udp', 'Tcp' or 'All'."
  type        = string

}
variable "backend_port" {
  description = "(REQUIRED) The port used for internal connections on the endpoint. Possible values range between 1 and 65535, inclusive."
  type        = string

}

# OPTIONAL VARIABLES

variable "frontend_port" {
  description = "The port for the external endpoint. Port numbers for each Rule must be unique within the Load Balancer. Possible values range between 1 and 65534, inclusive."
  type        = string
  default     = null
}
variable "frontend_port_start" {
  description = "The port range start for the external endpoint. This property is used together with BackendAddressPool and FrontendPortRangeEnd. Individual inbound NAT rule port mappings will be created for each backend address from BackendAddressPool. Acceptable values range from 1 to 65534, inclusive."
  type        = string
  default     = null
}
variable "frontend_port_end" {
  description = "The port range end for the external endpoint. This property is used together with BackendAddressPool and FrontendPortRangeStart. Individual inbound NAT rule port mappings will be created for each backend address from BackendAddressPool. Acceptable values range from 1 to 65534, inclusive."
  type        = string
  default     = null
}
variable "backend_address_pool_id" {
  description = "Specifies a reference to backendAddressPool resource."
  type        = string
  default     = null
}
variable "idle_timeout_in_minutes" {
  description = "Specifies the idle timeout in minutes for TCP connections. Valid values are between '4' and '30' minutes. Defaults to '4' minutes."
  type        = number
  default     = 4
}
variable "enable_floating_ip" {
  description = "Are the Floating IPs enabled for this Load Balancer Rule? A 'floating” IP is reassigned to a secondary server in case the primary server fails. Required to configure a SQL AlwaysOn Availability Group. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "enable_tcp_reset" {
  description = "Is TCP Reset enabled for this Load Balancer Rule?"
  type        = bool
  default     = null
}

# OPTIONAL VARIABLES

variable "network_interface_nat_rule_association" {
  type    = map(any)
  default = null
}
