# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name (or path) of the Directory that should be created within this File Share. Changing this forces a new resource to be created."
  type        = string

}
variable "share_name" {
  description = "(REQUIRED) The name of the File Share where this Directory should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "storage_account_name" {
  description = "(REQUIRED) The name of the Storage Account within which the File Share is located. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "metadata" {
  description = "A mapping of metadata to assign to this Directory."
  type        = string
  default     = null
}
variable "storage_account_resource_group_name" {
  description = "Specifies the name of the resource group the Storage Account is located in..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
