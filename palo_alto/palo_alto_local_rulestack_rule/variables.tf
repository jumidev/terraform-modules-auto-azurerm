# REQUIRED VARIABLES

variable "applications" {
  description = "(REQUIRED) Specifies a list of Applications."
  type        = string

}
variable "rulestack_id" {
  description = "(REQUIRED) The ID of the Local Rulestack in which to create this Rule. Changing this forces a new Palo Alto Local Rulestack Rule to be created."
  type        = string

}
variable "priority" {
  description = "(REQUIRED) The Priority of this rule. Rules are executed in numerical order. Changing this forces a new Palo Alto Local Rulestack Rule to be created."
  type        = string

}
variable "action" {
  description = "(REQUIRED) The action to take on the rule being triggered. Possible values are 'Allow', 'DenyResetBoth', 'DenyResetServer' and 'DenySilent'."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Palo Alto Local Rulestack Rule."
  type        = string

}
variable "destination" {
  description = "(REQUIRED) One or more 'destination' blocks."
  type        = map(map(any))
}
#
# destination block structure             :
#   cidrs (string)                          : Specifies a list of CIDR's.
#   countries (string)                      : Specifies a list of ISO3361-1 Alpha-2 Country codes. Possible values include 'AF', 'AX', 'AL', 'DZ', 'AS', 'AD', 'AO', 'AI', 'AQ', 'AG', 'AR', 'AM', 'AW', 'AU', 'AT', 'AZ', 'BS', 'BH', 'BD', 'BB', 'BY', 'BE', 'BZ', 'BJ', 'BM', 'BT', 'BO', 'BQ', 'BA', 'BW', 'BV', 'BR', 'IO', 'BN', 'BG', 'BF', 'BI', 'KH', 'CM', 'CA', 'CV', 'KY', 'CF', 'TD', 'CL', 'CN', 'CX', 'CC', 'CO', 'KM', 'CG', 'CD', 'CK', 'CR', 'CI', 'HR', 'CU', 'CW', 'CY', 'CZ', 'DK', 'DJ', 'DM', 'DO', 'EC', 'EG', 'SV', 'GQ', 'ER', 'EE', 'ET', 'FK', 'FO', 'FJ', 'FI', 'FR', 'GF', 'PF', 'TF', 'GA', 'GM', 'GE', 'DE', 'GH', 'GI', 'GR', 'GL', 'GD', 'GP', 'GU', 'GT', 'GG', 'GN', 'GW', 'GY', 'HT', 'HM', 'VA', 'HN', 'HK', 'HU', 'IS', 'IN', 'ID', 'IR', 'IQ', 'IE', 'IM', 'IL', 'IT', 'JM', 'JP', 'JE', 'JO', 'KZ', 'KE', 'KI', 'KP', 'KR', 'KW', 'KG', 'LA', 'LV', 'LB', 'LS', 'LR', 'LY', 'LI', 'LT', 'LU', 'MO', 'MK', 'MG', 'MW', 'MY', 'MV', 'ML', 'MT', 'MH', 'MQ', 'MR', 'MU', 'YT', 'MX', 'FM', 'MD', 'MC', 'MN', 'ME', 'MS', 'MA', 'MZ', 'MM', 'NA', 'NR', 'NP', 'NL', 'NC', 'NZ', 'NI', 'NE', 'NG', 'NU', 'NF', 'MP', 'NO', 'OM', 'PK', 'PW', 'PS', 'PA', 'PG', 'PY', 'PE', 'PH', 'PN', 'PL', 'PT', 'PR', 'QA', 'RE', 'RO', 'RU', 'RW', 'BL', 'SH', 'KN', 'LC', 'MF', 'PM', 'VC', 'WS', 'SM', 'ST', 'SA', 'SN', 'RS', 'SC', 'SL', 'SG', 'SX', 'SK', 'SI', 'SB', 'SO', 'ZA', 'GS', 'SS', 'ES', 'LK', 'SD', 'SR', 'SJ', 'SZ', 'SE', 'CH', 'SY', 'TW', 'TJ', 'TZ', 'TH', 'TL', 'TG', 'TK', 'TO', 'TT', 'TN', 'TR', 'TM', 'TC', 'TV', 'UG', 'UA', 'AE', 'GB', 'US', 'UM', 'UY', 'UZ', 'VU', 'VE', 'VN', 'VG', 'VI', 'WF', 'EH', 'YE', 'ZM', 'ZW'
#   feeds (string)                          : Specifies a list of Feeds.
#   local_rulestack_fqdn_list_ids (string)  : Specifies a list of FQDN lists.
#   local_rulestack_prefix_list_ids (string): Specifies a list of Prefix Lists.


variable "source" {
  description = "(REQUIRED) One or more 'source' blocks."
  type        = map(map(any))
}
#
# source block structure                  :
#   cidrs (string)                          : Specifies a list of CIDRs.
#   countries (string)                      : Specifies a list of ISO3361-1 Alpha-2 Country codes. Possible values include 'AF', 'AX', 'AL', 'DZ', 'AS', 'AD', 'AO', 'AI', 'AQ', 'AG', 'AR', 'AM', 'AW', 'AU', 'AT', 'AZ', 'BS', 'BH', 'BD', 'BB', 'BY', 'BE', 'BZ', 'BJ', 'BM', 'BT', 'BO', 'BQ', 'BA', 'BW', 'BV', 'BR', 'IO', 'BN', 'BG', 'BF', 'BI', 'KH', 'CM', 'CA', 'CV', 'KY', 'CF', 'TD', 'CL', 'CN', 'CX', 'CC', 'CO', 'KM', 'CG', 'CD', 'CK', 'CR', 'CI', 'HR', 'CU', 'CW', 'CY', 'CZ', 'DK', 'DJ', 'DM', 'DO', 'EC', 'EG', 'SV', 'GQ', 'ER', 'EE', 'ET', 'FK', 'FO', 'FJ', 'FI', 'FR', 'GF', 'PF', 'TF', 'GA', 'GM', 'GE', 'DE', 'GH', 'GI', 'GR', 'GL', 'GD', 'GP', 'GU', 'GT', 'GG', 'GN', 'GW', 'GY', 'HT', 'HM', 'VA', 'HN', 'HK', 'HU', 'IS', 'IN', 'ID', 'IR', 'IQ', 'IE', 'IM', 'IL', 'IT', 'JM', 'JP', 'JE', 'JO', 'KZ', 'KE', 'KI', 'KP', 'KR', 'KW', 'KG', 'LA', 'LV', 'LB', 'LS', 'LR', 'LY', 'LI', 'LT', 'LU', 'MO', 'MK', 'MG', 'MW', 'MY', 'MV', 'ML', 'MT', 'MH', 'MQ', 'MR', 'MU', 'YT', 'MX', 'FM', 'MD', 'MC', 'MN', 'ME', 'MS', 'MA', 'MZ', 'MM', 'NA', 'NR', 'NP', 'NL', 'NC', 'NZ', 'NI', 'NE', 'NG', 'NU', 'NF', 'MP', 'NO', 'OM', 'PK', 'PW', 'PS', 'PA', 'PG', 'PY', 'PE', 'PH', 'PN', 'PL', 'PT', 'PR', 'QA', 'RE', 'RO', 'RU', 'RW', 'BL', 'SH', 'KN', 'LC', 'MF', 'PM', 'VC', 'WS', 'SM', 'ST', 'SA', 'SN', 'RS', 'SC', 'SL', 'SG', 'SX', 'SK', 'SI', 'SB', 'SO', 'ZA', 'GS', 'SS', 'ES', 'LK', 'SD', 'SR', 'SJ', 'SZ', 'SE', 'CH', 'SY', 'TW', 'TJ', 'TZ', 'TH', 'TL', 'TG', 'TK', 'TO', 'TT', 'TN', 'TR', 'TM', 'TC', 'TV', 'UG', 'UA', 'AE', 'GB', 'US', 'UM', 'UY', 'UZ', 'VU', 'VE', 'VN', 'VG', 'VI', 'WF', 'EH', 'YE', 'ZM', 'ZW'
#   feeds (string)                          : Specifies a list of Feeds.
#   local_rulestack_prefix_list_ids (string): Specifies a list of Prefix Lists.



# OPTIONAL VARIABLES

variable "audit_comment" {
  description = "The comment for Audit purposes."
  type        = string
  default     = null
}
variable "category" {
  description = "A 'category' block."
  type        = map(any)
  default     = null
}
#
# category block structure:
#   feeds (string)          : Specifies a list of feeds to match.
#   custom_urls (string)    : (REQUIRED) Specifies a list of URL categories to match. Possible values include 'abortion', 'abused-drugs', 'adult', 'alcohol-and-tobacco', 'auctions', 'business-and-economy', 'command-and-control', 'computer-and-internet-info', 'content-delivery-networks', 'copyright-infringement', 'cryptocurrency', 'dating', 'dynamic-dns', 'educational-institutions', 'entertainment-and-arts', 'extremism', 'financial-services', 'gambling', 'games', 'government', 'grayware', 'hacking', 'health-and-medicine', 'high-risk', 'home-and-garden', 'hunting-and-fishing', 'insufficient-content', 'internet-communications-and-telephony', 'internet-portals', 'job-search', 'legal', 'low-risk', 'malware', 'medium-risk', 'military', 'motor-vehicles', 'music', 'newly-registered-domain', 'news', 'not-resolved', 'nudity', 'online-storage-and-backup', 'parked', 'peer-to-peer', 'personal-sites-and-blogs', 'philosophy-and-political-advocacy', 'phishing', 'private-ip-addresses', 'proxy-avoidance-and-anonymizers', 'questionable', 'real-estate', 'real-time-detection', 'recreation-and-hobbies', 'reference-and-research', 'religion', 'search-engines', 'sex-education', 'shareware-and-freeware', 'shopping', 'social-networking', 'society', 'sports', 'stock-advice-and-tools', 'streaming-media', 'swimsuits-and-intimate-apparel', 'training-and-tools', 'translation', 'travel', 'unknown', 'weapons', 'web-advertisements', 'web-based-email', and 'web-hosting'.


variable "decryption_rule_type" {
  description = "The type of Decryption to perform on the rule. Possible values include 'SSLInboundInspection', 'SSLOutboundInspection', and 'None'. Defaults to 'None'."
  type        = string
  default     = "None"
}
variable "description" {
  description = "The description for the rule."
  type        = string
  default     = null
}
variable "enabled" {
  description = "Should this Rule be enabled? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "inspection_certificate_id" {
  description = "The ID of the certificate for inbound inspection. Only valid when 'decryption_rule_type' is set to 'SSLInboundInspection'."
  type        = string
  default     = null
}
variable "logging_enabled" {
  description = "Should Logging be enabled? Defaults to 'false'."
  type        = bool
  default     = false
}
variable "negate_destination" {
  description = "Should the inverse of the Destination configuration be used. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "negate_source" {
  description = "Should the inverse of the Source configuration be used. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "protocol" {
  description = "The Protocol and port to use in the form '[protocol]:[port_number]' e.g. 'TCP:8080' or 'UDP:53'. Conflicts with 'protocol_ports'. Defaults to 'application-default'."
  type        = string
  default     = "application-default"
}
variable "protocol_ports" {
  description = "Specifies a list of Protocol:Port entries. E.g. '[ 'TCP:80', 'UDP:5431' ]'. Conflicts with 'protocol'."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Palo Alto Local Rulestack Rule."
  type        = map(any)
  default     = null
}
