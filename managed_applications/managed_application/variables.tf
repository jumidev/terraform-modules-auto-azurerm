# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Managed Application. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Managed Application should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "kind" {
  description = "(REQUIRED) The kind of the managed application to deploy. Possible values are 'MarketPlace' and 'ServiceCatalog'. Changing this forces a new resource to be created."
  type        = string

}
variable "managed_resource_group_name" {
  description = "(REQUIRED) The name of the target resource group where all the resources deployed by the managed application will reside. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "application_definition_id" {
  description = "The application definition ID to deploy."
  type        = string
  default     = null
}
variable "parameters" {
  description = "A mapping of name and value pairs to pass to the managed application as parameters."
  type        = string
  default     = null
}
variable "parameter_values" {
  description = "The parameter values to pass to the Managed Application. This field is a JSON object that allows you to assign parameters to this Managed Application."
  type        = string
  default     = null
}
variable "plan" {
  description = "One 'plan' block. Changing this forces a new resource to be created."
  type        = map(any)
  default     = null
}
#
# plan block structure   :
#   name (string)          : (REQUIRED) Specifies the name of the plan from the marketplace. Changing this forces a new resource to be created.
#   product (string)       : (REQUIRED) Specifies the product of the plan from the marketplace. Changing this forces a new resource to be created.
#   publisher (string)     : (REQUIRED) Specifies the publisher of the plan. Changing this forces a new resource to be created.
#   version (string)       : (REQUIRED) Specifies the version of the plan from the marketplace. Changing this forces a new resource to be created.
#   promotion_code (string): Specifies the promotion code to use with the plan. Changing this forces a new resource to be created.


variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
