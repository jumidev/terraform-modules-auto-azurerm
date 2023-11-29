# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the application. This must be unique within the account. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group that contains the Batch account. Changing this forces a new resource to be created."
  type        = string

}
variable "account_name" {
  description = "(REQUIRED) The name of the Batch account. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "allow_updates" {
  description = "A value indicating whether packages within the application may be overwritten using the same version string. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "default_version" {
  description = "The package to use if a client requests the application but does not specify a version. This property can only be set to the name of an existing package."
  type        = string
  default     = null
}
variable "display_name" {
  description = "The display name for the application."
  type        = string
  default     = null
}
