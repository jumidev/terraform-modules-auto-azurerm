# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the firewall rule. Changing this forces a new resource to be created."
  type        = string

}
variable "server_id" {
  description = "(REQUIRED) The resource ID of the SQL Server on which to create the Firewall Rule. Changing this forces a new resource to be created."
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
