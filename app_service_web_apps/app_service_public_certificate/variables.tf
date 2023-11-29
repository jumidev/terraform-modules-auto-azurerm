# REQUIRED VARIABLES

variable "app_service_name" {
  description = "(REQUIRED) The name of the App Service. Changing this forces a new App Service Public Certificate to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the App Service Public Certificate should exist. Changing this forces a new App Service Public Certificate to be created."
  type        = string

}
variable "certificate_name" {
  description = "(REQUIRED) The name of the public certificate. Changing this forces a new App Service Public Certificate to be created."
  type        = string

}
variable "certificate_location" {
  description = "(REQUIRED) The location of the certificate. Possible values are 'CurrentUserMy', 'LocalMachineMy' and 'Unknown'. Changing this forces a new App Service Public Certificate to be created."
  type        = string

}
variable "blob" {
  description = "(REQUIRED) The base64-encoded contents of the certificate. Changing this forces a new App Service Public Certificate to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "app_service_resource_group_name" {
  description = "The Name of the Resource Group where the App Service exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
