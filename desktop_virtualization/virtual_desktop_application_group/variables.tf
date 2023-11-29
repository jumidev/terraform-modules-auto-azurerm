# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Virtual Desktop Application Group. Changing the name forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Virtual Desktop Application Group. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The location/region where the Virtual Desktop Application Group is located. Changing this forces a new resource to be created."
  type        = string

}
variable "type" {
  description = "(REQUIRED) Type of Virtual Desktop Application Group. Valid options are 'RemoteApp' or 'Desktop' application groups. Changing this forces a new resource to be created."
  type        = string

}
variable "host_pool_id" {
  description = "(REQUIRED) Resource ID for a Virtual Desktop Host Pool to associate with the Virtual Desktop Application Group. Changing the name forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "friendly_name" {
  description = "Option to set a friendly name for the Virtual Desktop Application Group."
  type        = string
  default     = null
}
variable "default_desktop_display_name" {
  description = "Option to set the display name for the default sessionDesktop desktop when 'type' is set to 'Desktop'."
  type        = string
  default     = null
}
variable "description" {
  description = "Option to set a description for the Virtual Desktop Application Group."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
