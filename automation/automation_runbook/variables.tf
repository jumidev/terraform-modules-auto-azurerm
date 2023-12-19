# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Runbook. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the Runbook is created. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "automation_account_name" {
  description = "(REQUIRED) The name of the automation account in which the Runbook is created. Changing this forces a new resource to be created."
  type        = string

}
variable "runbook_type" {
  description = "(REQUIRED) The type of the runbook - can be either 'Graph', 'GraphPowerShell', 'GraphPowerShellWorkflow', 'PowerShellWorkflow', 'PowerShell', 'PowerShell72', 'Python3', 'Python2' or 'Script'. Changing this forces a new resource to be created."
  type        = string

}
variable "log_progress" {
  description = "(REQUIRED) Progress log option."
  type        = string

}
variable "log_verbose" {
  description = "(REQUIRED) Verbose log option."
  type        = string

}

# OPTIONAL VARIABLES

variable "publish_content_link" {
  description = "One 'publish_content_link' block."
  type        = map(any)
  default     = null
}
#
# publish_content_link block structure:
#   uri (string)                        : (REQUIRED) The URI of the runbook content.
#   version (string)                    : Specifies the version of the content
#   hash (block)                        : A 'hash' block.
#
# hash block structure:
#   algorithm (string)  : (REQUIRED) Specifies the hash algorithm used to hash the content.
#   value (string)      : (REQUIRED) Specifies the expected hash value of the content.


variable "description" {
  description = "A description for this credential."
  type        = string
  default     = null
}
variable "content" {
  description = "The desired content of the runbook."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
variable "log_activity_trace_level" {
  description = "Specifies the activity-level tracing options of the runbook, available only for Graphical runbooks. Possible values are '0' for None, '9' for Basic, and '15' for Detailed. Must turn on Verbose logging in order to see the tracing."
  type        = string
  default     = null
}
variable "draft" {
  description = "A 'draft' block ."
  type        = map(any)
  default     = null
}
#
# draft block structure   :
#   edit_mode_enabled (bool): Whether the draft in edit mode.
#   content_link (block)    : A 'publish_content_link' block.
#   output_types (string)   : Specifies the output types of the runbook.
#   parameters (block)      : A list of 'parameters' block.
#
# publish_content_link block structure:
#   uri (string)                        : (REQUIRED) The URI of the runbook content.
#   version (string)                    : Specifies the version of the content
#   hash (block)                        : A 'hash' block.
#
# parameters block structure:
#   key (string)              : (REQUIRED) The name of the parameter.
#   type (string)             : (REQUIRED) Specifies the type of this parameter.
#   mandatory (string)        : Whether this parameter is mandatory.
#   position (string)         : Specifies the position of the parameter.
#   default_value (string)    : Specifies the default value of the parameter.
#
# hash block structure:
#   algorithm (string)  : (REQUIRED) Specifies the hash algorithm used to hash the content.
#   value (string)      : (REQUIRED) Specifies the expected hash value of the content.


variable "automation_account_resource_group_name" {
  description = "Specifies the name of the Resource Group where the Automation Account exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
