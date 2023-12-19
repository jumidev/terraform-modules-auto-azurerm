# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Maintenance Configuration. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Maintenance Configuration should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specified the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "scope" {
  description = "(REQUIRED) The scope of the Maintenance Configuration. Possible values are 'Extension', 'Host', 'InGuestPatch', 'OSImage', 'SQLDB' or 'SQLManagedInstance'."
  type        = string

}

# OPTIONAL VARIABLES

variable "visibility" {
  description = "The visibility of the Maintenance Configuration. The only allowable value is 'Custom'. Defaults to 'Custom'."
  type        = string
  default     = "Custom"
}
variable "window" {
  description = "A 'window' block."
  type        = map(any)
  default     = null
}
#
# window block structure       :
#   start_date_time (string)     : (REQUIRED) Effective start date of the maintenance window in YYYY-MM-DD hh:mm format.
#   expiration_date_time (string): Effective expiration date of the maintenance window in YYYY-MM-DD hh:mm format.
#   duration (string)            : The duration of the maintenance window in HH:mm format.
#   time_zone (string)           : (REQUIRED) The time zone for the maintenance window. A list of timezones can be obtained by executing [System.TimeZoneInfo]::GetSystemTimeZones() in PowerShell.
#   recur_every (string)         : The rate at which a maintenance window is expected to recur. The rate can be expressed as daily, weekly, or monthly schedules.


variable "install_patches" {
  description = "An 'install_patches' block."
  type        = map(any)
  default     = null
}
#
# install_patches block structure:
#   linux (block)                  : A 'linux' block. This property only applies when 'scope' is set to 'InGuestPatch'
#   windows (block)                : A 'windows' block. This property only applies when 'scope' is set to 'InGuestPatch'
#   reboot (string)                : Possible reboot preference as defined by the user based on which it would be decided to reboot the machine or not after the patch operation is completed. Possible values are 'Always', 'IfRequired' and 'Never'. This property only applies when 'scope' is set to 'InGuestPatch'.
#
# windows block structure            :
#   classifications_to_include (string): List of Classification category of patches to be patched. Possible values are 'Critical', 'Security', 'UpdateRollup', 'FeaturePack', 'ServicePack', 'Definition', 'Tools' and 'Updates'.
#   kb_numbers_to_exclude (string)     : List of KB numbers to be excluded from patching.
#   kb_numbers_to_include (string)     : List of KB numbers to be included for patching.
#
# linux block structure                 :
#   classifications_to_include (string)   : List of Classification category of patches to be patched. Possible values are 'Critical', 'Security' and 'Other'.
#   package_names_mask_to_exclude (string): List of package names to be excluded from patching.
#   package_names_mask_to_include (string): List of package names to be included for patching.


variable "in_guest_user_patch_mode" {
  description = "The in guest user patch mode. Possible values are 'Platform' or 'User'. Must be specified when 'scope' is 'InGuestPatch'."
  type        = string
  default     = null
}
variable "properties" {
  description = "A mapping of properties to assign to the resource."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource. The key could not contain upper case letter."
  type        = map(any)
  default     = null
}
