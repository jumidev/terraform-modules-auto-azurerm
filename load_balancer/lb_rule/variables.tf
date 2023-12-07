# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the LB Rule. Changing this forces a new resource to be created."
  type        = string

}
variable "loadbalancer_id" {
  description = "(REQUIRED) The ID of the Load Balancer in which to create the Rule. Changing this forces a new resource to be created."
  type        = string

}
variable "frontend_ip_configuration_name" {
  description = "(REQUIRED) The name of the frontend IP configuration to which the rule is associated."
  type        = string
  default     = "primary"
}
variable "protocol" {
  description = "(REQUIRED) The transport protocol for the external endpoint. Possible values are 'Tcp', 'Udp' or 'All'."
  type        = string

}
variable "frontend_port" {
  description = "(REQUIRED) The port for the external endpoint. Port numbers for each Rule must be unique within the Load Balancer. Possible values range between 0 and 65534, inclusive."
  type        = string

}
variable "backend_port" {
  description = "(REQUIRED) The port used for internal connections on the endpoint. Possible values range between 0 and 65535, inclusive."
  type        = string

}

# OPTIONAL VARIABLES

variable "backend_address_pool_ids" {
  description = "A list of reference to a Backend Address Pool over which this Load Balancing Rule operates."
  type        = list(any)
  default     = []
}
variable "probe_id" {
  description = "A reference to a Probe used by this Load Balancing Rule."
  type        = string
  default     = null
}
variable "enable_floating_ip" {
  description = "Are the Floating IPs enabled for this Load Balncer Rule? A 'floating” IP is reassigned to a secondary server in case the primary server fails. Required to configure a SQL AlwaysOn Availability Group. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "idle_timeout_in_minutes" {
  description = "Specifies the idle timeout in minutes for TCP connections. Valid values are between '4' and '30' minutes. Defaults to '4' minutes."
  type        = string
  default     = "4"
}
variable "load_distribution" {
  description = "Specifies the load balancing distribution type to be used by the Load Balancer. Possible values are: 'Default' – The load balancer is configured to use a 5 tuple hash to map traffic to available servers. 'SourceIP' – The load balancer is configured to use a 2 tuple hash to map traffic to available servers. 'SourceIPProtocol' – The load balancer is configured to use a 3 tuple hash to map traffic to available servers. Also known as Session Persistence, where the options are called 'None', 'Client IP' and 'Client IP and Protocol' respectively."
  type        = string
  default     = null
}
variable "disable_outbound_snat" {
  description = "Is snat enabled for this Load Balancer Rule? Default 'false'."
  type        = bool
  default     = null
}
variable "enable_tcp_reset" {
  description = "Is TCP Reset enabled for this Load Balancer Rule?"
  type        = bool
  default     = null
}
