# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the NetApp Pool. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group where the NetApp Pool should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "account_name" {
  description = "(REQUIRED) The name of the NetApp account in which the NetApp Pool should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "service_level" {
  description = "(REQUIRED) The service level of the file system. Valid values include 'Premium', 'Standard', or 'Ultra'. Changing this forces a new resource to be created."
  type        = string

}
variable "size_in_tb" {
  description = "(REQUIRED) Provisioned size of the pool in TB. Value must be between '2' and '500'."
  type        = string

}

# OPTIONAL VARIABLES

variable "qos_type" {
  description = "QoS Type of the pool. Valid values include 'Auto' or 'Manual'."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
