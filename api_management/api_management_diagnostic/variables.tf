# REQUIRED VARIABLES

variable "identifier" {
  description = "(REQUIRED) The diagnostic identifier for the API Management Service. At this time the supported values are 'applicationinsights' and 'azuremonitor'. Changing this forces a new resource to be created."
  type        = string

}
variable "api_management_name" {
  description = "(REQUIRED) The Name of the API Management Service where this Diagnostic should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created."
  type        = string

}
variable "api_management_logger_id" {
  description = "(REQUIRED) The id of the target API Management Logger where the API Management Diagnostic should be saved."
  type        = string

}

# OPTIONAL VARIABLES

variable "always_log_errors" {
  description = "Always log errors. Send telemetry if there is an erroneous condition, regardless of sampling settings."
  type        = string
  default     = null
}
variable "backend_request" {
  description = "A 'backend_request' block."
  type        = map(any)
  default     = null
}
#
# backend_request block structure:
#   body_bytes (number)            : Number of payload bytes to log (up to 8192).
#   headers_to_log (string)        : Specifies a list of headers to log.
#   data_masking (block)           : A 'data_masking' block.
#
# query_params block structure:
#   mode (string)               : (REQUIRED) The data masking mode. Possible values are 'Mask' and 'Hide' for 'query_params'. The only possible value is 'Mask' for 'headers'.
#   value (string)              : (REQUIRED) The name of the header or the query parameter to mask.
#
# data_masking block structure:
#   query_params (block)        : A 'query_params' block.
#   headers (block)             : A 'headers' block.
#
# headers block structure:
#   mode (string)          : (REQUIRED) The data masking mode. Possible values are 'Mask' and 'Hide' for 'query_params'. The only possible value is 'Mask' for 'headers'.
#   value (string)         : (REQUIRED) The name of the header or the query parameter to mask.


variable "backend_response" {
  description = "A 'backend_response' block."
  type        = map(any)
  default     = null
}
#
# backend_response block structure:
#   body_bytes (number)             : Number of payload bytes to log (up to 8192).
#   headers_to_log (string)         : Specifies a list of headers to log.
#   data_masking (block)            : A 'data_masking' block.
#
# query_params block structure:
#   mode (string)               : (REQUIRED) The data masking mode. Possible values are 'Mask' and 'Hide' for 'query_params'. The only possible value is 'Mask' for 'headers'.
#   value (string)              : (REQUIRED) The name of the header or the query parameter to mask.
#
# data_masking block structure:
#   query_params (block)        : A 'query_params' block.
#   headers (block)             : A 'headers' block.
#
# headers block structure:
#   mode (string)          : (REQUIRED) The data masking mode. Possible values are 'Mask' and 'Hide' for 'query_params'. The only possible value is 'Mask' for 'headers'.
#   value (string)         : (REQUIRED) The name of the header or the query parameter to mask.


variable "frontend_request" {
  description = "A 'frontend_request' block."
  type        = map(any)
  default     = null
}
#
# frontend_request block structure:
#   body_bytes (number)             : Number of payload bytes to log (up to 8192).
#   headers_to_log (string)         : Specifies a list of headers to log.
#   data_masking (block)            : A 'data_masking' block.
#
# headers block structure:
#   mode (string)          : (REQUIRED) The data masking mode. Possible values are 'Mask' and 'Hide' for 'query_params'. The only possible value is 'Mask' for 'headers'.
#   value (string)         : (REQUIRED) The name of the header or the query parameter to mask.
#
# query_params block structure:
#   mode (string)               : (REQUIRED) The data masking mode. Possible values are 'Mask' and 'Hide' for 'query_params'. The only possible value is 'Mask' for 'headers'.
#   value (string)              : (REQUIRED) The name of the header or the query parameter to mask.
#
# data_masking block structure:
#   query_params (block)        : A 'query_params' block.
#   headers (block)             : A 'headers' block.


variable "frontend_response" {
  description = "A 'frontend_response' block."
  type        = map(any)
  default     = null
}
#
# frontend_response block structure:
#   body_bytes (number)              : Number of payload bytes to log (up to 8192).
#   headers_to_log (string)          : Specifies a list of headers to log.
#   data_masking (block)             : A 'data_masking' block.
#
# query_params block structure:
#   mode (string)               : (REQUIRED) The data masking mode. Possible values are 'Mask' and 'Hide' for 'query_params'. The only possible value is 'Mask' for 'headers'.
#   value (string)              : (REQUIRED) The name of the header or the query parameter to mask.
#
# data_masking block structure:
#   query_params (block)        : A 'query_params' block.
#   headers (block)             : A 'headers' block.
#
# headers block structure:
#   mode (string)          : (REQUIRED) The data masking mode. Possible values are 'Mask' and 'Hide' for 'query_params'. The only possible value is 'Mask' for 'headers'.
#   value (string)         : (REQUIRED) The name of the header or the query parameter to mask.


variable "http_correlation_protocol" {
  description = "The HTTP Correlation Protocol to use. Possible values are 'None', 'Legacy' or 'W3C'."
  type        = string
  default     = null
}
variable "log_client_ip" {
  description = "Log client IP address."
  type        = string
  default     = null
}
variable "sampling_percentage" {
  description = "Sampling (%). For high traffic APIs, please read this [documentation](https://docs.microsoft.com/azure/api-management/api-management-howto-app-insights#performance-implications-and-log-sampling) to understand performance implications and log sampling. Valid values are between '0.0' and '100.0'."
  type        = string
  default     = null
}
variable "verbosity" {
  description = "Logging verbosity. Possible values are 'verbose', 'information' or 'error'."
  type        = string
  default     = null
}
variable "operation_name_format" {
  description = "The format of the Operation Name for Application Insights telemetries. Possible values are 'Name', and 'Url'. Defaults to 'Name'."
  type        = string
  default     = "Name"
}
variable "api_management_resource_group_name" {
  description = "The Name of the Resource Group in which the API Management Service exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
