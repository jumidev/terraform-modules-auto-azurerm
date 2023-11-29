# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Automation Variable. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Automation Variable. Changing this forces a new resource to be created."
  type        = string

}
variable "automation_account_name" {
  description = "(REQUIRED) The name of the automation account in which the Variable is created. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "description" {
  description = "The description of the Automation Variable."
  type        = string
  default     = null
}
variable "encrypted" {
  description = "Specifies if the Automation Variable is encrypted. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "value" {
  description = "The value of the Automation Variable in the [RFC3339 Section 5.6 Internet Date/Time Format](https://tools.ietf.org/html/rfc3339#section-5.6)."
  type        = string
  default     = null
}
variable "automation_account_resource_group_name" {
  description = "Specifies the name of the Resource Group where the Automation Account exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
