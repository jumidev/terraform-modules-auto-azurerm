# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name for this Container App Environment Storage. Changing this forces a new resource to be created."
  type        = string

}
variable "container_app_environment_id" {
  description = "(REQUIRED) The ID of the Container App Environment to which this storage belongs. Changing this forces a new resource to be created."
  type        = string

}
variable "account_name" {
  description = "(REQUIRED) The Azure Storage Account in which the Share to be used is located. Changing this forces a new resource to be created."
  type        = string

}
variable "access_key" {
  description = "(REQUIRED) The Storage Account Access Key."
  type        = string

}
variable "share_name" {
  description = "(REQUIRED) The name of the Azure Storage Share to use. Changing this forces a new resource to be created."
  type        = string

}
variable "access_mode" {
  description = "(REQUIRED) The access mode to connect this storage to the Container App. Possible values include 'ReadOnly' and 'ReadWrite'. Changing this forces a new resource to be created."
  type        = string

}
