# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Front Door Origin Group. Changing this forces a new Front Door Origin Group to be created."
  type        = string

}
variable "cdn_frontdoor_profile_id" {
  description = "(REQUIRED) The ID of the Front Door Profile within which this Front Door Origin Group should exist. Changing this forces a new Front Door Origin Group to be created."
  type        = string

}
variable "load_balancing" {
  description = "(REQUIRED) A 'load_balancing' block."
  type        = map(any)
}
#
# load_balancing block structure             :
#   additional_latency_in_milliseconds (number): Specifies the additional latency in milliseconds for probes to fall into the lowest latency bucket. Possible values are between '0' and '1000' milliseconds (inclusive). Defaults to '50'.
#   sample_size (number)                       : Specifies the number of samples to consider for load balancing decisions. Possible values are between '0' and '255' (inclusive). Defaults to '4'.
#   successful_samples_required (number)       : Specifies the number of samples within the sample period that must succeed. Possible values are between '0' and '255' (inclusive). Defaults to '3'.



# OPTIONAL VARIABLES

variable "health_probe" {
  description = "A 'health_probe' block."
  type        = map(any)
  default     = null
}
#
# health_probe block structure:
#   protocol (string)           : (REQUIRED) Specifies the protocol to use for health probe. Possible values are 'Http' and 'Https'.
#   interval_in_seconds (number): (REQUIRED) Specifies the number of seconds between health probes. Possible values are between '5' and '31536000' seconds (inclusive).
#   request_type (string)       : Specifies the type of health probe request that is made. Possible values are 'GET' and 'HEAD'. Defaults to 'HEAD'.
#   path (string)               : Specifies the path relative to the origin that is used to determine the health of the origin. Defaults to '/'. -> **NOTE:** Health probes can only be disabled if there is a single enabled origin in a single enabled origin group. For more information about the 'health_probe' settings please see the [product documentation](https://docs.microsoft.com/azure/frontdoor/health-probes).


variable "restore_traffic_time_to_healed_or_new_endpoint_in_minutes" {
  description = "Specifies the amount of time which should elapse before shifting traffic to another endpoint when a healthy endpoint becomes unhealthy or a new endpoint is added. Possible values are between '0' and '50' minutes (inclusive). Default is '10' minutes. -> **NOTE:** This property is currently not used, but will be in the near future."
  type        = number
  default     = 10
}
variable "session_affinity_enabled" {
  description = "Specifies whether session affinity should be enabled on this host. Defaults to 'true'."
  type        = bool
  default     = true
}
