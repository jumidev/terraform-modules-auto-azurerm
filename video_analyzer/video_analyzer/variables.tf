# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Video Analyzer. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Video Analyzer. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "storage_account" {
  description = "(REQUIRED) A 'storage_account' block."
  type        = map(any)
}
#
# storage_account block structure   :
#   user_assigned_identity_id (string): (REQUIRED) Specifies the User Assigned Identity ID which should be assigned to access this Storage Account.


variable "identity" {
  description = "(REQUIRED) An 'identity' block."
  type        = map(any)
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Video Analyzer instance. Only possible value is 'UserAssigned'.
#   identity_ids (string)   : (REQUIRED) Specifies a list of User Assigned Managed Identity IDs to be assigned to this Video Analyzer instance.



# OPTIONAL VARIABLES

variable "tags" {
  description = "A mapping of tags assigned to the resource."
  type        = map(any)
  default     = null
}
