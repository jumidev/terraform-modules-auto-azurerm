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
  type        = map(any)
}
#
# dns_config block structure:
#   relative_name (string)    : (REQUIRED) The relative domain name, this is combined with the domain name used by Traffic Manager to form the FQDN which is exported as documented below. Changing this forces a new resource to be created.
#   ttl (int)                 : (REQUIRED) The TTL value of the Profile used by Local DNS resolvers and clients.


variable "monitor_config" {
  description = "(REQUIRED) This block specifies the Endpoint monitoring configuration for the Profile. One 'monitor_config' block."
  type        = map(any)
}
#
# monitor_config block structure       :
#   protocol (string)                    : (REQUIRED) The protocol used by the monitoring checks, supported values are 'HTTP', 'HTTPS' and 'TCP'.
#   port (string)                        : (REQUIRED) The port number used by the monitoring checks.
#   path (string)                        : The path used by the monitoring checks. Required when 'protocol' is set to 'HTTP' or 'HTTPS' - cannot be set when 'protocol' is set to 'TCP'.
#   expected_status_code_ranges (list)   : A list of status code ranges in the format of '100-101'.
#   custom_header (block)                : One or more 'custom_header' blocks.
#   interval_in_seconds (int)            : The interval used to check the endpoint health from a Traffic Manager probing agent. You can specify two values here: '30' (normal probing) and '10' (fast probing). The default value is '30'.
#   timeout_in_seconds (string)          : The amount of time the Traffic Manager probing agent should wait before considering that check a failure when a health check probe is sent to the endpoint. If 'interval_in_seconds' is set to '30', then 'timeout_in_seconds' can be between '5' and '10'. The default value is '10'. If 'interval_in_seconds' is set to '10', then valid values are between '5' and '9' and 'timeout_in_seconds' is required.
#   tolerated_number_of_failures (string): The number of failures a Traffic Manager probing agent tolerates before marking that endpoint as unhealthy. Valid values are between '0' and '9'. The default value is '3'
#
# custom_header block structure:
#   name (string)                : (REQUIRED) The name of the custom header.
#   value (string)               : (REQUIRED) The value of custom header. Applicable for HTTP and HTTPS protocol.



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
