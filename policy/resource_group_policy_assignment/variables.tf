# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Policy Assignment. Changing this forces a new Policy Assignment to be created. Cannot exceed 64 characters in length."
  type        = string

}
variable "policy_definition_id" {
  description = "(REQUIRED) The ID of the Policy Definition or Policy Definition Set. Changing this forces a new Policy Assignment to be created."
  type        = string

}
variable "resource_group_id" {
  description = "(REQUIRED) The ID of the Resource Group where this Policy Assignment should be created. Changing this forces a new Policy Assignment to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "A description which should be used for this Policy Assignment."
  type        = string
  default     = null
}
variable "display_name" {
  description = "The Display Name for this Policy Assignment."
  type        = string
  default     = null
}
variable "enforce" {
  description = "Specifies if this Policy should be enforced or not? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) The Type of Managed Identity which should be added to this Policy Definition. Possible values are 'SystemAssigned' and 'UserAssigned'.
#   identity_ids (list)     : A list of User Managed Identity IDs which should be assigned to the Policy Definition.


variable "location" {
  description = "The Azure Region where the Policy Assignment should exist. Changing this forces a new Policy Assignment to be created."
  type        = string
  default     = null
}
variable "metadata" {
  description = "A JSON mapping of any Metadata for this Policy."
  type        = string
  default     = null
}
variable "non_compliance_message" {
  description = "One or more 'non_compliance_message' blocks."
  type        = map(map(any))
  default     = null
}
#
# non_compliance_message block structure :
#   content (string)                       : (REQUIRED) The non-compliance message text. When assigning policy sets (initiatives), unless 'policy_definition_reference_id' is specified then this message will be the default for all policies.
#   policy_definition_reference_id (string): When assigning policy sets (initiatives), this is the ID of the policy definition that the non-compliance message applies to.


variable "not_scopes" {
  description = "Specifies a list of Resource Scopes (for example a Subscription, or a Resource Group) within this Management Group which are excluded from this Policy."
  type        = list(any)
  default     = []
}
variable "parameters" {
  description = "A JSON mapping of any Parameters for this Policy."
  type        = string
  default     = null
}
variable "overrides" {
  description = "One or more 'overrides' blocks. More detail about 'overrides' and 'resource_selectors' see [policy assignment structure](https://learn.microsoft.com/en-us/azure/governance/policy/concepts/assignment-structure#resource-selectors-preview)"
  type        = map(map(any))
  default     = null
}
#
# overrides block structure:
#   value (string)           : (REQUIRED) Specifies the value to override the policy property. Possible values for 'policyEffect' override listed [policy effects](https://learn.microsoft.com/en-us/azure/governance/policy/concepts/effects).
#   selectors (block)        : One or more 'override_selector' block.
#
# override_selector block structure:
#   not_in (string)                  : Specify the list of policy reference id values to filter out. Cannot be used with 'in'.


variable "resource_selectors" {
  description = "One or more 'resource_selectors' blocks to filter polices by resource properties."
  type        = map(map(any))
  default     = null
}
#
# resource_selectors block structure:
#   name (string)                     : Specifies a name for the resource selector.
#   selectors (block)                 : (REQUIRED) One or more 'resource_selector' block.
#
# resource_selector block structure:
#   kind (string)                    : (REQUIRED) Specifies which characteristic will narrow down the set of evaluated resources. Possible values are 'resourceLocation', 'resourceType' and 'resourceWithoutLocation'.
#   not_in (string)                  : The list of not-allowed values for the specified kind. Cannot be used with 'in'. Can contain up to 50 values.


