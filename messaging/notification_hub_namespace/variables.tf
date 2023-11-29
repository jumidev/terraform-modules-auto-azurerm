# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name to use for this Notification Hub Namespace. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group in which the Notification Hub Namespace should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region in which this Notification Hub Namespace should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "namespace_type" {
  description = "(REQUIRED) The Type of Namespace - possible values are 'Messaging' or 'NotificationHub'."
  type        = string

}
variable "sku_name" {
  description = "(REQUIRED) The name of the SKU to use for this Notification Hub Namespace. Possible values are 'Free', 'Basic' or 'Standard'."
  type        = string

}

# OPTIONAL VARIABLES

variable "enabled" {
  description = "Is this Notification Hub Namespace enabled? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
