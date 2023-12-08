# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Outbound Rule. Changing this forces a new resource to be created."
  type        = string

}
variable "loadbalancer_id" {
  description = "(REQUIRED) The ID of the Load Balancer in which to create the Outbound Rule. Changing this forces a new resource to be created."
  type        = string

}
variable "backend_address_pool_id" {
  description = "(REQUIRED) The ID of the Backend Address Pool. Outbound traffic is randomly load balanced across IPs in the backend IPs."
  type        = string

}
variable "protocol" {
  description = "(REQUIRED) The transport protocol for the external endpoint. Possible values are 'Udp', 'Tcp' or 'All'."
  type        = string

}

# OPTIONAL VARIABLES

variable "frontend_ip_configuration" {
  description = "One or more 'frontend_ip_configuration' blocks."
  type        = map(map(any))
  default     = null
}
#
# frontend_ip_configuration block structure:
#   name (string)                            : (REQUIRED) The name of the Frontend IP Configuration.


variable "enable_tcp_reset" {
  description = "Receive bidirectional TCP Reset on TCP flow idle timeout or unexpected connection termination. This element is only used when the protocol is set to TCP."
  type        = bool
  default     = null
}
variable "allocated_outbound_ports" {
  description = "The number of outbound ports to be used for NAT. Defaults to '1024'."
  type        = number
  default     = 1024
}
variable "idle_timeout_in_minutes" {
  description = "The timeout for the TCP idle connection Defaults to '4'."
  type        = number
  default     = 4
}
