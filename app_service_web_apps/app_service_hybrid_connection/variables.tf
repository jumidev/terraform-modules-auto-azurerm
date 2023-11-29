# REQUIRED VARIABLES

variable "app_service_name" {
  description = "(REQUIRED) Specifies the name of the App Service. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the App Service. Changing this forces a new resource to be created."
  type        = string

}
variable "relay_id" {
  description = "(REQUIRED) The ID of the Service Bus Relay. Changing this forces a new resource to be created."
  type        = string

}
variable "hostname" {
  description = "(REQUIRED) The hostname of the endpoint."
  type        = string

}
variable "port" {
  description = "(REQUIRED) The port of the endpoint."
  type        = string

}

# OPTIONAL VARIABLES

variable "send_key_name" {
  description = "The name of the Service Bus key which has Send permissions. Defaults to 'RootManageSharedAccessKey'."
  type        = string
  default     = "RootManageSharedAccessKey"
}
variable "app_service_resource_group_name" {
  description = "The Name of the Resource Group where the App Service exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
