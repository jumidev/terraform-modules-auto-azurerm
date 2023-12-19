# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Logic App Workflow. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group in which the Logic App Workflow should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the Logic App Workflow exists. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "access_control" {
  description = "A 'access_control' block."
  type        = map(any)
  default     = null
}
#
# access_control block structure:
#   action (block)                : A 'action' block.
#   content (block)               : A 'content' block.
#   trigger (block)               : A 'trigger' block.
#   workflow_management (block)   : A 'workflow_management' block.
#
# open_authentication_policy block structure:
#   name (string)                             : (REQUIRED) The OAuth policy name for the Logic App Workflow.
#   claim (block)                             : (REQUIRED) A 'claim' block.
#
# action block structure                :
#   allowed_caller_ip_address_range (list): (REQUIRED) A list of the allowed caller IP address ranges.
#
# trigger block structure               :
#   allowed_caller_ip_address_range (list): (REQUIRED) A list of the allowed caller IP address ranges.
#   open_authentication_policy (block)    : A 'open_authentication_policy' block.
#
# content block structure               :
#   allowed_caller_ip_address_range (list): (REQUIRED) A list of the allowed caller IP address ranges.
#
# workflow_management block structure   :
#   allowed_caller_ip_address_range (list): (REQUIRED) A list of the allowed caller IP address ranges.
#
# claim block structure:
#   name (string)        : (REQUIRED) The name of the OAuth policy claim for the Logic App Workflow.
#   value (string)       : (REQUIRED) The value of the OAuth policy claim for the Logic App Workflow.


variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Logic App Workflow. Possible values are 'SystemAssigned', 'UserAssigned'.
#   identity_ids (string)   : Specifies a list of User Assigned Managed Identity IDs to be assigned to this Logic App Workflow.


variable "integration_service_environment_id" {
  description = "The ID of the Integration Service Environment to which this Logic App Workflow belongs. Changing this forces a new Logic App Workflow to be created."
  type        = string
  default     = null
}
variable "logic_app_integration_account_id" {
  description = "The ID of the integration account linked by this Logic App Workflow."
  type        = string
  default     = null
}
variable "enabled" {
  description = "Is the Logic App Workflow enabled? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "workflow_parameters" {
  description = "Specifies a map of Key-Value pairs of the Parameter Definitions to use for this Logic App Workflow. The key is the parameter name, and the value is a JSON encoded string of the parameter definition (see: <https://docs.microsoft.com/azure/logic-apps/logic-apps-workflow-definition-language#parameters>)."
  type        = string
  default     = null
}
variable "workflow_schema" {
  description = "Specifies the Schema to use for this Logic App Workflow. Defaults to 'https://schema.management.azure.com/providers/Microsoft.Logic/schemas/2016-06-01/workflowdefinition.json#'. Changing this forces a new resource to be created."
  type        = string
  default     = "https://schema.management.azure.com/providers/Microsoft.Logic/schemas/2016-06-01/workflowdefinition.json#"
}
variable "workflow_version" {
  description = "Specifies the version of the Schema used for this Logic App Workflow. Defaults to '1.0.0.0'. Changing this forces a new resource to be created."
  type        = string
  default     = "1.0.0.0"
}
variable "parameters" {
  description = "A map of Key-Value pairs."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
