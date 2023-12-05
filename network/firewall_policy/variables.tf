# REQUIRED VARIABLES

variable "location" {
  description = "(REQUIRED) The Azure Region where the Firewall Policy should exist. Changing this forces a new Firewall Policy to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Firewall Policy. Changing this forces a new Firewall Policy to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Firewall Policy should exist. Changing this forces a new Firewall Policy to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "base_policy_id" {
  description = "The ID of the base Firewall Policy."
  type        = string
  default     = null
}
variable "dns" {
  description = "A 'dns' block."
  type        = map(any)
  default     = null
}
#
# dns block structure :
#   proxy_enabled (bool): Whether to enable DNS proxy on Firewalls attached to this Firewall Policy? Defaults to 'false'.
#   servers (list)      : A list of custom DNS servers' IP addresses.


variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Firewall Policy. Only possible value is 'UserAssigned'.
#   identity_ids (string)   : Specifies a list of User Assigned Managed Identity IDs to be assigned to this Firewall Policy.


variable "insights" {
  description = "An 'insights' block."
  type        = map(any)
  default     = null
}
#
# insights block structure                   :
#   enabled (bool)                             : (REQUIRED) Whether the insights functionality is enabled for this Firewall Policy.
#   default_log_analytics_workspace_id (string): (REQUIRED) The ID of the default Log Analytics Workspace that the Firewalls associated with this Firewall Policy will send their logs to, when there is no location matches in the 'log_analytics_workspace'.
#   retention_in_days (int)                    : The log retention period in days.
#   log_analytics_workspace (block)            : A list of 'log_analytics_workspace' block.
#
# log_analytics_workspace block structure:
#   firewall_location (string)             : (REQUIRED) The location of the Firewalls, that when matches this Log Analytics Workspace will be used to consume their logs.


variable "intrusion_detection" {
  description = "A 'intrusion_detection' block."
  type        = map(any)
  default     = null
}
#
# intrusion_detection block structure:
#   mode (string)                      : In which mode you want to run intrusion detection: 'Off', 'Alert' or 'Deny'.
#   signature_overrides (block)        : One or more 'signature_overrides' blocks.
#   traffic_bypass (block)             : One or more 'traffic_bypass' blocks.
#   private_ranges (list)              : A list of Private IP address ranges to identify traffic direction. By default, only ranges defined by IANA RFC 1918 are considered private IP addresses.
#
# signature_overrides block structure:
#   state (string)                     : state can be any of 'Off', 'Alert' or 'Deny'.
#
# traffic_bypass block structure:
#   name (string)                 : (REQUIRED) The name which should be used for this bypass traffic setting.
#   protocol (string)             : (REQUIRED) The protocols any of 'ANY', 'TCP', 'ICMP', 'UDP' that shall be bypassed by intrusion detection.
#   description (string)          : The description for this bypass traffic setting.
#   destination_addresses (string): Specifies a list of destination IP addresses that shall be bypassed by intrusion detection.
#   destination_ip_groups (string): Specifies a list of destination IP groups that shall be bypassed by intrusion detection.
#   destination_ports (string)    : Specifies a list of destination IP ports that shall be bypassed by intrusion detection.
#   source_addresses (string)     : Specifies a list of source addresses that shall be bypassed by intrusion detection.
#   source_ip_groups (string)     : Specifies a list of source IP groups that shall be bypassed by intrusion detection.


variable "private_ip_ranges" {
  description = "A list of private IP ranges to which traffic will not be SNAT."
  type        = list(any)
  default     = []
}
variable "auto_learn_private_ranges_enabled" {
  description = "Whether enable auto learn private ip range."
  type        = bool
  default     = null
}
variable "sku" {
  description = "The SKU Tier of the Firewall Policy. Possible values are 'Standard', 'Premium' and 'Basic'. Changing this forces a new Firewall Policy to be created."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags which should be assigned to the Firewall Policy."
  type        = map(any)
  default     = null
}
variable "threat_intelligence_allowlist" {
  description = "A 'threat_intelligence_allowlist' block."
  type        = map(any)
  default     = null
}
#
# threat_intelligence_allowlist block structure:
#   fqdns (list)                                 : A list of FQDNs that will be skipped for threat detection.
#   ip_addresses (list)                          : A list of IP addresses or CIDR ranges that will be skipped for threat detection.


variable "threat_intelligence_mode" {
  description = "The operation mode for Threat Intelligence. Possible values are 'Alert', 'Deny' and 'Off'. Defaults to 'Alert'."
  type        = string
  default     = "Alert"
}
variable "tls_certificate" {
  description = "A 'tls_certificate' block."
  type        = map(any)
  default     = null
}
#
# tls_certificate block structure:
#   key_vault_secret_id (string)   : (REQUIRED) The ID of the Key Vault, where the secret or certificate is stored.
#   name (string)                  : (REQUIRED) The name of the certificate.


variable "sql_redirect_allowed" {
  description = "Whether SQL Redirect traffic filtering is allowed. Enabling this flag requires no rule using ports between '11000'-'11999'."
  type        = bool
  default     = null
}
variable "explicit_proxy" {
  description = "A 'explicit_proxy' block."
  type        = map(any)
  default     = null
}
#
# explicit_proxy block structure:
#   enabled (bool)                : Whether the explicit proxy is enabled for this Firewall Policy.
#   http_port (string)            : The port number for explicit http protocol.
#   https_port (string)           : The port number for explicit proxy https protocol.
#   enable_pac_file (bool)        : Whether the pac file port and url need to be provided.
#   pac_file_port (string)        : Specifies a port number for firewall to serve PAC file.
#   pac_file (string)             : Specifies a SAS URL for PAC file.


