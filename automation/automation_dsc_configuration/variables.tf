# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the DSC Configuration. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the DSC Configuration is created. Changing this forces a new resource to be created."
  type        = string

}
variable "automation_account_name" {
  description = "(REQUIRED) The name of the automation account in which the DSC Configuration is created. Changing this forces a new resource to be created."
  type        = string

}
variable "content_embedded" {
  description = "(REQUIRED) The PowerShell DSC Configuration script."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Must be the same location as the Automation Account. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "log_verbose" {
  description = "Verbose log option."
  type        = string
  default     = null
}
variable "description" {
  description = "Description to go with DSC Configuration."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
variable "automation_account_resource_group_name" {
  description = "Specifies the name of the Resource Group where the Automation Account exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
