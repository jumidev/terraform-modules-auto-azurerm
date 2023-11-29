# REQUIRED VARIABLES

variable "app_service_id" {
  description = "(REQUIRED) The ID of the App Service or Function App to associate to the VNet. Changing this forces a new resource to be created."
  type        = string

}
variable "slot_name" {
  description = "(REQUIRED) The name of the App Service Slot or Function App Slot. Changing this forces a new resource to be created."
  type        = string

}
variable "subnet_id" {
  description = "(REQUIRED) The ID of the subnet the app service will be associated to (the subnet must have a 'service_delegation' configured for 'Microsoft.Web/serverFarms')."
  type        = string

}
