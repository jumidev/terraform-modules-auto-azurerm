# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Application Gateway. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to the Application Gateway should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure region where the Application Gateway should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "backend_address_pool" {
  description = "(REQUIRED) One or more 'backend_address_pool' blocks."
  type        = map(map(any))
}
#
# backend_address_pool block structure:
#   name (string)                       : (REQUIRED) The name of the Backend Address Pool.
#   fqdns (list)                        : A list of FQDN's which should be part of the Backend Address Pool.
#   ip_addresses (list)                 : A list of IP Addresses which should be part of the Backend Address Pool.


variable "backend_http_settings" {
  description = "(REQUIRED) One or more 'backend_http_settings' blocks."
  type        = map(map(any))
}
#
# backend_http_settings block structure:
#   name (string)                        : (REQUIRED) The name of the Authentication Certificate.


variable "frontend_ip_configuration" {
  description = "(REQUIRED) One or more 'frontend_ip_configuration' blocks."
  type        = map(map(any))
}
#
# frontend_ip_configuration block structure:
#   name (string)                            : (REQUIRED) The name of the Frontend IP Configuration.
#   subnet_id (string)                       : The ID of the Subnet.
#   private_ip_address (string)              : The Private IP Address to use for the Application Gateway.
#   public_ip_address_id (string)            : The ID of a Public IP Address which the Application Gateway should use. The allocation method for the Public IP Address depends on the 'sku' of this Application Gateway. Please refer to the [Azure documentation for public IP addresses](https://docs.microsoft.com/azure/virtual-network/public-ip-addresses#application-gateways) for details.
#   private_ip_address_allocation (string)   : The Allocation Method for the Private IP Address. Possible values are 'Dynamic' and 'Static'. Defaults to 'Dynamic'.
#   private_link_configuration_name (string) : The name of the private link configuration to use for this frontend IP configuration.


variable "frontend_port" {
  description = "(REQUIRED) One or more 'frontend_port' blocks."
  type        = map(map(any))
}
#
# frontend_port block structure:
#   name (string)                : (REQUIRED) The name of the Frontend Port.
#   port (string)                : (REQUIRED) The port used for this Frontend Port.


variable "gateway_ip_configuration" {
  description = "(REQUIRED) One or more 'gateway_ip_configuration' blocks."
  type        = map(map(any))
}
#
# gateway_ip_configuration block structure:
#   name (string)                           : (REQUIRED) The Name of this Gateway IP Configuration.
#   subnet_id (string)                      : (REQUIRED) The ID of the Subnet which the Application Gateway should be connected to.


variable "http_listener" {
  description = "(REQUIRED) One or more 'http_listener' blocks."
  type        = map(map(any))
}
#
# http_listener block structure          :
#   name (string)                          : (REQUIRED) The Name of the HTTP Listener.
#   frontend_ip_configuration_name (string): (REQUIRED) The Name of the Frontend IP Configuration used for this HTTP Listener.
#   frontend_port_name (string)            : (REQUIRED) The Name of the Frontend Port use for this HTTP Listener.
#   host_name (string)                     : The Hostname which should be used for this HTTP Listener. Setting this value changes Listener Type to 'Multi site'.
#   host_names (list)                      : A list of Hostname(s) should be used for this HTTP Listener. It allows special wildcard characters.
#   protocol (string)                      : (REQUIRED) The Protocol to use for this HTTP Listener. Possible values are 'Http' and 'Https'.
#   require_sni (bool)                     : Should Server Name Indication be Required? Defaults to 'false'.
#   ssl_certificate_name (string)          : The name of the associated SSL Certificate which should be used for this HTTP Listener.
#   custom_error_configuration (block)     : One or more 'custom_error_configuration' blocks.
#   firewall_policy_id (string)            : The ID of the Web Application Firewall Policy which should be used for this HTTP Listener.
#   ssl_profile_name (string)              : The name of the associated SSL Profile which should be used for this HTTP Listener.
#
# custom_error_configuration block structure:
#   status_code (string)                      : (REQUIRED) Status code of the application gateway customer error. Possible values are 'HttpStatus403' and 'HttpStatus502'
#   custom_error_page_url (string)            : (REQUIRED) Error page URL of the application gateway customer error.


variable "request_routing_rule" {
  description = "(REQUIRED) One or more 'request_routing_rule' blocks."
  type        = map(map(any))
}
#
# request_routing_rule block structure:
#   name (string)                       : (REQUIRED) The Name of this Request Routing Rule.
#   rule_type (string)                  : (REQUIRED) The Type of Routing that should be used for this Rule. Possible values are 'Basic' and 'PathBasedRouting'.
#   http_listener_name (string)         : (REQUIRED) The Name of the HTTP Listener which should be used for this Routing Rule.
#   backend_address_pool_name (string)  : The Name of the Backend Address Pool which should be used for this Routing Rule. Cannot be set if 'redirect_configuration_name' is set.
#   backend_http_settings_name (string) : The Name of the Backend HTTP Settings Collection which should be used for this Routing Rule. Cannot be set if 'redirect_configuration_name' is set.
#   redirect_configuration_name (string): The Name of the Redirect Configuration which should be used for this Routing Rule. Cannot be set if either 'backend_address_pool_name' or 'backend_http_settings_name' is set.
#   rewrite_rule_set_name (string)      : The Name of the Rewrite Rule Set which should be used for this Routing Rule. Only valid for v2 SKUs.
#   url_path_map_name (string)          : The Name of the URL Path Map which should be associated with this Routing Rule.
#   priority (string)                   : Rule evaluation order can be dictated by specifying an integer value from '1' to '20000' with '1' being the highest priority and '20000' being the lowest priority.


variable "sku" {
  description = "(REQUIRED) A 'sku' block."
  type        = map(any)
}
#
# sku block structure:
#   name (string)      : (REQUIRED) The Name of the SKU to use for this Application Gateway. Possible values are 'Standard_Small', 'Standard_Medium', 'Standard_Large', 'Standard_v2', 'WAF_Medium', 'WAF_Large', and 'WAF_v2'.
#   tier (string)      : (REQUIRED) The Tier of the SKU to use for this Application Gateway. Possible values are 'Standard', 'Standard_v2', 'WAF' and 'WAF_v2'.
#   capacity (string)  : The Capacity of the SKU to use for this Application Gateway. When using a V1 SKU this value must be between '1' and '32', and '1' to '125' for a V2 SKU. This property is optional if 'autoscale_configuration' is set.



# OPTIONAL VARIABLES

variable "fips_enabled" {
  description = "Is FIPS enabled on the Application Gateway?"
  type        = bool
  default     = null
}
variable "global" {
  description = "A 'global' block."
  type        = map(any)
  default     = null
}
#
# global block structure           :
#   request_buffering_enabled (bool) : (REQUIRED) Whether Application Gateway's Request buffer is enabled.
#   response_buffering_enabled (bool): (REQUIRED) Whether Application Gateway's Response buffer is enabled.


variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Application Gateway. Only possible value is 'UserAssigned'.
#   identity_ids (list)     : (REQUIRED) Specifies a list of User Assigned Managed Identity IDs to be assigned to this Application Gateway.


variable "private_link_configuration" {
  description = "One or more 'private_link_configuration' blocks."
  type        = map(map(any))
  default     = null
}
#
# private_link_configuration block structure:
#   name (string)                             : (REQUIRED) The name of the private link configuration.
#   ip_configuration (block)                  : (REQUIRED) One or more 'ip_configuration' blocks.
#
# ip_configuration block structure      :
#   name (string)                         : (REQUIRED) The name of the IP configuration.
#   subnet_id (string)                    : (REQUIRED) The ID of the subnet the private link configuration should connect to.
#   private_ip_address_allocation (string): (REQUIRED) The allocation method used for the Private IP Address. Possible values are 'Dynamic' and 'Static'.
#   primary (bool)                        : (REQUIRED) Is this the Primary IP Configuration?
#   private_ip_address (string)           : The Static IP Address which should be used.


variable "zones" {
  description = "Specifies a list of Availability Zones in which this Application Gateway should be located. Changing this forces a new Application Gateway to be created."
  type        = list(any)
  default     = []
}
variable "trusted_client_certificate" {
  description = "One or more 'trusted_client_certificate' blocks."
  type        = map(map(any))
  default     = null
}
#
# trusted_client_certificate block structure:
#   name (string)                             : (REQUIRED) The name of the Trusted Client Certificate that is unique within this Application Gateway.
#   data (string)                             : (REQUIRED) The base-64 encoded certificate.


variable "ssl_profile" {
  description = "One or more 'ssl_profile' blocks."
  type        = map(map(any))
  default     = null
}
#
# ssl_profile block structure                  :
#   name (string)                                : (REQUIRED) The name of the SSL Profile that is unique within this Application Gateway.
#   trusted_client_certificate_names (string)    : The name of the Trusted Client Certificate that will be used to authenticate requests from clients.
#   verify_client_cert_issuer_dn (bool)          : Should client certificate issuer DN be verified? Defaults to 'false'.
#   verify_client_certificate_revocation (string): Specify the method to check client certificate revocation status. Possible value is 'OCSP'.
#   ssl_policy (block)                           : a 'ssl_policy' block.
#
# ssl_policy block structure   :
#   disabled_protocols (string)  : A list of SSL Protocols which should be disabled on this Application Gateway. Possible values are 'TLSv1_0', 'TLSv1_1', 'TLSv1_2' and 'TLSv1_3'.
#   policy_type (string)         : The Type of the Policy. Possible values are 'Predefined', 'Custom' and 'CustomV2'.
#   policy_name (string)         : The Name of the Policy e.g. AppGwSslPolicy20170401S. Required if 'policy_type' is set to 'Predefined'. Possible values can change over time and are published here <https://docs.microsoft.com/azure/application-gateway/application-gateway-ssl-policy-overview>. Not compatible with 'disabled_protocols'.
#   cipher_suites (string)       : A List of accepted cipher suites. Possible values are: 'TLS_DHE_DSS_WITH_3DES_EDE_CBC_SHA', 'TLS_DHE_DSS_WITH_AES_128_CBC_SHA', 'TLS_DHE_DSS_WITH_AES_128_CBC_SHA256', 'TLS_DHE_DSS_WITH_AES_256_CBC_SHA', 'TLS_DHE_DSS_WITH_AES_256_CBC_SHA256', 'TLS_DHE_RSA_WITH_AES_128_CBC_SHA', 'TLS_DHE_RSA_WITH_AES_128_GCM_SHA256', 'TLS_DHE_RSA_WITH_AES_256_CBC_SHA', 'TLS_DHE_RSA_WITH_AES_256_GCM_SHA384', 'TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA', 'TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256', 'TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256', 'TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA', 'TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384', 'TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384', 'TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA', 'TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256', 'TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256', 'TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA', 'TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384', 'TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384', 'TLS_RSA_WITH_3DES_EDE_CBC_SHA', 'TLS_RSA_WITH_AES_128_CBC_SHA', 'TLS_RSA_WITH_AES_128_CBC_SHA256', 'TLS_RSA_WITH_AES_128_GCM_SHA256', 'TLS_RSA_WITH_AES_256_CBC_SHA', 'TLS_RSA_WITH_AES_256_CBC_SHA256' and 'TLS_RSA_WITH_AES_256_GCM_SHA384'.
#   min_protocol_version (string): The minimal TLS version. Possible values are 'TLSv1_0', 'TLSv1_1', 'TLSv1_2' and 'TLSv1_3'.


variable "authentication_certificate" {
  description = "One or more 'authentication_certificate' blocks."
  type        = map(map(any))
  default     = null
}
#
# authentication_certificate block structure:
#   name (string)                             : (REQUIRED) The Name of the Authentication Certificate to use.
#   data (string)                             : (REQUIRED) The contents of the Authentication Certificate which should be used.


variable "trusted_root_certificate" {
  description = "One or more 'trusted_root_certificate' blocks."
  type        = map(map(any))
  default     = null
}
#
# trusted_root_certificate block structure:
#   name (string)                           : (REQUIRED) The Name of the Trusted Root Certificate to use.
#   data (string)                           : The contents of the Trusted Root Certificate which should be used. Required if 'key_vault_secret_id' is not set.
#   key_vault_secret_id (string)            : The Secret ID of (base-64 encoded unencrypted pfx) 'Secret' or 'Certificate' object stored in Azure KeyVault. You need to enable soft delete for the Key Vault to use this feature. Required if 'data' is not set.


variable "ssl_policy" {
  description = "a 'ssl_policy' block."
  type        = map(any)
  default     = null
}
#
# ssl_policy block structure   :
#   disabled_protocols (string)  : A list of SSL Protocols which should be disabled on this Application Gateway. Possible values are 'TLSv1_0', 'TLSv1_1', 'TLSv1_2' and 'TLSv1_3'.
#   policy_type (string)         : The Type of the Policy. Possible values are 'Predefined', 'Custom' and 'CustomV2'.
#   policy_name (string)         : The Name of the Policy e.g. AppGwSslPolicy20170401S. Required if 'policy_type' is set to 'Predefined'. Possible values can change over time and are published here <https://docs.microsoft.com/azure/application-gateway/application-gateway-ssl-policy-overview>. Not compatible with 'disabled_protocols'.
#   cipher_suites (string)       : A List of accepted cipher suites. Possible values are: 'TLS_DHE_DSS_WITH_3DES_EDE_CBC_SHA', 'TLS_DHE_DSS_WITH_AES_128_CBC_SHA', 'TLS_DHE_DSS_WITH_AES_128_CBC_SHA256', 'TLS_DHE_DSS_WITH_AES_256_CBC_SHA', 'TLS_DHE_DSS_WITH_AES_256_CBC_SHA256', 'TLS_DHE_RSA_WITH_AES_128_CBC_SHA', 'TLS_DHE_RSA_WITH_AES_128_GCM_SHA256', 'TLS_DHE_RSA_WITH_AES_256_CBC_SHA', 'TLS_DHE_RSA_WITH_AES_256_GCM_SHA384', 'TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA', 'TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256', 'TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256', 'TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA', 'TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384', 'TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384', 'TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA', 'TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256', 'TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256', 'TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA', 'TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384', 'TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384', 'TLS_RSA_WITH_3DES_EDE_CBC_SHA', 'TLS_RSA_WITH_AES_128_CBC_SHA', 'TLS_RSA_WITH_AES_128_CBC_SHA256', 'TLS_RSA_WITH_AES_128_GCM_SHA256', 'TLS_RSA_WITH_AES_256_CBC_SHA', 'TLS_RSA_WITH_AES_256_CBC_SHA256' and 'TLS_RSA_WITH_AES_256_GCM_SHA384'.
#   min_protocol_version (string): The minimal TLS version. Possible values are 'TLSv1_0', 'TLSv1_1', 'TLSv1_2' and 'TLSv1_3'.


variable "enable_http2" {
  description = "Is HTTP2 enabled on the application gateway resource? Defaults to 'false'."
  type        = bool
  default     = false
}
variable "force_firewall_policy_association" {
  description = "Is the Firewall Policy associated with the Application Gateway?"
  type        = bool
  default     = null
}
variable "probe" {
  description = "One or more 'probe' blocks."
  type        = map(map(any))
  default     = null
}
#
# probe block structure                           :
#   host (string)                                   : The Hostname used for this Probe. If the Application Gateway is configured for a single site, by default the Host name should be specified as '127.0.0.1', unless otherwise configured in custom probe. Cannot be set if 'pick_host_name_from_backend_http_settings' is set to 'true'.
#   interval (string)                               : (REQUIRED) The Interval between two consecutive probes in seconds. Possible values range from 1 second to a maximum of 86,400 seconds.
#   name (string)                                   : (REQUIRED) The Name of the Probe.
#   protocol (string)                               : (REQUIRED) The Protocol used for this Probe. Possible values are 'Http' and 'Https'.
#   path (string)                                   : (REQUIRED) The Path used for this Probe.
#   timeout (string)                                : (REQUIRED) The Timeout used for this Probe, which indicates when a probe becomes unhealthy. Possible values range from 1 second to a maximum of 86,400 seconds.
#   unhealthy_threshold (string)                    : (REQUIRED) The Unhealthy Threshold for this Probe, which indicates the amount of retries which should be attempted before a node is deemed unhealthy. Possible values are from 1 to 20.
#   port (string)                                   : Custom port which will be used for probing the backend servers. The valid value ranges from 1 to 65535. In case not set, port from HTTP settings will be used. This property is valid for Standard_v2 and WAF_v2 only.
#   pick_host_name_from_backend_http_settings (bool): Whether the host header should be picked from the backend HTTP settings. Defaults to 'false'.
#   match (block)                                   : A 'match' block.
#   minimum_servers (number)                        : The minimum number of servers that are always marked as healthy. Defaults to '0'.
#
# match block structure:
#   body (string)        : A snippet from the Response Body which must be present in the Response.
#   status_code (list)   : (REQUIRED) A list of allowed status codes for this Health Probe.


variable "ssl_certificate" {
  description = "One or more 'ssl_certificate' blocks."
  type        = map(map(any))
  default     = null
}
#
# ssl_certificate block structure:
#   name (string)                  : (REQUIRED) The Name of the SSL certificate that is unique within this Application Gateway
#   data (string)                  : The base64-encoded PFX certificate data. Required if 'key_vault_secret_id' is not set.
#   password (string)              : Password for the pfx file specified in data. Required if 'data' is set.
#   key_vault_secret_id (string)   : The Secret ID of (base-64 encoded unencrypted pfx) the 'Secret' or 'Certificate' object stored in Azure KeyVault. You need to enable soft delete for Key Vault to use this feature. Required if 'data' is not set.


variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
variable "url_path_map" {
  description = "One or more 'url_path_map' blocks."
  type        = map(map(any))
  default     = null
}
#
# url_path_map block structure                :
#   name (string)                               : (REQUIRED) The Name of the URL Path Map.
#   default_backend_address_pool_name (string)  : The Name of the Default Backend Address Pool which should be used for this URL Path Map. Cannot be set if 'default_redirect_configuration_name' is set.
#   default_backend_http_settings_name (string) : The Name of the Default Backend HTTP Settings Collection which should be used for this URL Path Map. Cannot be set if 'default_redirect_configuration_name' is set.
#   default_redirect_configuration_name (string): The Name of the Default Redirect Configuration which should be used for this URL Path Map. Cannot be set if either 'default_backend_address_pool_name' or 'default_backend_http_settings_name' is set.
#   default_rewrite_rule_set_name (string)      : The Name of the Default Rewrite Rule Set which should be used for this URL Path Map. Only valid for v2 SKUs.
#   path_rule (string)                          : (REQUIRED) One or more 'path_rule' blocks.


variable "waf_configuration" {
  description = "A 'waf_configuration' block."
  type        = map(any)
  default     = null
}
#
# waf_configuration block structure:
#   enabled (bool)                   : (REQUIRED) Is the Web Application Firewall enabled?
#   firewall_mode (string)           : (REQUIRED) The Web Application Firewall Mode. Possible values are 'Detection' and 'Prevention'.
#   rule_set_type (string)           : The Type of the Rule Set used for this Web Application Firewall. Possible values are 'OWASP' and 'Microsoft_BotManagerRuleSet'. Defaults to 'OWASP'.
#   rule_set_version (string)        : (REQUIRED) The Version of the Rule Set used for this Web Application Firewall. Possible values are '0.1', '1.0', '2.2.9', '3.0', '3.1' and '3.2'.
#   disabled_rule_group (block)      : One or more 'disabled_rule_group' blocks.
#   file_upload_limit_mb (number)    : The File Upload Limit in MB. Accepted values are in the range '1'MB to '750'MB for the 'WAF_v2' SKU, and '1'MB to '500'MB for all other SKUs. Defaults to '100'MB.
#   request_body_check (bool)        : Is Request Body Inspection enabled? Defaults to 'true'.
#   max_request_body_size_kb (string): The Maximum Request Body Size in KB. Accepted values are in the range '1'KB to '128'KB. Defaults to '128'KB.
#   exclusion (block)                : One or more 'exclusion' blocks.
#
# disabled_rule_group block structure:
#   rule_group_name (string)           : (REQUIRED) The rule group where specific rules should be disabled. Possible values are 'BadBots', 'crs_20_protocol_violations', 'crs_21_protocol_anomalies', 'crs_23_request_limits', 'crs_30_http_policy', 'crs_35_bad_robots', 'crs_40_generic_attacks', 'crs_41_sql_injection_attacks', 'crs_41_xss_attacks', 'crs_42_tight_security', 'crs_45_trojans', 'General', 'GoodBots', 'Known-CVEs', 'REQUEST-911-METHOD-ENFORCEMENT', 'REQUEST-913-SCANNER-DETECTION', 'REQUEST-920-PROTOCOL-ENFORCEMENT', 'REQUEST-921-PROTOCOL-ATTACK', 'REQUEST-930-APPLICATION-ATTACK-LFI', 'REQUEST-931-APPLICATION-ATTACK-RFI', 'REQUEST-932-APPLICATION-ATTACK-RCE', 'REQUEST-933-APPLICATION-ATTACK-PHP', 'REQUEST-941-APPLICATION-ATTACK-XSS', 'REQUEST-942-APPLICATION-ATTACK-SQLI', 'REQUEST-943-APPLICATION-ATTACK-SESSION-FIXATION', 'REQUEST-944-APPLICATION-ATTACK-JAVA' and 'UnknownBots'.
#   rules (list)                       : A list of rules which should be disabled in that group. Disables all rules in the specified group if 'rules' is not specified.
#
# exclusion block structure       :
#   match_variable (string)         : (REQUIRED) Match variable of the exclusion rule to exclude header, cookie or GET arguments. Possible values are 'RequestArgKeys', 'RequestArgNames', 'RequestArgValues', 'RequestCookieKeys', 'RequestCookieNames', 'RequestCookieValues', 'RequestHeaderKeys', 'RequestHeaderNames' and 'RequestHeaderValues'
#   selector_match_operator (string): Operator which will be used to search in the variable content. Possible values are 'Contains', 'EndsWith', 'Equals', 'EqualsAny' and 'StartsWith'. If empty will exclude all traffic on this 'match_variable'
#   selector (string)               : String value which will be used for the filter operation. If empty will exclude all traffic on this 'match_variable'


variable "custom_error_configuration" {
  description = "One or more 'custom_error_configuration' blocks."
  type        = map(map(any))
  default     = null
}
#
# custom_error_configuration block structure:
#   status_code (string)                      : (REQUIRED) Status code of the application gateway customer error. Possible values are 'HttpStatus403' and 'HttpStatus502'
#   custom_error_page_url (string)            : (REQUIRED) Error page URL of the application gateway customer error.


variable "firewall_policy_id" {
  description = "The ID of the Web Application Firewall Policy."
  type        = string
  default     = null
}
variable "redirect_configuration" {
  description = "One or more 'redirect_configuration' blocks."
  type        = map(map(any))
  default     = null
}
#
# redirect_configuration block structure:
#   name (string)                         : (REQUIRED) Unique name of the redirect configuration block
#   redirect_type (string)                : (REQUIRED) The type of redirect. Possible values are 'Permanent', 'Temporary', 'Found' and 'SeeOther'
#   target_listener_name (string)         : The name of the listener to redirect to. Cannot be set if 'target_url' is set.
#   target_url (string)                   : The URL to redirect the request to. Cannot be set if 'target_listener_name' is set.
#   include_path (bool)                   : Whether to include the path in the redirected URL. Defaults to 'false'
#   include_query_string (bool)           : Whether to include the query string in the redirected URL. Default to 'false'


variable "autoscale_configuration" {
  description = "An 'autoscale_configuration' block."
  type        = map(any)
  default     = null
}
#
# autoscale_configuration block structure:
#   min_capacity (string)                  : (REQUIRED) Minimum capacity for autoscaling. Accepted values are in the range '0' to '100'.
#   max_capacity (string)                  : Maximum capacity for autoscaling. Accepted values are in the range '2' to '125'.


variable "rewrite_rule_set" {
  description = "One or more 'rewrite_rule_set' blocks. Only valid for v2 SKUs."
  type        = map(map(any))
  default     = null
}
#
# rewrite_rule_set block structure:
#   name (string)                   : (REQUIRED) Unique name of the rewrite rule set block
#   rewrite_rule (block)            : One or more 'rewrite_rule' blocks.
#
# url block structure  :
#   path (string)        : The URL path to rewrite.
#   query_string (string): The query string to rewrite.
#   components (string)  : The components used to rewrite the URL. Possible values are 'path_only' and 'query_string_only' to limit the rewrite to the URL Path or URL Query String only.
#   reroute (bool)       : Whether the URL path map should be reevaluated after this rewrite has been applied. [More info on rewrite configuration](https://docs.microsoft.com/azure/application-gateway/rewrite-http-headers-url#rewrite-configuration)
#
# rewrite_rule block structure          :
#   name (string)                         : (REQUIRED) Unique name of the rewrite rule block
#   rule_sequence (string)                : (REQUIRED) Rule sequence of the rewrite rule that determines the order of execution in a set.
#   condition (string)                    : One or more 'condition' blocks.
#   request_header_configuration (string) : One or more 'request_header_configuration' blocks.
#   response_header_configuration (string): One or more 'response_header_configuration' blocks.
#   url (block)                           : One 'url' block


