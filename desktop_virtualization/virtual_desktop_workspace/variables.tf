# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Virtual Desktop Workspace. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Virtual Desktop Workspace. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The location/region where the Virtual Desktop Workspace is located. Changing the location/region forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "friendly_name" {
  description = "A friendly name for the Virtual Desktop Workspace."
  type        = string
  default     = null
}
variable "description" {
  description = "A description for the Virtual Desktop Workspace."
  type        = string
  default     = null
}
variable "public_network_access_enabled" {
  description = "Whether public network access is allowed for this Virtual Desktop Workspace. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
