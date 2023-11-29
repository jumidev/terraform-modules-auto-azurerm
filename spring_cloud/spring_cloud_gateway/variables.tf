# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Spring Cloud Gateway. Changing this forces a new Spring Cloud Gateway to be created. The only possible value is 'default'."
  type        = string

}
variable "spring_cloud_service_id" {
  description = "(REQUIRED) The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Gateway to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "api_metadata" {
  description = "A 'api_metadata' block."
  type        = map(any)
  default     = null
}
#
# api_metadata block structure:
#   description (string)        : Detailed description of the APIs available on the Gateway instance.
#   documentation_url (string)  : Location of additional documentation for the APIs available on the Gateway instance.
#   server_url (string)         : Base URL that API consumers will use to access APIs on the Gateway instance.
#   title (string)              : Specifies the title describing the context of the APIs available on the Gateway instance.
#   version (string)            : Specifies the version of APIs available on this Gateway instance.


variable "application_performance_monitoring_types" {
  description = "Specifies a list of application performance monitoring types used in the Spring Cloud Gateway. The allowed values are 'AppDynamics', 'ApplicationInsights', 'Dynatrace', 'ElasticAPM' and 'NewRelic'."
  type        = string
  default     = null
}
variable "client_authorization" {
  description = "A 'client_authorization' block."
  type        = map(any)
  default     = null
}
#
# client_authorization block structure:
#   certificate_ids (string)            : Specifies the Spring Cloud Certificate IDs of the Spring Cloud Gateway.
#   verification_enabled (bool)         : Specifies whether the client certificate verification is enabled.


variable "cors" {
  description = "A 'cors' block."
  type        = map(any)
  default     = null
}
#
# cors block structure            :
#   credentials_allowed (bool)      : is user credentials are supported on cross-site requests?
#   allowed_headers (string)        : Allowed headers in cross-site requests. The special value '*' allows actual requests to send any header.
#   allowed_methods (string)        : Allowed HTTP methods on cross-site requests. The special value '*' allows all methods. If not set, 'GET' and 'HEAD' are allowed by default. Possible values are 'DELETE', 'GET', 'HEAD', 'MERGE', 'POST', 'OPTIONS' and 'PUT'.
#   allowed_origins (string)        : Allowed origins to make cross-site requests. The special value '*' allows all domains.
#   allowed_origin_patterns (string): Allowed origin patterns to make cross-site requests.
#   exposed_headers (string)        : HTTP response headers to expose for cross-site requests.
#   max_age_seconds (int)           : How long, in seconds, the response from a pre-flight request can be cached by clients.


variable "environment_variables" {
  description = "Specifies the environment variables of the Spring Cloud Gateway as a map of key-value pairs. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "https_only" {
  description = "is only https is allowed?"
  type        = string
  default     = null
}
variable "instance_count" {
  description = "Specifies the required instance count of the Spring Cloud Gateway. Possible Values are between '1' and '500'. Defaults to '1' if not specified."
  type        = int
  default     = 1
}
variable "public_network_access_enabled" {
  description = "Indicates whether the Spring Cloud Gateway exposes endpoint."
  type        = bool
  default     = null
}
variable "quota" {
  description = "A 'quota' block."
  type        = map(any)
  default     = null
}
#
# quota block structure:
#   cpu (string)         : Specifies the required cpu of the Spring Cloud Deployment. Possible Values are '500m', '1', '2', '3' and '4'. Defaults to '1' if not specified.
#   memory (string)      : Specifies the required memory size of the Spring Cloud Deployment. Possible Values are '512Mi', '1Gi', '2Gi', '3Gi', '4Gi', '5Gi', '6Gi', '7Gi', and '8Gi'. Defaults to '2Gi' if not specified.


variable "sensitive_environment_variables" {
  description = "Specifies the sensitive environment variables of the Spring Cloud Gateway as a map of key-value pairs. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "sso" {
  description = "A 'sso' block."
  type        = map(any)
  default     = null
}
#
# sso block structure   :
#   client_id (string)    : The public identifier for the application.
#   client_secret (string): The secret known only to the application and the authorization server.
#   issuer_uri (string)   : The URI of Issuer Identifier.
#   scope (string)        : It defines the specific actions applications can be allowed to do on a user's behalf.


