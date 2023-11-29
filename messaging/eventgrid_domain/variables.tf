# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the EventGrid Domain resource. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the EventGrid Domain exists. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Event Grid Domain. Possible values are 'SystemAssigned', 'UserAssigned'.
#   identity_ids (string)   : Specifies a list of User Assigned Managed Identity IDs to be assigned to this Event Grid Domain.


variable "input_schema" {
  description = "Specifies the schema in which incoming events will be published to this domain. Allowed values are 'CloudEventSchemaV1_0', 'CustomEventSchema', or 'EventGridSchema'. Defaults to 'EventGridSchema'. Changing this forces a new resource to be created."
  type        = string
  default     = "EventGridSchema"
}
variable "input_mapping_fields" {
  description = "A 'input_mapping_fields' block. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
#
# input_mapping_fields block structure:
#   topic (string)                      : Specifies the topic of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
#   event_type (string)                 : Specifies the event type of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
#   event_time (string)                 : Specifies the event time of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
#   data_version (string)               : Specifies the data version of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
#   subject (string)                    : Specifies the subject of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.


variable "input_mapping_default_values" {
  description = "A 'input_mapping_default_values' block. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
#
# input_mapping_default_values block structure:
#   event_type (string)                         : Specifies the default event type of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
#   data_version (string)                       : Specifies the default data version of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.
#   subject (string)                            : Specifies the default subject of the EventGrid Event to associate with the domain. Changing this forces a new resource to be created.


variable "public_network_access_enabled" {
  description = "Whether or not public network access is allowed for this server. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "local_auth_enabled" {
  description = "Whether local authentication methods is enabled for the EventGrid Domain. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "auto_create_topic_with_first_subscription" {
  description = "Whether to create the domain topic when the first event subscription at the scope of the domain topic is created. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "auto_delete_topic_with_last_subscription" {
  description = "Whether to delete the domain topic when the last event subscription at the scope of the domain topic is deleted. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "inbound_ip_rule" {
  description = "One or more 'inbound_ip_rule' blocks."
  type        = map(map(any))
  default     = null
}
#
# inbound_ip_rule block structure:
#   ip_mask (string)               : (REQUIRED) The IP mask (CIDR) to match on.
#   action (string)                : The action to take when the rule is matched. Possible values are 'Allow'. Defaults to 'Allow'.


variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
