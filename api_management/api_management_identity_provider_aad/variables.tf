# REQUIRED VARIABLES

variable "api_management_name" {
  description = "(REQUIRED) The Name of the API Management Service where this AAD Identity Provider should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created."
  type        = string

}
variable "client_id" {
  description = "(REQUIRED) Client Id of the Application in the AAD Identity Provider."
  type        = string

}
variable "client_secret" {
  description = "(REQUIRED) Client secret of the Application in the AAD Identity Provider."
  type        = string

}
variable "allowed_tenants" {
  description = "(REQUIRED) List of allowed AAD Tenants."
  type        = string

}

# OPTIONAL VARIABLES

variable "signin_tenant" {
  description = "The AAD Tenant to use instead of Common when logging into Active Directory"
  type        = string
  default     = null
}
variable "api_management_resource_group_name" {
  description = "The Name of the Resource Group in which the API Management Service exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
