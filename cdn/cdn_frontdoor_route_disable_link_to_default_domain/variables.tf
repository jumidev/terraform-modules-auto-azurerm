# REQUIRED VARIABLES

variable "cdn_frontdoor_route_id" {
  description = "(REQUIRED) The resource ID of the Front Door Route where the Link To Default Domain property should be 'disabled'. Changing this forces a new Front Door Route Disable Link To Default Domain to be created."
  type        = string

}
variable "cdn_frontdoor_custom_domain_ids" {
  description = "(REQUIRED) The resource IDs of the Front Door Custom Domains which are associated with this Front Door Route."
  type        = string

}
