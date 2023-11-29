# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the SQL Managed Instance. Changing this forces a new resource to be created."
  type        = string

}
variable "sql_managed_instance_id" {
  description = "(REQUIRED) The SQL Managed Instance ID that this Managed Database will be associated with. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
