# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Iot Security Solution. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the name of the resource group in which to create the Iot Security Solution. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "display_name" {
  description = "(REQUIRED) Specifies the Display Name for this Iot Security Solution."
  type        = string

}
variable "iothub_ids" {
  description = "(REQUIRED) Specifies the IoT Hub resource IDs to which this Iot Security Solution is applied."
  type        = string

}

# OPTIONAL VARIABLES

variable "additional_workspace" {
  description = "A 'additional_workspace' block."
  type        = map(any)
  default     = null
}
#
# additional_workspace block structure:
#   data_types (string)                 : (REQUIRED) A list of data types which sent to workspace. Possible values are 'Alerts' and 'RawEvents'.
#   workspace_id (string)               : (REQUIRED) The resource ID of the Log Analytics Workspace.


variable "disabled_data_sources" {
  description = "A list of disabled data sources for the Iot Security Solution. Possible value is 'TwinData'."
  type        = bool
  default     = null
}
variable "enabled" {
  description = "Is the Iot Security Solution enabled? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "events_to_export" {
  description = "A list of data which is to exported to analytic workspace. Valid values include 'RawEvents'."
  type        = string
  default     = null
}
variable "log_analytics_workspace_id" {
  description = "Specifies the Log Analytics Workspace ID to which the security data will be sent."
  type        = string
  default     = null
}
variable "log_unmasked_ips_enabled" {
  description = "Should IP addressed be unmasked in the log? Defaults to 'false'."
  type        = bool
  default     = false
}
variable "recommendations_enabled" {
  description = "A 'recommendations_enabled' block of options to enable or disable as defined below."
  type        = map(any)
  default     = null
}
#
# recommendations_enabled block structure:
#   acr_authentication (bool)              : Is Principal Authentication enabled for the ACR repository? Defaults to 'true'.
#   agent_send_unutilized_msg (bool)       : Is Agent send underutilized messages enabled? Defaults to 'true'.
#   baseline (bool)                        : Is Security related system configuration issues identified? Defaults to 'true'.
#   edge_hub_mem_optimize (bool)           : Is IoT Edge Hub memory optimized? Defaults to 'true'.
#   edge_logging_option (bool)             : Is logging configured for IoT Edge module? Defaults to 'true'.
#   inconsistent_module_settings (bool)    : Is inconsistent module settings enabled for SecurityGroup? Defaults to 'true'.
#   install_agent (bool)                   : is Azure IoT Security agent installed? Defaults to 'true'.
#   ip_filter_deny_all (bool)              : Is Default IP filter policy denied? Defaults to 'true'.
#   ip_filter_permissive_rule (bool)       : Is IP filter rule source allowable IP range too large? Defaults to 'true'.
#   open_ports (bool)                      : Is any ports open on the device? Defaults to 'true'.
#   permissive_firewall_policy (bool)      : Does firewall policy exist which allow necessary communication to/from the device? Defaults to 'true'.
#   permissive_input_firewall_rules (bool) : Is only necessary addresses or ports are permitted in? Defaults to 'true'.
#   permissive_output_firewall_rules (bool): Is only necessary addresses or ports are permitted out? Defaults to 'true'.
#   privileged_docker_options (bool)       : Is high level permissions are needed for the module? Defaults to 'true'.
#   shared_credentials (bool)              : Is any credentials shared among devices? Defaults to 'true'.
#   vulnerable_tls_cipher_suite (bool)     : Does TLS cipher suite need to be updated? Defaults to 'true'.


variable "query_for_resources" {
  description = "An Azure Resource Graph query used to set the resources monitored."
  type        = string
  default     = null
}
variable "query_subscription_ids" {
  description = "A list of subscription Ids on which the user defined resources query should be executed."
  type        = list(any)
  default     = []
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
