# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this PostgreSQL Flexible Server Firewall Rule. Changing this forces a new PostgreSQL Flexible Server Firewall Rule to be created."
  type        = string

}
variable "server_id" {
  description = "(REQUIRED) The ID of the PostgreSQL Flexible Server from which to create this PostgreSQL Flexible Server Firewall Rule. Changing this forces a new PostgreSQL Flexible Server Firewall Rule to be created."
  type        = string

}
variable "start_ip_address" {
  description = "(REQUIRED) The Start IP Address associated with this PostgreSQL Flexible Server Firewall Rule."
  type        = string

}
variable "end_ip_address" {
  description = "(REQUIRED) The End IP Address associated with this PostgreSQL Flexible Server Firewall Rule."
  type        = string

}
