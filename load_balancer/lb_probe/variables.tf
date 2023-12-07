# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Probe. Changing this forces a new resource to be created."
  type        = string

}
variable "loadbalancer_id" {
  description = "(REQUIRED) The ID of the LoadBalancer in which to create the NAT Rule. Changing this forces a new resource to be created."
  type        = string

}
variable "port" {
  description = "(REQUIRED) Port on which the Probe queries the backend endpoint. Possible values range from 1 to 65535, inclusive."
  type        = string

}

# OPTIONAL VARIABLES

variable "protocol" {
  description = "Specifies the protocol of the end point. Possible values are 'Http', 'Https' or 'Tcp'. If TCP is specified, a received ACK is required for the probe to be successful. If HTTP is specified, a 200 OK response from the specified URI is required for the probe to be successful."
  type        = string
  default     = null
}
variable "probe_threshold" {
  description = "The number of consecutive successful or failed probes that allow or deny traffic to this endpoint. Possible values range from '1' to '100'. The default value is '1'."
  type        = string
  default     = "1"
}
variable "request_path" {
  description = "The URI used for requesting health status from the backend endpoint. Required if protocol is set to 'Http' or 'Https'. Otherwise, it is not allowed."
  type        = string
  default     = null
}
variable "interval_in_seconds" {
  description = "The interval, in seconds between probes to the backend endpoint for health status. The default value is 15, the minimum value is 5."
  type        = int
  default     = null
}
variable "number_of_probes" {
  description = "The number of failed probe attempts after which the backend endpoint is removed from rotation. Default to '2'. NumberOfProbes multiplied by intervalInSeconds value must be greater or equal to 10.Endpoints are returned to rotation when at least one probe is successful."
  type        = int
  default     = 2
}
