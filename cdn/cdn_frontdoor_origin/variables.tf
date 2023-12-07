# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Front Door Origin. Changing this forces a new Front Door Origin to be created."
  type        = string

}
variable "cdn_frontdoor_origin_group_id" {
  description = "(REQUIRED) The ID of the Front Door Origin Group within which this Front Door Origin should exist. Changing this forces a new Front Door Origin to be created."
  type        = string

}
variable "host_name" {
  description = "(REQUIRED) The IPv4 address, IPv6 address or Domain name of the Origin."
  type        = string

}
variable "certificate_name_check_enabled" {
  description = "(REQUIRED) Specifies whether certificate name checks are enabled for this origin."
  type        = bool

}

# OPTIONAL VARIABLES

variable "enabled" {
  description = "Should the origin be enabled? Possible values are 'true' or 'false'. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "http_port" {
  description = "The value of the HTTP port. Must be between '1' and '65535'. Defaults to '80'."
  type        = string
  default     = "80"
}
variable "https_port" {
  description = "The value of the HTTPS port. Must be between '1' and '65535'. Defaults to '443'."
  type        = string
  default     = "443"
}
variable "origin_host_header" {
  description = "The host header value (an IPv4 address, IPv6 address or Domain name) which is sent to the origin with each request. If unspecified the hostname from the request will be used."
  type        = string
  default     = null
}
variable "priority" {
  description = "Priority of origin in given origin group for load balancing. Higher priorities will not be used for load balancing if any lower priority origin is healthy. Must be between '1' and '5' (inclusive). Defaults to '1'."
  type        = string
  default     = "1"
}
variable "private_link" {
  description = "A 'private_link' block."
  type        = map(any)
  default     = null
}
#
# private_link block structure   :
#   request_message (string)       : Specifies the request message that will be submitted to the 'private_link_target_id' when requesting the private link endpoint connection. Values must be between '1' and '140' characters in length. Defaults to 'Access request for CDN FrontDoor Private Link Origin'.
#   target_type (string)           : Specifies the type of target for this Private Link Endpoint. Possible values are 'blob', 'blob_secondary', 'web' and 'sites'.
#   location (string)              : (REQUIRED) Specifies the location where the Private Link resource should exist. Changing this forces a new resource to be created.
#   private_link_target_id (string): (REQUIRED) The ID of the Azure Resource to connect to via the Private Link.


variable "weight" {
  description = "The weight of the origin in a given origin group for load balancing. Must be between '1' and '1000'. Defaults to '500'."
  type        = number
  default     = "500"
}
