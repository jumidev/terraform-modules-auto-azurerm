# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the NetApp Snapshot. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group where the NetApp Snapshot should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "account_name" {
  description = "(REQUIRED) The name of the NetApp account in which the NetApp Pool should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "pool_name" {
  description = "(REQUIRED) The name of the NetApp pool in which the NetApp Volume should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "volume_name" {
  description = "(REQUIRED) The name of the NetApp volume in which the NetApp Snapshot should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
