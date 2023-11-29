# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Disk Pool. Changing this forces a new Disk Pool to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Disk Pool should exist. Changing this forces a new Disk Pool to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure Region where the Disk Pool should exist. Changing this forces a new Disk Pool to be created."
  type        = string

}
variable "zones" {
  description = "(REQUIRED) Specifies a list of Availability Zones in which this Disk Pool should be located. Changing this forces a new Disk Pool to be created."
  type        = string

}
variable "sku_name" {
  description = "(REQUIRED) The SKU of the Disk Pool. Possible values are 'Basic_B1', 'Standard_S1' and 'Premium_P1'. Changing this forces a new Disk Pool to be created."
  type        = string

}
variable "subnet_id" {
  description = "(REQUIRED) The ID of the Subnet where the Disk Pool should be created. Changing this forces a new Disk Pool to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "tags" {
  description = "A mapping of tags which should be assigned to the Disk Pool."
  type        = map(any)
  default     = null
}
