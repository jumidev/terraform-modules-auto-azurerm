# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Virtual Desktop Application. Changing the name forces a new resource to be created."
  type        = string

}
variable "application_group_id" {
  description = "(REQUIRED) Resource ID for a Virtual Desktop Application Group to associate with the Virtual Desktop Application. Changing this forces a new resource to be created."
  type        = string

}
variable "path" {
  description = "(REQUIRED) The file path location of the app on the Virtual Desktop OS."
  type        = string

}
variable "command_line_argument_policy" {
  description = "(REQUIRED) Specifies whether this published application can be launched with command line arguments provided by the client, command line arguments specified at publish time, or no command line arguments at all. Possible values include: 'DoNotAllow', 'Allow', 'Require'."
  type        = string

}

# OPTIONAL VARIABLES

variable "friendly_name" {
  description = "Option to set a friendly name for the Virtual Desktop Application."
  type        = string
  default     = null
}
variable "description" {
  description = "Option to set a description for the Virtual Desktop Application."
  type        = string
  default     = null
}
variable "command_line_arguments" {
  description = "Command Line Arguments for Virtual Desktop Application."
  type        = string
  default     = null
}
variable "show_in_portal" {
  description = "Specifies whether to show the RemoteApp program in the RD Web Access server."
  type        = string
  default     = null
}
variable "icon_path" {
  description = "Specifies the path for an icon which will be used for this Virtual Desktop Application."
  type        = string
  default     = null
}
variable "icon_index" {
  description = "The index of the icon you wish to use."
  type        = string
  default     = null
}
