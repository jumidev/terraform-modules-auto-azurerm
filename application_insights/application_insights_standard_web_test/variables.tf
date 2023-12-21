# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Application Insights Standard WebTest. Changing this forces a new Application Insights Standard WebTest to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Application Insights Standard WebTest should exist. Changing this forces a new Application Insights Standard WebTest to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Application Insights Standard WebTest should exist. Changing this forces a new Application Insights Standard WebTest to be created. It needs to correlate with location of the parent resource (azurerm_application_insights)"
  type        = string

}
variable "application_insights_id" {
  description = "(REQUIRED) The ID of the Application Insights instance on which the WebTest operates. Changing this forces a new Application Insights Standard WebTest to be created."
  type        = string

}
variable "geo_locations" {
  description = "(REQUIRED) Specifies a list of where to physically run the tests from to give global coverage for accessibility of your application."
  type        = list(any)

}
variable "request" {
  description = "(REQUIRED) A 'request' block."
  type        = map(any)
}
#
# request block structure                :
#   url (string)                           : (REQUIRED) The WebTest request URL.
#   body (string)                          : The WebTest request body.
#   follow_redirects_enabled (bool)        : Should the following of redirects be enabled? Defaults to 'true'.
#   header (string)                        : One or more 'header' blocks.
#   http_verb (string)                     : Which HTTP verb to use for the call. Options are 'GET', 'POST', 'PUT', 'PATCH', and 'DELETE'. Defaults to 'GET'.
#   parse_dependent_requests_enabled (bool): Should the parsing of dependend requests be enabled? Defaults to 'true'.



# OPTIONAL VARIABLES

variable "description" {
  description = "Purpose/user defined descriptive test for this WebTest."
  type        = string
  default     = null
}
variable "enabled" {
  description = "Should the WebTest be enabled?"
  type        = bool
  default     = null
}
variable "frequency" {
  description = "Interval in seconds between test runs for this WebTest. Valid options are '300', '600' and '900'. Defaults to '300'."
  type        = string
  default     = "300"
}
variable "retry_enabled" {
  description = "Should the retry on WebTest failure be enabled?"
  type        = bool
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Application Insights Standard WebTest."
  type        = map(any)
  default     = null
}
variable "timeout" {
  description = "Seconds until this WebTest will timeout and fail. Default is '30'."
  type        = string
  default     = "30"
}
variable "validation_rules" {
  description = "A 'validation_rules' block."
  type        = map(any)
  default     = null
}
#
# validation_rules block structure    :
#   content (block)                     : A 'content' block.
#   expected_status_code (string)       : The expected status code of the response. Default is '200', '0' means 'response code < 400'
#   ssl_cert_remaining_lifetime (number): The number of days of SSL certificate validity remaining for the checked endpoint. If the certificate has a shorter remaining lifetime left, the test will fail. This number should be between 1 and 365.
#   ssl_check_enabled (bool)            : Should the SSL check be enabled?
#
# content block structure    :
#   content_match (string)     : (REQUIRED) A string value containing the content to match on.
#   ignore_case (string)       : Ignore the casing in the 'content_match' value.
#   pass_if_text_found (string): If the content of 'content_match' is found, pass the test. If set to 'false', the WebTest is failing if the content of 'content_match' is found.


