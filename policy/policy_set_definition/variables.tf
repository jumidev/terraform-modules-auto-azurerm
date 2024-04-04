# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the policy set definition. Changing this forces a new resource to be created."
  type        = string

}
variable "policy_type" {
  description = "(REQUIRED) The policy set type. Possible values are 'BuiltIn', 'Custom', 'NotSpecified' and 'Static'. Changing this forces a new resource to be created."
  type        = string

}
variable "display_name" {
  description = "(REQUIRED) The display name of the policy set definition."
  type        = string

}
variable "policy_definition_references" {
  description = "(REQUIRED) One or more 'policy_definition_reference' blocks."
  type        = map(map(any))
}
#
# policy_definition_reference block structure:
#   policy_definition_id (string)              : (REQUIRED) The ID of the policy definition that will be included in this policy set definition.
#   parameter_values (string)                  : Parameter values for the referenced policy rule. This field is a JSON string that allows you to assign parameters to this policy rule.
#   reference_id (string)                      : A unique ID within this policy set definition for this policy definition reference.
#   policy_group_names (list)                  : A list of names of the policy definition groups that this policy definition reference belongs to.



# OPTIONAL VARIABLES

variable "policy_definition_groups" {
  description = "One or more 'policy_definition_group' blocks."
  type        = map(map(any))
  default     = null
}
#
# policy_definition_group block structure :
#   name (string)                           : (REQUIRED) The name of this policy definition group.
#   display_name (string)                   : The display name of this policy definition group.
#   category (string)                       : The category of this policy definition group.
#   description (string)                    : The description of this policy definition group.
#   additional_metadata_resource_id (string): The ID of a resource that contains additional metadata about this policy definition group.


variable "description" {
  description = "The description of the policy set definition."
  type        = string
  default     = null
}
variable "management_group_id" {
  description = "The id of the Management Group where this policy set definition should be defined. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "metadata" {
  description = "The metadata for the policy set definition. This is a JSON object representing additional metadata that should be stored with the policy definition."
  type        = string
  default     = null
}
variable "parameters" {
  description = "Parameters for the policy set definition. This field is a JSON object that allows you to parameterize your policy definition."
  type        = string
  default     = null
}
