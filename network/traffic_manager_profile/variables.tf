# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Traffic Manager profile. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Traffic Manager profile. Changing this forces a new resource to be created."
  type        = string

}
variable "traffic_routing_method" {
  description = "(REQUIRED) Specifies the algorithm used to route traffic. Possible values are 'Geographic', 'Weighted', 'Performance', 'Priority', 'Subnet' and 'MultiValue'."
  type        = string

}
variable "dns_config" {
  description = "(REQUIRED) This block specifies the DNS configuration of the Profile. One 'dns_config' block."
  type        = string

}
variable "monitor_config" {
  description = "(REQUIRED) This block specifies the Endpoint monitoring configuration for the Profile. One 'monitor_config' block."
  type        = string

}

# OPTIONAL VARIABLES

variable "profile_status" {
  description = "The status of the profile, can be set to either 'Enabled' or 'Disabled'. Defaults to 'Enabled'."
  type        = string
  default     = "Enabled"
}
variable "Geographic" {
  description = "Traffic is routed based on Geographic regions specified in the Endpoint."
  type        = string
  default     = null
}
variable "MultiValue" {
  description = "All healthy Endpoints are returned.  MultiValue routing method works only if all the endpoints of type 'External' and are specified as IPv4 or IPv6 addresses."
  type        = string
  default     = null
}
variable "Performance" {
  description = "Traffic is routed via the User's closest Endpoint"
  type        = string
  default     = null
}
variable "Priority" {
  description = "Traffic is routed to the Endpoint with the lowest 'priority' value."
  type        = string
  default     = null
}
variable "Subnet" {
  description = "Traffic is routed based on a mapping of sets of end-user IP address ranges to a specific Endpoint within a Traffic Manager profile."
  type        = string
  default     = null
}
variable "Weighted" {
  description = "Traffic is spread across Endpoints proportional to their 'weight' value."
  type        = string
  default     = null
}
variable "traffic_view_enabled" {
  description = "Indicates whether Traffic View is enabled for the Traffic Manager profile."
  type        = bool
  default     = null
}
variable "max_return" {
  description = "The amount of endpoints to return for DNS queries to this Profile. Possible values range from '1' to '8'."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
