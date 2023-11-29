# REQUIRED VARIABLES

variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the App Service exists. Changing this forces a new resource to be created."
  type        = string

}
variable "app_service_name" {
  description = "(REQUIRED) The name of the App Service within which the Slot exists. Changing this forces a new resource to be created."
  type        = string

}
variable "app_service_slot_name" {
  description = "(REQUIRED) The name of the App Service Slot which should be promoted to the Production Slot within the App Service."
  type        = string

}

# OPTIONAL VARIABLES

variable "app_service_resource_group_name" {
  description = "The Name of the Resource Group where the App Service exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
