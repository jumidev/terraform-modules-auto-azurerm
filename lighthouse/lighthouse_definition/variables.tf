# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Lighthouse Definition. Changing this forces a new resource to be created."
  type        = string

}
variable "managing_tenant_id" {
  description = "(REQUIRED) The ID of the managing tenant. Changing this forces a new resource to be created."
  type        = string

}
variable "scope" {
  description = "(REQUIRED) The ID of the managed subscription. Changing this forces a new resource to be created."
  type        = string

}
variable "authorization" {
  description = "(REQUIRED) An 'authorization' block."
  type        = map(any)
}
#
# authorization block structure         :
#   principal_id (string)                 : (REQUIRED) Principal ID of the security group/service principal/user that would be assigned permissions to the projected subscription.
#   role_definition_id (string)           : (REQUIRED) The role definition identifier. This role will define the permissions that are granted to the principal. This cannot be an 'Owner' role.
#   delegated_role_definition_ids (string): The set of role definition ids which define all the permissions that the principal id can assign.
#   principal_display_name (string)       : The display name of the security group/service principal/user that would be assigned permissions to the projected subscription.



# OPTIONAL VARIABLES

variable "lighthouse_definition_id" {
  description = "A unique UUID/GUID which identifies this lighthouse definition - one will be generated if not specified. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "description" {
  description = "A description of the Lighthouse Definition."
  type        = string
  default     = null
}
variable "eligible_authorization" {
  description = "An 'eligible_authorization' block."
  type        = map(any)
  default     = null
}
#
# eligible_authorization block structure:
#   principal_id (string)                 : (REQUIRED) Principal ID of the security group/service principal/user that would be assigned permissions to the projected subscription.
#   role_definition_id (string)           : (REQUIRED) The Principal ID of the Azure built-in role that defines the permissions that the Azure Active Directory will have on the projected scope.
#   just_in_time_access_policy (block)    : A 'just_in_time_access_policy' block.
#   principal_display_name (string)       : The display name of the Azure Active Directory Principal.
#
# just_in_time_access_policy block structure:
#   multi_factor_auth_provider (string)       : The multi-factor authorization provider to be used for just-in-time access requests. Possible value is 'Azure'.
#   maximum_activation_duration (int)         : The maximum access duration in ISO 8601 format for just-in-time access requests. Defaults to 'PT8H'.
#   approver (block)                          : An 'approver' block.
#
# approver block structure       :
#   principal_id (string)          : (REQUIRED) The Principal ID of the Azure Active Directory principal for the approver.
#   principal_display_name (string): The display name of the Azure Active Directory Principal for the approver.


variable "plan" {
  description = "A 'plan' block."
  type        = map(any)
  default     = null
}
#
# plan block structure:
#   name (string)       : (REQUIRED) The plan name of the marketplace offer.
#   publisher (string)  : (REQUIRED) The publisher ID of the plan.
#   product (string)    : (REQUIRED) The product code of the plan.
#   version (string)    : (REQUIRED) The version of the plan.


