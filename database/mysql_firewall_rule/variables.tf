# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the MySQL Firewall Rule. Changing this forces a new resource to be created."
  type        = string

}
variable "server_name" {
  description = "(REQUIRED) Specifies the name of the MySQL Server. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the MySQL Server exists. Changing this forces a new resource to be created."
  type        = string

}
variable "start_ip_address" {
  description = "(REQUIRED) Specifies the Start IP Address associated with this Firewall Rule."
  type        = string

}
variable "end_ip_address" {
  description = "(REQUIRED) Specifies the End IP Address associated with this Firewall Rule."
  type        = string

}

# OPTIONAL VARIABLES

variable "mysql_server_resource_group_name" {
  description = "The name of the resource group for the MySQL Server..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
