# REQUIRED VARIABLES

variable "solution_name" {
  description = "(REQUIRED) Specifies the name of the solution to be deployed. See [here for options](https://docs.microsoft.com/azure/log-analytics/log-analytics-add-solutions).Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the Log Analytics solution is created. Changing this forces a new resource to be created. Note: The solution and its related workspace can only exist in the same resource group."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "workspace_resource_id" {
  description = "(REQUIRED) The full resource ID of the Log Analytics workspace with which the solution will be linked. Changing this forces a new resource to be created."
  type        = string

}
variable "workspace_name" {
  description = "(REQUIRED) The full name of the Log Analytics workspace with which the solution will be linked. Changing this forces a new resource to be created."
  type        = string

}
variable "plan" {
  description = "(REQUIRED) A 'plan' block."
  type        = map(any)
}
#
# plan block structure   :
#   publisher (string)     : (REQUIRED) The publisher of the solution. For example 'Microsoft'. Changing this forces a new resource to be created.
#   product (string)       : (REQUIRED) The product name of the solution. For example 'OMSGallery/Containers'. Changing this forces a new resource to be created.
#   promotion_code (string): A promotion code to be used with the solution. Changing this forces a new resource to be created.



# OPTIONAL VARIABLES

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
variable "log_analytics_workspace_resource_group_name" {
  description = "The name of the resource group in which the Log Analytics workspace is located in..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
