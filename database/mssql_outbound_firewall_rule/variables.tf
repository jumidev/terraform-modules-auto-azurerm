# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the outbound firewall rule. This should be a FQDN. Changing this forces a new resource to be created."
  type        = string

}
variable "server_id" {
  description = "(REQUIRED) The resource ID of the SQL Server on which to create the Outbound Firewall Rule. Changing this forces a new resource to be created."
  type        = string

}
