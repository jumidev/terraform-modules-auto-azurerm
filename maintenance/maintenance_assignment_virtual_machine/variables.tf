# REQUIRED VARIABLES

variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "maintenance_configuration_id" {
  description = "(REQUIRED) Specifies the ID of the Maintenance Configuration Resource. Changing this forces a new resource to be created."
  type        = string

}
variable "virtual_machine_id" {
  description = "(REQUIRED) Specifies the Virtual Machine ID to which the Maintenance Configuration will be assigned. Changing this forces a new resource to be created."
  type        = string

}
