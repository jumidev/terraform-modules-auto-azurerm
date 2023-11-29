# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Front Door Rule Set. Changing this forces a new Front Door Rule Set to be created."
  type        = string

}
variable "cdn_frontdoor_profile_id" {
  description = "(REQUIRED) The ID of the Front Door Profile. Changing this forces a new Front Door Rule Set to be created."
  type        = string

}
