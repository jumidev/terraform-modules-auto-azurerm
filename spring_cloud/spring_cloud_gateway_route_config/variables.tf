# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Spring Cloud Gateway Route Config. Changing this forces a new Spring Cloud Gateway Route Config to be created."
  type        = string

}
variable "spring_cloud_gateway_id" {
  description = "(REQUIRED) The ID of the Spring Cloud Gateway. Changing this forces a new Spring Cloud Gateway Route Config to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "filters" {
  description = "Specifies a list of filters which are used to modify the request before sending it to the target endpoint, or the received response in app level."
  type        = list(any)
  default     = []
}
variable "predicates" {
  description = "Specifies a list of conditions to evaluate a route for each request in app level. Each predicate may be evaluated against request headers and parameter values. All of the predicates associated with a route must evaluate to true for the route to be matched to the request."
  type        = list(any)
  default     = []
}
variable "sso_validation_enabled" {
  description = "Should the sso validation be enabled in app level?"
  type        = bool
  default     = null
}
variable "route" {
  description = "One or more 'route' blocks."
  type        = map(map(any))
  default     = null
}
#
# route block structure        :
#   order (string)               : (REQUIRED) Specifies the route processing order.
#   description (string)         : Specifies the description which will be applied to methods in the generated OpenAPI documentation.
#   filters (list)               : Specifies a list of filters which are used to modify the request before sending it to the target endpoint, or the received response.
#   predicates (list)            : Specifies a list of conditions to evaluate a route for each request. Each predicate may be evaluated against request headers and parameter values. All of the predicates associated with a route must evaluate to true for the route to be matched to the request.
#   sso_validation_enabled (bool): Should the sso validation be enabled?
#   classification_tags (string) : Specifies the classification tags which will be applied to methods in the generated OpenAPI documentation.
#   title (string)               : Specifies the title which will be applied to methods in the generated OpenAPI documentation.
#   token_relay (string)         : Should pass currently-authenticated user's identity token to application service?
#   uri (string)                 : Specifies the full uri which will override 'appName'.


variable "open_api" {
  description = "One or more 'open_api' blocks."
  type        = map(map(any))
  default     = null
}
#
# open_api block structure:
#   uri (string)            : The URI of OpenAPI specification.


variable "protocol" {
  description = "Specifies the protocol of routed Spring Cloud App. Allowed values are 'HTTP' and 'HTTPS'. Defaults to 'HTTP'."
  type        = string
  default     = "HTTP"
}
variable "spring_cloud_app_id" {
  description = "The ID of the Spring Cloud App."
  type        = string
  default     = null
}
