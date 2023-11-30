# REQUIRED VARIABLES

variable "configuration_store_id" {
  description = "(REQUIRED) Specifies the id of the App Configuration. Changing this forces a new resource to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name of the App Configuration Feature. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "The description of the App Configuration Feature."
  type        = string
  default     = null
}
variable "enabled" {
  description = "The status of the App Configuration Feature. By default, this is set to false."
  type        = bool
  default     = null
}
variable "key" {
  description = "The key of the App Configuration Feature. The value for 'name' will be used if this is unspecified. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "label" {
  description = "The label of the App Configuration Feature. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "locked" {
  description = "Should this App Configuration Feature be Locked to prevent changes?"
  type        = string
  default     = null
}
variable "percentage_filter_value" {
  description = "A number representing the value of the percentage required to enable this feature."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
variable "targeting_filter" {
  description = "A 'targeting_filter' block."
  type        = map(any)
  default     = null
}
#
# targeting_filter block structure:
#   rollout_percentage (string)     : (REQUIRED) Rollout percentage of the group.


variable "timewindow_filter" {
  description = "A 'timewindow_filter' block."
  type        = map(any)
  default     = null
}
#
# timewindow_filter block structure:
#   start (string)                   : The earliest timestamp the feature is enabled. The timestamp must be in RFC3339 format.
#   end (string)                     : The latest timestamp the feature is enabled. The timestamp must be in RFC3339 format.


