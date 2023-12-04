# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Rules engine configuration. Changing this forces a new resource to be created."
  type        = string

}
variable "frontdoor_name" {
  description = "(REQUIRED) The name of the Front Door instance. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "enabled" {
  description = "Whether this Rules engine configuration is enabled? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "rule" {
  description = "A 'rule' block."
  type        = map(any)
  default     = null
}
#
# rule block structure   :
#   priority (string)      : (REQUIRED) Priority of the rule, must be unique per rules engine definition.
#   action (block)         : An 'action' block.
#   match_condition (block): One or more 'match_condition' block.
#
# request_header block structure:
#   header_action_type (string)   : can be set to 'Overwrite', 'Append' or 'Delete'.
#   header_name (string)          : header name (string).
#   value (string)                : value name (string).
#
# match_condition block structure:
#   variable (string)              : can be set to 'IsMobile', 'RemoteAddr', 'RequestMethod', 'QueryString', 'PostArgs', 'RequestURI', 'RequestPath', 'RequestFilename', 'RequestFilenameExtension','RequestHeader','RequestBody' or 'RequestScheme'.
#   selector (string)              : match against a specific key when 'variable' is set to 'PostArgs' or 'RequestHeader'. It cannot be used with 'QueryString' and 'RequestMethod'.
#   operator (string)              : (REQUIRED) can be set to 'Any', 'IPMatch', 'GeoMatch', 'Equal', 'Contains', 'LessThan', 'GreaterThan', 'LessThanOrEqual', 'GreaterThanOrEqual', 'BeginsWith' or 'EndsWith'
#   transform (list)               : can be set to one or more values out of 'Lowercase', 'RemoveNulls', 'Trim', 'Uppercase', 'UrlDecode' and 'UrlEncode'
#   negate_condition (bool)        : can be set to 'true' or 'false' to negate the given condition. Defaults to 'false'.
#   value (list)                   : (array) can contain one or more strings.
#
# action block structure :
#   request_header (block) : A 'request_header' block.
#   response_header (block): A 'response_header' block.
#
# response_header block structure:
#   header_action_type (string)    : can be set to 'Overwrite', 'Append' or 'Delete'.
#   header_name (string)           : header name (string).
#   value (string)                 : value name (string).


