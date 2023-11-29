# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the firewall rule. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the SQL Server. Changing this forces a new resource to be created."
  type        = string

}
variable "server_name" {
  description = "(REQUIRED) The name of the SQL Server on which to create the Firewall Rule. Changing this forces a new resource to be created."
  type        = string

}
variable "start_ip_address" {
  description = "(REQUIRED) The starting IP address to allow through the firewall for this rule."
  type        = string

}
variable "end_ip_address" {
  description = "(REQUIRED) The ending IP address to allow through the firewall for this rule."
  type        = string

}

# OPTIONAL VARIABLES

variable "sql_server_resource_group_name" {
  description = "Specifies the name of the Resource Group where the SQL Server exists..  If not specified, value of var.resource_group_name will be used..  If not specified, value of var.resource_group_name will be used."
  type        = string
  default     = null
}
