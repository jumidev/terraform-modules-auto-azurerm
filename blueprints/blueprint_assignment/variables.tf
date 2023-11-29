# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Blueprint Assignment. Changing this forces a new resource to be created."
  type        = string

}
variable "target_subscription_id" {
  description = "(REQUIRED) The Subscription ID the Blueprint Published Version is to be applied to. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure location of the Assignment. Changing this forces a new resource to be created."
  type        = string

}
variable "identity" {
  description = "(REQUIRED) An 'identity' block."
  type        = map(any)
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Blueprint. Possible values are 'SystemAssigned' and 'UserAssigned'.
#   identity_ids (string)   : Specifies a list of User Assigned Managed Identity IDs to be assigned to this Blueprint.


variable "version_id" {
  description = "(REQUIRED) The ID of the Published Version of the blueprint to be assigned."
  type        = string

}

# OPTIONAL VARIABLES

variable "parameter_values" {
  description = "a JSON string to supply Blueprint Assignment parameter values."
  type        = string
  default     = null
}
variable "resource_groups" {
  description = "a JSON string to supply the Blueprint Resource Group information."
  type        = string
  default     = null
}
variable "lock_mode" {
  description = "The locking mode of the Blueprint Assignment. One of 'None' (Default), 'AllResourcesReadOnly', or 'AllResourcesDoNotDelete'. Defaults to 'None'."
  type        = string
  default     = "None"
}
variable "lock_exclude_principals" {
  description = "a list of up to 5 Principal IDs that are permitted to bypass the locks applied by the Blueprint."
  type        = list(any)
  default     = []
}
variable "lock_exclude_actions" {
  description = "a list of up to 200 actions that are permitted to bypass the locks applied by the Blueprint."
  type        = list(any)
  default     = []
}
