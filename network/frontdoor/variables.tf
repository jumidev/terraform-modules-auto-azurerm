# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Front Door service. Must be globally unique. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the name of the Resource Group in which the Front Door service should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "backend_pool" {
  description = "(REQUIRED) A 'backend_pool' block. -> Azure by default allows specifying up to 50 Backend Pools - but this quota can be increased via Microsoft Support."
  type        = map(any)
}
#
# backend_pool block structure:
#   name (string)               : (REQUIRED) Specifies the name of the Backend Pool.
#   backend (block)             : (REQUIRED) A 'backend' block.
#   load_balancing_name (string): (REQUIRED) Specifies the name of the 'backend_pool_load_balancing' block within this resource to use for this 'Backend Pool'.
#   health_probe_name (string)  : (REQUIRED) Specifies the name of the 'backend_pool_health_probe' block within this resource to use for this 'Backend Pool'.
#
# backend block structure:
#   enabled (bool)         : Specifies if the backend is enabled or not. Valid options are 'true' or 'false'. Defaults to 'true'.
#   address (string)       : (REQUIRED) Location of the backend (IP address or FQDN)
#   host_header (string)   : (REQUIRED) The value to use as the host header sent to the backend.
#   http_port (number)     : (REQUIRED) The HTTP TCP port number. Possible values are between '1' - '65535'.
#   https_port (number)    : (REQUIRED) The HTTPS TCP port number. Possible values are between '1' - '65535'.
#   priority (string)      : Priority to use for load balancing. Higher priorities will not be used for load balancing if any lower priority backend is healthy. Defaults to '1'.
#   weight (number)        : Weight of this endpoint for load balancing purposes. Defaults to '50'.


variable "backend_pool_health_probe" {
  description = "(REQUIRED) A 'backend_pool_health_probe' block."
  type        = map(any)
}
#
# backend_pool_health_probe block structure:
#   name (string)                            : (REQUIRED) Specifies the name of the Health Probe.
#   enabled (bool)                           : Is this health probe enabled? Defaults to 'true'.
#   path (string)                            : The path to use for the Health Probe. Default is '/'.
#   protocol (string)                        : Protocol scheme to use for the Health Probe. Possible values are 'Http' and 'Https'. Defaults to 'Http'.
#   probe_method (string)                    : Specifies HTTP method the health probe uses when querying the backend pool instances. Possible values include: 'GET' and 'HEAD'. Defaults to 'GET'. -> **NOTE:** Use the 'HEAD' method if you do not need to check the response body of your health probe.
#   interval_in_seconds (number)             : The number of seconds between each Health Probe. Defaults to '120'.


variable "backend_pool_load_balancing" {
  description = "(REQUIRED) A 'backend_pool_load_balancing' block."
  type        = map(any)
}
#
# backend_pool_load_balancing block structure:
#   name (string)                              : (REQUIRED) Specifies the name of the Load Balancer.
#   sample_size (number)                       : The number of samples to consider for load balancing decisions. Defaults to '4'.
#   successful_samples_required (number)       : The number of samples within the sample period that must succeed. Defaults to '2'.
#   additional_latency_milliseconds (number)   : The additional latency in milliseconds for probes to fall into the lowest latency bucket. Defaults to '0'.


variable "frontend_endpoint" {
  description = "(REQUIRED) A 'frontend_endpoint' block."
  type        = map(any)
}
#
# frontend_endpoint block structure               :
#   name (string)                                   : (REQUIRED) Specifies the name of the 'frontend_endpoint'.
#   host_name (string)                              : (REQUIRED) Specifies the host name of the 'frontend_endpoint'. Must be a domain name. In order to use a name.azurefd.net domain, the name value must match the Front Door name.
#   session_affinity_enabled (bool)                 : Whether to allow session affinity on this host. Valid options are 'true' or 'false' Defaults to 'false'.
#   session_affinity_ttl_seconds (number)           : The TTL to use in seconds for session affinity, if applicable. Defaults to '0'.
#   web_application_firewall_policy_link_id (string): Defines the Web Application Firewall policy 'ID' for each host.


variable "routing_rule" {
  description = "(REQUIRED) A 'routing_rule' block."
  type        = map(any)
}
#
# routing_rule block structure    :
#   name (string)                   : (REQUIRED) Specifies the name of the Routing Rule.
#   frontend_endpoints (string)     : (REQUIRED) The names of the 'frontend_endpoint' blocks within this resource to associate with this 'routing_rule'.
#   accepted_protocols (string)     : (REQUIRED) Protocol schemes to match for the Backend Routing Rule. Possible values are 'Http' and 'Https'.
#   patterns_to_match (string)      : (REQUIRED) The route patterns for the Backend Routing Rule.
#   enabled (bool)                  : 'Enable' or 'Disable' use of this Backend Routing Rule. Permitted values are 'true' or 'false'. Defaults to 'true'.
#   forwarding_configuration (block): A 'forwarding_configuration' block.
#   redirect_configuration (block)  : A 'redirect_configuration' block.
#
# redirect_configuration block structure:
#   custom_host (string)                  : Set this to change the URL for the redirection.
#   redirect_protocol (string)            : (REQUIRED) Protocol to use when redirecting. Valid options are 'HttpOnly', 'HttpsOnly', or 'MatchRequest'.
#   redirect_type (string)                : (REQUIRED) Status code for the redirect. Valida options are 'Moved', 'Found', 'TemporaryRedirect', 'PermanentRedirect'.
#   custom_fragment (string)              : The destination fragment in the portion of URL after '#'. Set this to add a fragment to the redirect URL.
#   custom_path (string)                  : The path to retain as per the incoming request, or update in the URL for the redirection.
#   custom_query_string (string)          : Replace any existing query string from the incoming request URL.
#
# forwarding_configuration block structure      :
#   backend_pool_name (string)                    : (REQUIRED) Specifies the name of the Backend Pool to forward the incoming traffic to.
#   cache_enabled (bool)                          : Specifies whether to Enable caching or not. Valid options are 'true' or 'false'. Defaults to 'false'.
#   cache_use_dynamic_compression (bool)          : Whether to use dynamic compression when caching. Valid options are 'true' or 'false'. Defaults to 'false'.
#   cache_query_parameter_strip_directive (string): Defines cache behaviour in relation to query string parameters. Valid options are 'StripAll', 'StripAllExcept', 'StripOnly' or 'StripNone'. Defaults to 'StripAll'.
#   cache_query_parameters (string)               : Specify query parameters (array). Works only in combination with 'cache_query_parameter_strip_directive' set to 'StripAllExcept' or 'StripOnly'.
#   cache_duration (string)                       : Specify the minimum caching duration (in ISO8601 notation e.g. 'P1DT2H' for 1 day and 2 hours). Needs to be greater than 0 and smaller than 365 days. 'cache_duration' works only in combination with 'cache_enabled' set to 'true'.
#   custom_forwarding_path (string)               : Path to use when constructing the request to forward to the backend. This functions as a URL Rewrite. Default behaviour preserves the URL path.
#   forwarding_protocol (string)                  : Protocol to use when redirecting. Valid options are 'HttpOnly', 'HttpsOnly', or 'MatchRequest'. Defaults to 'HttpsOnly'.



# OPTIONAL VARIABLES

variable "load_balancer_enabled" {
  description = "Should the Front Door Load Balancer be Enabled? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "friendly_name" {
  description = "A friendly name for the Front Door service."
  type        = string
  default     = null
}
variable "backend_pool_settings" {
  description = "A 'backend_pool_settings' block."
  type        = map(any)
  default     = null
}
#
# backend_pool_settings block structure              :
#   backend_pools_send_receive_timeout_seconds (number): Specifies the send and receive timeout on forwarding request to the backend. When the timeout is reached, the request fails and returns. Possible values are between '0' - '240'. Defaults to '60'.
#   enforce_backend_pools_certificate_name_check (bool): (REQUIRED) Enforce certificate name check on 'HTTPS' requests to all backend pools, this setting will have no effect on 'HTTP' requests. Permitted values are 'true' or 'false'. -> **NOTE:** 'backend_pools_send_receive_timeout_seconds' and 'enforce_backend_pools_certificate_name_check' apply to all backend pools.


variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
