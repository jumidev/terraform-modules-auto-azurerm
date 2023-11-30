# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Action Group. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Action Group instance. Changing this forces a new resource to be created."
  type        = string

}
variable "short_name" {
  description = "(REQUIRED) The short name of the action group. This will be used in SMS messages."
  type        = string

}

# OPTIONAL VARIABLES

variable "enabled" {
  description = "Whether this action group is enabled. If an action group is not enabled, then none of its receivers will receive communications. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "arm_role_receiver" {
  description = "One or more 'arm_role_receiver' blocks."
  type        = map(map(any))
  default     = null
}
#
# arm_role_receiver block structure:
#   role_id (string)                 : (REQUIRED) The arm role id.
#   use_common_alert_schema (bool)   : Enables or disables the common alert schema.


variable "automation_runbook_receiver" {
  description = "One or more 'automation_runbook_receiver' blocks."
  type        = map(map(any))
  default     = null
}
#
# automation_runbook_receiver block structure:
#   automation_account_id (string)             : (REQUIRED) The automation account ID which holds this runbook and authenticates to Azure resources.
#   runbook_name (string)                      : (REQUIRED) The name for this runbook.
#   webhook_resource_id (string)               : (REQUIRED) The resource id for webhook linked to this runbook.
#   is_global_runbook (string)                 : (REQUIRED) Indicates whether this instance is global runbook.
#   service_uri (string)                       : (REQUIRED) The URI where webhooks should be sent.
#   use_common_alert_schema (bool)             : Enables or disables the common alert schema.


variable "azure_app_push_receiver" {
  description = "One or more 'azure_app_push_receiver' blocks."
  type        = map(map(any))
  default     = null
}
#
# azure_app_push_receiver block structure:
#   email_address (string)                 : (REQUIRED) The email address of the user signed into the mobile app who will receive push notifications from this receiver.


variable "azure_function_receiver" {
  description = "One or more 'azure_function_receiver' blocks."
  type        = map(map(any))
  default     = null
}
#
# azure_function_receiver block structure:
#   function_app_resource_id (string)      : (REQUIRED) The Azure resource ID of the function app.
#   function_name (string)                 : (REQUIRED) The function name in the function app.
#   http_trigger_url (string)              : (REQUIRED) The HTTP trigger url where HTTP request sent to.
#   use_common_alert_schema (bool)         : Enables or disables the common alert schema.


variable "email_receiver" {
  description = "One or more 'email_receiver' blocks."
  type        = map(map(any))
  default     = null
}
#
# email_receiver block structure:
#   email_address (string)        : (REQUIRED) The email address of this receiver.
#   use_common_alert_schema (bool): Enables or disables the common alert schema.


variable "event_hub_receiver" {
  description = "One or more 'event_hub_receiver' blocks."
  type        = map(map(any))
  default     = null
}
#
# event_hub_receiver block structure:
#   event_hub_id (string)             : The resource ID of the respective Event Hub.
#   event_hub_name (string)           : The name of the specific Event Hub queue.
#   event_hub_namespace (string)      : The namespace name of the Event Hub.
#   subscription_id (string)          : The ID for the subscription containing this Event Hub. Default to the subscription ID of the Action Group.
#   tenant_id (string)                : The Tenant ID for the subscription containing this Event Hub.
#   use_common_alert_schema (bool)    : Indicates whether to use common alert schema.


variable "itsm_receiver" {
  description = "One or more 'itsm_receiver' blocks."
  type        = map(map(any))
  default     = null
}
#
# itsm_receiver block structure:
#   workspace_id (string)        : (REQUIRED) The Azure Log Analytics workspace ID where this connection is defined. Format is '<subscription id>|<workspace id>', for example '00000000-0000-0000-0000-000000000000|00000000-0000-0000-0000-000000000000'.
#   connection_id (string)       : (REQUIRED) The unique connection identifier of the ITSM connection.
#   ticket_configuration (string): (REQUIRED) A JSON blob for the configurations of the ITSM action. CreateMultipleWorkItems option will be part of this blob as well.
#   region (string)              : (REQUIRED) The region of the workspace.


variable "location" {
  description = "The Azure Region where the Action Group should exist. Changing this forces a new Action Group to be created. Defaults to 'global'."
  type        = string
  default     = "global"
}
variable "logic_app_receiver" {
  description = "One or more 'logic_app_receiver' blocks."
  type        = map(map(any))
  default     = null
}
#
# logic_app_receiver block structure:
#   resource_id (string)              : (REQUIRED) The Azure resource ID of the logic app.
#   callback_url (string)             : (REQUIRED) The callback url where HTTP request sent to.
#   use_common_alert_schema (bool)    : Enables or disables the common alert schema.


variable "sms_receiver" {
  description = "One or more 'sms_receiver' blocks."
  type        = map(map(any))
  default     = null
}
#
# sms_receiver block structure:
#   country_code (string)       : (REQUIRED) The country code of the SMS receiver.
#   phone_number (int)          : (REQUIRED) The phone number of the SMS receiver.


variable "voice_receiver" {
  description = "One or more 'voice_receiver' blocks."
  type        = map(map(any))
  default     = null
}
#
# voice_receiver block structure:
#   country_code (string)         : (REQUIRED) The country code of the voice receiver.
#   phone_number (int)            : (REQUIRED) The phone number of the voice receiver.


variable "webhook_receiver" {
  description = "One or more 'webhook_receiver' blocks."
  type        = map(map(any))
  default     = null
}
#
# webhook_receiver block structure:
#   service_uri (string)            : (REQUIRED) The URI where webhooks should be sent.
#   use_common_alert_schema (bool)  : Enables or disables the common alert schema.
#   aad_auth (block)                : The 'aad_auth' block.
#
# aad_auth block structure:
#   object_id (string)      : (REQUIRED) The webhook application object Id for AAD auth.
#   identifier_uri (string) : The identifier URI for AAD auth.
#   tenant_id (string)      : The tenant id for AAD auth.


variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
