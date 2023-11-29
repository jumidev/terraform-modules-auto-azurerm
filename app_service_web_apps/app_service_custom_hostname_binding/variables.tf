# REQUIRED VARIABLES

variable "hostname" {
  description = "(REQUIRED) Specifies the Custom Hostname to use for the App Service, example 'www.example.com'. Changing this forces a new resource to be created."
  type        = string

}
variable "app_service_name" {
  description = "(REQUIRED) The name of the App Service in which to add the Custom Hostname Binding. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the App Service exists. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "ssl_state" {
  description = "The SSL type. Possible values are 'IpBasedEnabled' and 'SniEnabled'. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "thumbprint" {
  description = "The SSL certificate thumbprint. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "app_service_resource_group_name" {
  description = "The Name of the Resource Group where the App Service exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
