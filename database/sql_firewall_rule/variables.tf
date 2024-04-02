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
  description = "(REQUIRED) The ending IP address to allow through the firewall for this rule. -> **NOTE:** The Azure feature 'Allow access to Azure services' can be enabled by setting 'start_ip_address' and 'end_ip_address' to '0.0.0.0' which ([is documented in the Azure API Docs](https://docs.microsoft.com/rest/api/sql/firewallrules/createorupdate))."
  type        = string

}
