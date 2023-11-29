# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the EventGrid Domain Topic resource. Changing this forces a new resource to be created."
  type        = string

}
variable "domain_name" {
  description = "(REQUIRED) Specifies the name of the EventGrid Domain. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the EventGrid Domain exists. Changing this forces a new resource to be created."
  type        = string

}
