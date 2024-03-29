# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Microsoft SQL Server. This needs to be globally unique within Azure. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Microsoft SQL Server. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}
variable "version" {
  description = "(REQUIRED) The version for the new server. Valid values are: 2.0 (for v11 server) and 12.0 (for v12 server). Changing this forces a new resource to be created."
  type        = string

}
variable "administrator_login" {
  description = "(REQUIRED) The administrator login name for the new server. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "connection_policy" {
  description = "The connection policy the server will use. Possible values are 'Default', 'Proxy', and 'Redirect'. Defaults to 'Default'."
  type        = string
  default     = "Default"
}
variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this SQL Server. The only possible value is 'SystemAssigned'. ~> **NOTE:** The assigned 'principal_id' and 'tenant_id' can be retrieved after the identity 'type' has been set to 'SystemAssigned' and the Microsoft SQL Server has been created. More details are available below.


