# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Managed Application Definition. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Managed Application Definition should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "lock_level" {
  description = "(REQUIRED) Specifies the managed application lock level. Valid values include 'CanNotDelete', 'None', 'ReadOnly'. Changing this forces a new resource to be created."
  type        = string

}
variable "display_name" {
  description = "(REQUIRED) Specifies the managed application definition display name."
  type        = string

}

# OPTIONAL VARIABLES

variable "authorization" {
  description = "One or more 'authorization' block defined below."
  type        = list(any)
  default     = []
}
variable "create_ui_definition" {
  description = "Specifies the 'createUiDefinition' JSON for the backing template with 'Microsoft.Solutions/applications' resource."
  type        = string
  default     = null
}
variable "description" {
  description = "Specifies the managed application definition description."
  type        = string
  default     = null
}
variable "package_enabled" {
  description = "Is the package enabled? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "main_template" {
  description = "Specifies the inline main template JSON which has resources to be provisioned."
  type        = string
  default     = null
}
variable "package_file_uri" {
  description = "Specifies the managed application definition package file Uri."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
