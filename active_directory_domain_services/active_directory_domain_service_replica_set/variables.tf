# REQUIRED VARIABLES

variable "domain_service_id" {
  description = "(REQUIRED) The ID of the Domain Service for which to create this Replica Set. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The Azure location where this Replica Set should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "subnet_id" {
  description = "(REQUIRED) The ID of the subnet in which to place this Replica Set. Changing this forces a new resource to be created."
  type        = string

}
