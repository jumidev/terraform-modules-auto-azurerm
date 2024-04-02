# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the MariaDB Firewall Rule. Changing this forces a new resource to be created."
  type        = string

}
variable "server_name" {
  description = "(REQUIRED) Specifies the name of the MariaDB Server. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the MariaDB Server exists. Changing this forces a new resource to be created."
  type        = string

}
variable "start_ip_address" {
  description = "(REQUIRED) Specifies the Start IP Address associated with this Firewall Rule."
  type        = string

}
variable "end_ip_address" {
  description = "(REQUIRED) Specifies the End IP Address associated with this Firewall Rule. -> **NOTE:** The Azure feature 'Allow access to Azure services' can be enabled by setting 'start_ip_address' and 'end_ip_address' to '0.0.0.0' which ([is documented in the Azure API Docs](https://docs.microsoft.com/rest/api/sql/firewallrules/createorupdate))."
  type        = string

}
