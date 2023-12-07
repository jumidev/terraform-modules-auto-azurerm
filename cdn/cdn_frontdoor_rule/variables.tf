# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Front Door Rule. Possible values must be between 1 and 260 characters in length, begin with a letter and may contain only letters and numbers. Changing this forces a new Front Door Rule to be created."
  type        = string

}
variable "cdn_frontdoor_rule_set_id" {
  description = "(REQUIRED) The resource ID of the Front Door Rule Set for this Front Door Rule. Changing this forces a new Front Door Rule to be created."
  type        = string

}
variable "order" {
  description = "(REQUIRED) The order in which the rules will be applied for the Front Door Endpoint. The order value should be sequential and begin at '1'(e.g. '1', '2', '3'...). A Front Door Rule with a lesser order value will be applied before a rule with a greater order value."
  type        = string

}
variable "actions" {
  description = "(REQUIRED) An 'actions' block."
  type        = map(any)
}
#
# actions block structure                    :
#   url_rewrite_action (block)                 : A 'url_rewrite_action' block. You may **not** have a 'url_rewrite_action' **and** a 'url_redirect_action' defined in the same 'actions' block.
#   url_redirect_action (block)                : A 'url_redirect_action' block. You may **not** have a 'url_redirect_action' **and** a 'url_rewrite_action' defined in the same 'actions' block.
#   route_configuration_override_action (block): A 'route_configuration_override_action' block.
#   request_header_action (block)              : A 'request_header_action' block.
#   response_header_action (block)             : A 'response_header_action' block.
#
# url_rewrite_action block structure:
#   source_pattern (string)           : (REQUIRED) The source pattern in the URL path to replace. This uses prefix-based matching. For example, to match all URL paths use a forward slash ''/'' as the source pattern value.
#   destination (string)              : (REQUIRED) The destination path to use in the rewrite. The destination path overwrites the source pattern.
#   preserve_unmatched_path (bool)    : Append the remaining path after the source pattern to the new destination path? Possible values 'true' or 'false'. Defaults to 'false'.
#
# url_redirect_action block structure:
#   redirect_type (string)             : (REQUIRED) The response type to return to the requestor. Possible values include 'Moved', 'Found' , 'TemporaryRedirect' or 'PermanentRedirect'.
#   destination_hostname (string)      : (REQUIRED) The host name you want the request to be redirected to. The value must be a string between '0' and '2048' characters in length, leave blank to preserve the incoming host.
#   redirect_protocol (string)         : The protocol the request will be redirected as. Possible values include 'MatchRequest', 'Http' or 'Https'. Defaults to 'MatchRequest'.
#   destination_path (string)          : The path to use in the redirect. The value must be a string and include the leading '/', leave blank to preserve the incoming path. Defaults to ''''.
#   query_string (string)              : The query string used in the redirect URL. The value must be in the &lt;key>=&lt;value> or &lt;key>={'action_server_variable'} format and must not include the leading '?', leave blank to preserve the incoming query string. Maximum allowed length for this field is '2048' characters. Defaults to ''''.
#   destination_fragment (string)      : The fragment to use in the redirect. The value must be a string between '0' and '1024' characters in length, leave blank to preserve the incoming fragment. Defaults to ''''.
#
# response_header_action block structure:
#   header_action (string)                : (REQUIRED) The action to be taken on the specified 'header_name'. Possible values include 'Append', 'Overwrite' or 'Delete'.
#   header_name (string)                  : (REQUIRED) The name of the header to modify.
#   value (string)                        : The value to append or overwrite.
#
# request_header_action block structure:
#   header_action (string)               : (REQUIRED) The action to be taken on the specified 'header_name'. Possible values include 'Append', 'Overwrite' or 'Delete'.
#   header_name (string)                 : (REQUIRED) The name of the header to modify.
#   value (string)                       : The value to append or overwrite.
#
# route_configuration_override_action block structure:
#   cache_duration (string)                            : When Cache behavior is set to 'Override' or 'SetIfMissing', this field specifies the cache duration to use. The maximum duration is 366 days specified in the 'd.HH:MM:SS' format(e.g. '365.23:59:59'). If the desired maximum cache duration is less than 1 day then the maximum cache duration should be specified in the 'HH:MM:SS' format(e.g. '23:59:59').
#   cdn_frontdoor_origin_group_id (string)             : The Front Door Origin Group resource ID that the request should be routed to. This overrides the configuration specified in the Front Door Endpoint route.
#   forwarding_protocol (string)                       : The forwarding protocol the request will be redirected as. This overrides the configuration specified in the route to be associated with. Possible values include 'MatchRequest', 'HttpOnly' or 'HttpsOnly'.
#   query_string_caching_behavior (string)             : 'IncludeSpecifiedQueryStrings' query strings specified in the 'query_string_parameters' field get included when the cache key gets generated. 'UseQueryString' cache every unique URL, each unique URL will have its own cache key. 'IgnoreSpecifiedQueryStrings' query strings specified in the 'query_string_parameters' field get excluded when the cache key gets generated. 'IgnoreQueryString' query strings aren't considered when the cache key gets generated. Possible values include 'IgnoreQueryString', 'UseQueryString', 'IgnoreSpecifiedQueryStrings' or 'IncludeSpecifiedQueryStrings'.
#   query_string_parameters (list)                     : A list of query string parameter names.
#   compression_enabled (string)                       : Should the Front Door dynamically compress the content? Possible values include 'true' or 'false'.
#   cache_behavior (string)                            : 'HonorOrigin' the Front Door will always honor origin response header directive. If the origin directive is missing, Front Door will cache contents anywhere from '1' to '3' days. 'OverrideAlways' the TTL value returned from your Front Door Origin is overwritten with the value specified in the action. This behavior will only be applied if the response is cacheable. 'OverrideIfOriginMissing' if no TTL value gets returned from your Front Door Origin, the rule sets the TTL to the value specified in the action. This behavior will only be applied if the response is cacheable. 'Disabled' the Front Door will not cache the response contents, irrespective of Front Door Origin response directives. Possible values include 'HonorOrigin', 'OverrideAlways', 'OverrideIfOriginMissing' or 'Disabled'.



# OPTIONAL VARIABLES

variable "behavior_on_match" {
  description = "If this rule is a match should the rules engine continue processing the remaining rules or stop? Possible values are 'Continue' and 'Stop'. Defaults to 'Continue'."
  type        = string
  default     = "Continue"
}
variable "conditions" {
  description = "A 'conditions' block."
  type        = map(any)
  default     = null
}
#
# conditions block structure          :
#   remote_address_condition (block)    : A 'remote_address_condition' block.
#   request_method_condition (block)    : A 'request_method_condition' block.
#   query_string_condition (block)      : A 'query_string_condition' block.
#   post_args_condition (block)         : A 'post_args_condition' block.
#   request_uri_condition (block)       : A 'request_uri_condition' block.
#   request_header_condition (block)    : A 'request_header_condition' block.
#   request_body_condition (block)      : A 'request_body_condition' block.
#   request_scheme_condition (block)    : A 'request_scheme_condition' block.
#   url_path_condition (block)          : A 'url_path_condition' block.
#   url_file_extension_condition (block): A 'url_file_extension_condition' block.
#   url_filename_condition (block)      : A 'url_filename_condition' block.
#   http_version_condition (block)      : A 'http_version_condition' block.
#   cookies_condition (block)           : A 'cookies_condition' block.
#   is_device_condition (block)         : A 'is_device_condition' block.
#   socket_address_condition (block)    : A 'socket_address_condition' block.
#   client_port_condition (block)       : A 'client_port_condition' block.
#   server_port_condition (block)       : A 'server_port_condition' block.
#   host_name_condition (block)         : A 'host_name_condition' block.
#   ssl_protocol_condition (block)      : A 'ssl_protocol_condition' block.
#
# cookies_condition block structure:
#   cookie_name (string)             : (REQUIRED) A string value representing the name of the cookie.
#   operator (string)                : (REQUIRED) A Conditional operator. Possible values include 'Any', 'Equal', 'Contains', 'BeginsWith', 'EndsWith', 'LessThan', 'LessThanOrEqual', 'GreaterThan', 'GreaterThanOrEqual' or 'RegEx'. Details can be found in the 'Condition Operator List' below.
#   negate_condition (bool)          : If 'true' operator becomes the opposite of its value. Possible values 'true' or 'false'. Defaults to 'false'. Details can be found in the 'Condition Operator List' below.
#   match_values (list)              : One or more string or integer values(e.g. '1') representing the value of the request header to match. If multiple values are specified, they're evaluated using 'OR' logic.
#   transforms (string)              : A Conditional operator. Possible values include 'Lowercase', 'RemoveNulls', 'Trim', 'Uppercase', 'UrlDecode' or 'UrlEncode'. Details can be found in the 'Condition Transform List' below.
#
# socket_address_condition block structure:
#   operator (string)                       : The type of match. The Possible values are 'IpMatch' or 'Any'. Defaults to 'IPMatch'.
#   negate_condition (bool)                 : If 'true' operator becomes the opposite of its value. Possible values 'true' or 'false'. Defaults to 'false'. Details can be found in the 'Condition Operator List' below.
#   match_values (list)                     : Specify one or more IP address ranges. If multiple IP address ranges are specified, they're evaluated using 'OR' logic.
#
# request_method_condition block structure:
#   match_values (string)                   : (REQUIRED) A list of one or more HTTP methods. Possible values include 'GET', 'POST', 'PUT', 'DELETE', 'HEAD', 'OPTIONS' or 'TRACE'. If multiple values are specified, they're evaluated using 'OR' logic.
#   operator (string)                       : Possible value 'Equal'. Defaults to 'Equal'.
#   negate_condition (bool)                 : If 'true' operator becomes the opposite of its value. Possible values 'true' or 'false'. Defaults to 'false'. Details can be found in the 'Condition Operator List' below.
#
# client_port_condition block structure:
#   operator (string)                    : (REQUIRED) A Conditional operator. Possible values include 'Any', 'Equal', 'Contains', 'BeginsWith', 'EndsWith', 'LessThan', 'LessThanOrEqual', 'GreaterThan', 'GreaterThanOrEqual' or 'RegEx'. Details can be found in the 'Condition Operator List' below.
#   negate_condition (bool)              : If 'true' operator becomes the opposite of its value. Possible values 'true' or 'false'. Defaults to 'false'. Details can be found in the 'Condition Operator List' below.
#   match_values (list)                  : One or more integer values(e.g. '1') representing the value of the client port to match. If multiple values are specified, they're evaluated using 'OR' logic.
#
# url_file_extension_condition block structure:
#   operator (string)                           : (REQUIRED) A Conditional operator. Possible values include 'Any', 'Equal', 'Contains', 'BeginsWith', 'EndsWith', 'LessThan', 'LessThanOrEqual', 'GreaterThan', 'GreaterThanOrEqual' or 'RegEx'. Details can be found in the 'Condition Operator List' below.
#   negate_condition (bool)                     : If 'true' operator becomes the opposite of its value. Possible values 'true' or 'false'. Defaults to 'false'. Details can be found in the 'Condition Operator List' below.
#   match_values (list)                         : (REQUIRED) A list of one or more string or integer values(e.g. '1') representing the value of the request file extension to match. If multiple values are specified, they're evaluated using 'OR' logic.
#   transforms (string)                         : A Conditional operator. Possible values include 'Lowercase', 'RemoveNulls', 'Trim', 'Uppercase', 'UrlDecode' or 'UrlEncode'. Details can be found in the 'Condition Transform List' below.
#
# server_port_condition block structure:
#   operator (string)                    : (REQUIRED) A Conditional operator. Possible values include 'Any', 'Equal', 'Contains', 'BeginsWith', 'EndsWith', 'LessThan', 'LessThanOrEqual', 'GreaterThan', 'GreaterThanOrEqual' or 'RegEx'. Details can be found in the 'Condition Operator List' below.
#   match_values (string)                : (REQUIRED) A list of one or more integer values(e.g. '1') representing the value of the client port to match. Possible values include '80' or '443'. If multiple values are specified, they're evaluated using 'OR' logic.
#   negate_condition (bool)              : If 'true' operator becomes the opposite of its value. Possible values 'true' or 'false'. Defaults to 'false'. Details can be found in the 'Condition Operator List' below.
#
# host_name_condition block structure:
#   operator (string)                  : (REQUIRED) A Conditional operator. Possible values include 'Any', 'Equal', 'Contains', 'BeginsWith', 'EndsWith', 'LessThan', 'LessThanOrEqual', 'GreaterThan', 'GreaterThanOrEqual' or 'RegEx'. Details can be found in the 'Condition Operator List' below.
#   match_values (list)                : A list of one or more string values representing the value of the request hostname to match. If multiple values are specified, they're evaluated using 'OR' logic.
#   transforms (string)                : A Conditional operator. Possible values include 'Lowercase', 'RemoveNulls', 'Trim', 'Uppercase', 'UrlDecode' or 'UrlEncode'. Details can be found in the 'Condition Transform List' below.
#   negate_condition (bool)            : If 'true' operator becomes the opposite of its value. Possible values 'true' or 'false'. Defaults to 'false'. Details can be found in the 'Condition Operator List' below.
#
# request_scheme_condition block structure:
#   operator (string)                       : Possible value 'Equal'. Defaults to 'Equal'.
#   negate_condition (bool)                 : If 'true' operator becomes the opposite of its value. Possible values 'true' or 'false'. Defaults to 'false'. Details can be found in the 'Condition Operator List' below.
#   match_values (string)                   : The requests protocol to match. Possible values include 'HTTP' or 'HTTPS'.
#
# is_device_condition block structure         :
#   operator (string)                           : Possible value 'Equal'. Defaults to 'Equal'.
#   negate_condition (bool)                     : If 'true' operator becomes the opposite of its value. Possible values 'true' or 'false'. Defaults to 'false'. Details can be found in the 'Condition Operator List' below.
#   match_values (string)                       : Which device should this rule match on? Possible values 'Mobile' or 'Desktop'.
#   IPv4 (string)                               : example: if you add two IP addresses '1.2.3.4' and '10.20.30.40', the condition is matched for any requests that arrive from either address '1.2.3.4' or '10.20.30.40'.
#   IPv6 (string)                               : example: if you add two IP addresses '1:2:3:4:5:6:7:8' and '10:20:30:40:50:60:70:80', the condition is matched for any requests that arrive from either address '1:2:3:4:5:6:7:8' or '10:20:30:40:50:60:70:80'.
#   {variable} (string)                         : Include the entire server variable. For example, if the client IP address is '111.222.333.444' then the '{client_ip}' token would evaluate to '111.222.333.444'.
#   {variable                                   :offset} (string): Include the server variable after a specific offset, until the end of the variable. The offset is zero-based. For example, if the client IP address is '111.222.333.444' then the '{client_ip:3}' token would evaluate to '.222.333.444'.
#   {variable                                   :offset:length} (string): Include the server variable after a specific offset, up to the specified length. The offset is zero-based. For example, if the client IP address is '111.222.333.444' then the '{client_ip:4:3}' token would evaluate to '222'.
#   route_configuration_override_action (string): 
#   request_header_action (string)              : 
#   response_header_action (string)             : 
#   url_redirect_action (string)                : 
#   url_rewrite_action (string)                 : 
#
# http_version_condition block structure:
#   match_values (string)                 : (REQUIRED) What HTTP version should this condition match? Possible values '2.0', '1.1', '1.0' or '0.9'.
#   operator (string)                     : Possible value 'Equal'. Defaults to 'Equal'.
#   negate_condition (bool)               : If 'true' operator becomes the opposite of its value. Possible values 'true' or 'false'. Defaults to 'false'. Details can be found in the 'Condition Operator List' below.
#
# url_path_condition block structure:
#   operator (string)                 : (REQUIRED) A Conditional operator. Possible values include 'Any', 'Equal', 'Contains', 'BeginsWith', 'EndsWith', 'LessThan', 'LessThanOrEqual', 'GreaterThan', 'GreaterThanOrEqual' or 'RegEx'. Details can be found in the 'Condition Operator List' below.
#   negate_condition (bool)           : If 'true' operator becomes the opposite of its value. Possible values 'true' or 'false'. Defaults to 'false'. Details can be found in the 'Condition Operator List' below.
#   match_values (list)               : One or more string or integer values(e.g. '1') representing the value of the request path to match. Don't include the leading slash ('/'). If multiple values are specified, they're evaluated using 'OR' logic.
#   transforms (string)               : A Conditional operator. Possible values include 'Lowercase', 'RemoveNulls', 'Trim', 'Uppercase', 'UrlDecode' or 'UrlEncode'. Details can be found in the 'Condition Transform List' below.
#
# ssl_protocol_condition block structure:
#   match_values (string)                 : (REQUIRED) A list of one or more HTTP methods. Possible values are 'TLSv1', 'TLSv1.1' and 'TLSv1.2' logic.
#   operator (string)                     : Possible value 'Equal'. Defaults to 'Equal'.
#   negate_condition (bool)               : If 'true' operator becomes the opposite of its value. Possible values 'true' or 'false'. Defaults to 'false'. Details can be found in the 'Condition Operator List' below.
#
# post_args_condition block structure:
#   post_args_name (string)            : (REQUIRED) A string value representing the name of the 'POST' argument.
#   operator (string)                  : (REQUIRED) A Conditional operator. Possible values include 'Any', 'Equal', 'Contains', 'BeginsWith', 'EndsWith', 'LessThan', 'LessThanOrEqual', 'GreaterThan', 'GreaterThanOrEqual' or 'RegEx'. Details can be found in the 'Condition Operator List' below.
#   negate_condition (bool)            : If 'true' operator becomes the opposite of its value. Possible values 'true' or 'false'. Defaults to 'false'. Details can be found in the 'Condition Operator List' below.
#   match_values (list)                : One or more string or integer values(e.g. '1') representing the value of the 'POST' argument to match. If multiple values are specified, they're evaluated using 'OR' logic.
#   transforms (string)                : A Conditional operator. Possible values include 'Lowercase', 'RemoveNulls', 'Trim', 'Uppercase', 'UrlDecode' or 'UrlEncode'. Details can be found in the 'Condition Transform List' below.
#
# request_uri_condition block structure:
#   operator (string)                    : (REQUIRED) A Conditional operator. Possible values include 'Any', 'Equal', 'Contains', 'BeginsWith', 'EndsWith', 'LessThan', 'LessThanOrEqual', 'GreaterThan', 'GreaterThanOrEqual' or 'RegEx'. Details can be found in the 'Condition Operator List' below.
#   negate_condition (bool)              : If 'true' operator becomes the opposite of its value. Possible values 'true' or 'false'. Defaults to 'false'. Details can be found in the 'Condition Operator List' below.
#   match_values (list)                  : One or more string or integer values(e.g. '1') representing the value of the request URL to match. If multiple values are specified, they're evaluated using 'OR' logic.
#   transforms (string)                  : A Conditional operator. Possible values include 'Lowercase', 'RemoveNulls', 'Trim', 'Uppercase', 'UrlDecode' or 'UrlEncode'. Details can be found in the 'Condition Transform List' below.
#
# request_body_condition block structure:
#   operator (string)                     : (REQUIRED) A Conditional operator. Possible values include 'Any', 'Equal', 'Contains', 'BeginsWith', 'EndsWith', 'LessThan', 'LessThanOrEqual', 'GreaterThan', 'GreaterThanOrEqual' or 'RegEx'. Details can be found in the 'Condition Operator List' below.
#   match_values (list)                   : (REQUIRED) A list of one or more string or integer values(e.g. '1') representing the value of the request body text to match. If multiple values are specified, they're evaluated using 'OR' logic.
#   negate_condition (bool)               : If 'true' operator becomes the opposite of its value. Possible values 'true' or 'false'. Defaults to 'false'. Details can be found in the 'Condition Operator List' below.
#   transforms (string)                   : A Conditional operator. Possible values include 'Lowercase', 'RemoveNulls', 'Trim', 'Uppercase', 'UrlDecode' or 'UrlEncode'. Details can be found in the 'Condition Transform List' below.
#
# query_string_condition block structure:
#   operator (string)                     : (REQUIRED) A Conditional operator. Possible values include 'Any', 'Equal', 'Contains', 'BeginsWith', 'EndsWith', 'LessThan', 'LessThanOrEqual', 'GreaterThan', 'GreaterThanOrEqual' or 'RegEx'. Details can be found in the 'Condition Operator List' below.
#   negate_condition (bool)               : If 'true' operator becomes the opposite of its value. Possible values 'true' or 'false'. Defaults to 'false'. Details can be found in the 'Condition Operator List' below.
#   match_values (list)                   : One or more string or integer values(e.g. '1') representing the value of the query string to match. If multiple values are specified, they're evaluated using 'OR' logic.
#   transforms (string)                   : A Conditional operator. Possible values include 'Lowercase', 'RemoveNulls', 'Trim', 'Uppercase', 'UrlDecode' or 'UrlEncode'. Details can be found in the 'Condition Transform List' below.
#
# request_header_condition block structure:
#   header_name (string)                    : (REQUIRED) A string value representing the name of the 'POST' argument.
#   operator (string)                       : (REQUIRED) A Conditional operator. Possible values include 'Any', 'Equal', 'Contains', 'BeginsWith', 'EndsWith', 'LessThan', 'LessThanOrEqual', 'GreaterThan', 'GreaterThanOrEqual' or 'RegEx'. Details can be found in the 'Condition Operator List' below.
#   negate_condition (bool)                 : If 'true' operator becomes the opposite of its value. Possible values 'true' or 'false'. Defaults to 'false'. Details can be found in the 'Condition Operator List' below.
#   match_values (list)                     : One or more string or integer values(e.g. '1') representing the value of the request header to match. If multiple values are specified, they're evaluated using 'OR' logic.
#   transforms (string)                     : A Conditional operator. Possible values include 'Lowercase', 'RemoveNulls', 'Trim', 'Uppercase', 'UrlDecode' or 'UrlEncode'. Details can be found in the 'Condition Transform List' below.
#
# url_filename_condition block structure:
#   operator (string)                     : (REQUIRED) A Conditional operator. Possible values include 'Any', 'Equal', 'Contains', 'BeginsWith', 'EndsWith', 'LessThan', 'LessThanOrEqual', 'GreaterThan', 'GreaterThanOrEqual' or 'RegEx'. Details can be found in the 'Condition Operator List' below.
#   match_values (list)                   : A list of one or more string or integer values(e.g. '1') representing the value of the request file name to match. If multiple values are specified, they're evaluated using 'OR' logic.
#   negate_condition (bool)               : If 'true' operator becomes the opposite of its value. Possible values 'true' or 'false'. Defaults to 'false'. Details can be found in the 'Condition Operator List' below.
#   transforms (string)                   : A Conditional operator. Possible values include 'Lowercase', 'RemoveNulls', 'Trim', 'Uppercase', 'UrlDecode' or 'UrlEncode'. Details can be found in the 'Condition Transform List' below.
#
# remote_address_condition block structure:
#   operator (string)                       : The type of the remote address to match. Possible values include 'Any', 'GeoMatch' or 'IPMatch'. Use the 'negate_condition' to specify Not 'GeoMatch' or Not 'IPMatch'. Defaults to 'IPMatch'.
#   negate_condition (bool)                 : If 'true' operator becomes the opposite of its value. Possible values 'true' or 'false'. Defaults to 'false'. Details can be found in the 'Condition Operator List' below.
#   match_values (list)                     : For the IP Match or IP Not Match operators: specify one or more IP address ranges. If multiple IP address ranges are specified, they're evaluated using 'OR' logic. For the Geo Match or Geo Not Match operators: specify one or more locations using their country code.


