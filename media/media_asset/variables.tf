# REQUIRED VARIABLES

variable "media_services_account_name" {
  description = "(REQUIRED) Specifies the name of the Media Services Account. Changing this forces a new Media Asset to be created."
  type        = string

}
variable "name" {
  description = "(REQUIRED) The name which should be used for this Media Asset. Changing this forces a new Media Asset to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Media Asset should exist. Changing this forces a new Media Asset to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "alternate_id" {
  description = "The alternate ID of the Asset."
  type        = string
  default     = null
}
variable "container" {
  description = "The name of the asset blob container. Changing this forces a new Media Asset to be created."
  type        = string
  default     = null
}
variable "description" {
  description = "The Asset description."
  type        = string
  default     = null
}
variable "storage_account_name" {
  description = "The name of the storage account where to store the media asset. Changing this forces a new Media Asset to be created."
  type        = string
  default     = null
}
variable "storage_account_resource_group_name" {
  description = "Specifies the name of the resource group the Storage Account is located in..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
