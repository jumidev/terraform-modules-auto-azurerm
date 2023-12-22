# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the activity log alert. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the activity log alert instance. Changing this forces a new resource to be created."
  type        = string

}
variable "scopes" {
  description = "(REQUIRED) The Scope at which the Activity Log should be applied. A list of strings which could be a resource group , or a subscription, or a resource ID (such as a Storage Account)."
  type        = list(any)

}
variable "criteria" {
  description = "(REQUIRED) A 'criteria' block."
  type        = map(any)
}
#
# criteria block structure        :
#   category (string)               : (REQUIRED) The category of the operation. Possible values are 'Administrative', 'Autoscale', 'Policy', 'Recommendation', 'ResourceHealth', 'Security' and 'ServiceHealth'.
#   caller (string)                 : The email address or Azure Active Directory identifier of the user who performed the operation.
#   operation_name (string)         : The Resource Manager Role-Based Access Control operation name. Supported operation should be of the form: '<resourceProvider>/<resourceType>/<operation>'.
#   resource_provider (string)      : The name of the resource provider monitored by the activity log alert.
#   resource_providers (list)       : A list of names of resource providers monitored by the activity log alert.
#   resource_type (string)          : The resource type monitored by the activity log alert.
#   resource_types (list)           : A list of resource types monitored by the activity log alert.
#   resource_group (string)         : The name of resource group monitored by the activity log alert.
#   resource_groups (list)          : A list of names of resource groups monitored by the activity log alert.
#   resource_id (string)            : The specific resource monitored by the activity log alert. It should be within one of the 'scopes'.
#   resource_ids (list)             : A list of specific resources monitored by the activity log alert. It should be within one of the 'scopes'.
#   level (string)                  : The severity level of the event. Possible values are 'Verbose', 'Informational', 'Warning', 'Error', and 'Critical'.
#   levels (list)                   : A list of severity level of the event. Possible values are 'Verbose', 'Informational', 'Warning', 'Error', and 'Critical'.
#   status (string)                 : The status of the event. For example, 'Started', 'Failed', or 'Succeeded'.
#   statuses (list)                 : A list of status of the event. For example, 'Started', 'Failed', or 'Succeeded'.
#   sub_status (string)             : The sub status of the event.
#   sub_statuses (list)             : A list of sub status of the event.
#   recommendation_type (string)    : The recommendation type of the event. It is only allowed when 'category' is 'Recommendation'.
#   recommendation_category (string): The recommendation category of the event. Possible values are 'Cost', 'Reliability', 'OperationalExcellence', 'HighAvailability' and 'Performance'. It is only allowed when 'category' is 'Recommendation'.
#   recommendation_impact (string)  : The recommendation impact of the event. Possible values are 'High', 'Medium' and 'Low'. It is only allowed when 'category' is 'Recommendation'.
#   resource_health (string)        : A block to define fine grain resource health settings.
#   service_health (string)         : A block to define fine grain service health settings.



# OPTIONAL VARIABLES

variable "action" {
  description = "One or more 'action' blocks."
  type        = map(map(any))
  default     = null
}
#
# action block structure     :
#   action_group_id (string)   : (REQUIRED) The ID of the Action Group can be sourced from [the 'azurerm_monitor_action_group' resource](./monitor_action_group.html).
#   webhook_properties (string): The map of custom string properties to include with the post operation. These data are appended to the webhook payload.


variable "enabled" {
  description = "Should this Activity Log Alert be enabled? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "description" {
  description = "The description of this activity log alert."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
