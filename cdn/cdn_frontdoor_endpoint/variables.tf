# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Front Door Endpoint. Changing this forces a new Front Door Endpoint to be created."
  type        = string

}
variable "cdn_frontdoor_profile_id" {
  description = "(REQUIRED) The ID of the Front Door Profile within which this Front Door Endpoint should exist. Changing this forces a new Front Door Endpoint to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "enabled" {
  description = "Specifies if this Front Door Endpoint is enabled? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "tags" {
  description = "Specifies a mapping of tags which should be assigned to the Front Door Endpoint."
  type        = map(any)
  default     = null
}
